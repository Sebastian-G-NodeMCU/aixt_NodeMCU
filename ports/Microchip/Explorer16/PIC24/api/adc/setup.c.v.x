// Project Name: Aixt, https://github.com/fermarsan/aixt.git
// Author: Fernando Martínez Santa & Santiago Orjuela R.
// Date: 2022-2024
// License: MIT
//
// Description: ADC functions (Explorer16-PIC24 port)
module adc

// #define adc__setup() AD1PCFG = 0xffdf; AD1CON1 = 0x00E0;  AD1CSSL = 0; AD1CON2 = 0; AD1CON3 = 0x1F02; AD1CON1bits.ADON = 1


fn C.setup() 
