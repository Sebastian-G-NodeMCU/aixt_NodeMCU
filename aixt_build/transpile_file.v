// Project Name: Aixt project, https://github.com/fermarsan/aixt.git
// File Name: transpile_file.v
// Author: Fernando Martínez Santa
// Date: 2023-2024
// License: MIT
//
// Description: Function for transpiling an Aixt source code.

module aixt_build

import os
import toml
import v.ast
import v.pref
import aixt_cgen

pub fn transpile_file(path string, setup_file toml.Doc, aixt_path string) {
	mut c_gen := aixt_cgen.Gen{
		file: &ast.File{}
		table: ast.new_table()
		transpiler_path: aixt_path
		out: ''
		includes: ''
		definitions: ''
		current_fn: 'global'
		main_loop_cmds:	''
		level_cont: 0
		pref: &pref.Preferences{}
		setup: toml.Doc{}
	}

	c_gen.pref.is_script = true
	c_gen.pref.enable_globals = true
	c_gen.setup = setup_file

	mut transpiled := c_gen.gen(path) // transpile Aixt (V) to C

	for alias in c_gen.setup.value('aliases').as_map().keys() { // replace aliases in the transpiled code
		transpiled = transpiled.replace(
			alias,
			(c_gen.setup.value('aliases').as_map()[alias] or {''}).string()
		)
	}

	// saves the output file
	output_ext := match c_gen.setup.value('backend').string() {
		'nxc' 		{ '.nxc' }
		'arduino'	{ '.ino' } 
		else 		{ '.c' }
	}
	mut output_path := path.replace('.aixt', output_ext)
	output_path = output_path.replace('.v', output_ext)
	// println('\n${output_path}\n')
	os.write_file(output_path, transpiled) or {}
}