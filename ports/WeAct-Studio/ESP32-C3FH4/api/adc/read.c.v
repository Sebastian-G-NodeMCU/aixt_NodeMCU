// Project Name: Aixt project, https://gitlab.com/fermarsan/aixt-project.git
// File Name: builtin.c.v
// Author: Farith Ochoa León, Felipe Cardozo Hernandez and Fernando Martínez Santa
// Date: 2024
// License: MIT

module adc

#define adc__read(PIN_NAME)     analogRead(PIN_NAME)