// Project Name: Aixt project, https://github.com/fermarsan/aixt.git
// Author: Cesar Alejandro Roa Acosta and Fernando Martínez Santa
// Date: 2024
// License: MIT
//
// Description: Pin management functions
//              (PIC16F676 port)
module pin

#define pin__setup(PIN_NAME, PIN_MODE)   PIN_NAME ## _s = PIN_MODE