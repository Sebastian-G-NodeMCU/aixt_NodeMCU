// Project Name: Aixt project https://gitlab.com/fermarsan/aixt-project.git
// File Name: write.c.v
// Author: Fernando Martínez Santa - Sebastian Gongora  - Brayan Gaitan
// Date: 2024
// License: MIT
//
// // Description: WRITE functions (ESP8266-NodeMCU-v3)

module pwm

#define pwm__write(PIN_NAME, MODE)   analogWrite(PIN_NAME, MODE)