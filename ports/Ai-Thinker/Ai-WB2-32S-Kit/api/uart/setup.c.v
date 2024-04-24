// Project Name: Aixt project https://gitlab.com/fermarsan/aixt-project.git
// File Name: setup.c.v
// Author: Fernando Martínez Santa - Stiven Cortázar Cortázar - Yesid Reyes Tique
// Date: 2022-2024
// License: MIT
//
// // Description: uart__setup functions (Ai_Thinker_Ai-WB2-32S-Kit)

module uart

#define uart__setup(BAUD_RATE)					Serial.begin(BAUD_RATE)

//#define uart__setup_1(BAUD_RATE)					//Serial1.begin(BAUD_RATE)

//#define uart__setup_x(UART_NUMBER, BAUD_RATE)		uart__setup_ ## UART_NUMBER (BAUD_RATE) 			

// macro with 1 or 2 arguments
//#define SEL_UART_SETUP(_1, _2, MACRO_NAME, ...) MACRO_NAME
//#define uart__setup(...) SEL_UART_SETUP(__VA_ARGS__, uart__setup_x, uart__setup_0)(__VA_ARGS__)