// This Arduino code was automatically generated by Aixt Project
// Device = RP2040
// Board = Raspberry Pi Pico
// Backend = arduino

#define led     gp25
#define pwm__write(PIN, VAL)	analogWrite(PIN, VAL)
#define pin__output		OUTPUT
#define pin__input		INPUT
#define pin__in_pullup	INPUT_PULLUP
#define pin__high(PIN_NAME)   digitalWrite(PIN_NAME, HIGH)
#define pin__low(PIN_NAME)   digitalWrite(PIN_NAME, LOW)
#define pin__read(PIN_NAME)   digitalRead(PIN_NAME)
#define pin__setup(PIN_NAME, MODE)    pinMode(PIN_NAME, MODE)
#define pin__write(PIN_NAME, VALUE)   digitalWrite(PIN_NAME, VALUE)
#define adc__read(PIN_NAME)   analogRead(PIN_NAME)

void main__init();

void pwm__init();

void pin__init();

void adc__init();

int32_t val = 0;

enum main____pin_names {
	gp0,
	gp1,
	gp2,
	gp3,
	gp4,
	gp5,
	gp6,
	gp7,
	gp8,
	gp9,
	gp10,
	gp11,
	gp12,
	gp13,
	gp14,
	gp15,
	gp16,
	gp17,
	gp18,
	gp19,
	gp20,
	gp21,
	gp22,
	gp23,
	gp24,
	gp25,
	gp26,
	gp27,
	gp28,
	gp29,
};

void main__init() {
	pwm__init();
	pin__init();
	adc__init();
	
}

void pwm__init() {
}

void pin__init() {
}

void adc__init() {
}

void setup() {
	main__init();
	pin__setup(gp10, pin__output);
}

void loop() {
	val = adc__read(gp28);
	pwm__write(gp10, val);
}