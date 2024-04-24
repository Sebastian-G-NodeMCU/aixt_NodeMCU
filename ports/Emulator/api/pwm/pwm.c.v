// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando Martínez Santa
// Date: 2023-2024
// License: MIT
//
// Description: This is a module to emulate a PWM output in console.
module pwm

#include <stdio.h>
#include <stdlib.h>

// PWM_names is the enumerated type for the PWM names
#define		pwm__out_0		0
#define		pwm__out_1		1

__global (
    duty__ = [0, 0]
)

pub fn C.print(duty int)

pub fn C.update()

fn init() {
    pwm.update()
}