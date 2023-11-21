// Project Name: Aixt project, https://gitlab.com/fermarsan/aixt-project.git
// File Name: builtin.c
// Author: Fernando Martínez Santa
// Date: 2022-2023
// License: MIT
//
// Description: Builtin definitions (Explorer16-PIC24 port)
#define led3    ra0  // Onboard LEDs            
#define led4    ra1        
#define led5    ra2        
#define led6    ra3       
#define led7    ra4       
#define led8    ra5        
#define led9    ra6        
#define led10   ra7    

#define sw3     rd6  // Onboard switchs  
#define sw4     rd13  
#define sw5     ra7  
#define sw6     rd7  

#define pot     rb5  // Onboard potentiometer

enum __pin_names {
    ra0,  ra1,  ra2,  ra3,  ra4,  ra5,  ra6,  ra7, _ra8,  ra9,  ra10, _ra11, _ra12, _ra13,  ra14,  ra15, //port A  
    rb0,  rb1,  rb2,  rb3,  rb4,  rb5,  rb6,  rb7,  rb8,  rb9,  rb10,  rb11,  rb12,  rb13,  rb14,  rb15, //port B
    rc0,  rc1,  rc2,  rc3,  rc4, _rc5, _rc6, _rc7, _rc8, _rc9, _rc10, _rc11,  rc12,  rc13,  rc14,  rc15, //port C
    rd0,  rd1,  rd2,  rd3,  rd4,  rd5,  rd6,  rd7,  rd8,  rd9,  rd10,  rd11,  rd12,  rd13,  rd14,  rd15, //port D
    re0,  re1,  re2,  re3,  re4,  re5,  re6,  re7,  re8,  re9, _re10, _re11, _re12, _re13, _re14, _re15, //port E
    rf0,  rf1,  rf2,  rf3,  rf4,  rf5,  rf6,  rf7,  rf8, _rf9, _rf10, _rf11,  rf12,  rf13, _rf14, _rf15, //port F
    rg0,  rg1,  rg2,  rg3,  rg4,  rg5,  rg6,  rg7,  rg8,  rg9, _rg10, _rg11,  rg12,  rg13,  rg14,  rg15  //port G
};  