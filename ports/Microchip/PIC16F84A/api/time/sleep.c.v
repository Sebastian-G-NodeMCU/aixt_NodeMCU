// Project Name: Aixt project, https://github.com/fermarsan/aixt.git
// Author: Luis Alfredo Pinto Medina and Fernando Martínez Santa
// Date: 2024
// License: MIT
//
// Description: seconds delay function
//              (PIC16F84A port)
module time

#define time__sleep(TIME)    __delay_ms(TIME*1024)  // implementing by a macro for saving memory