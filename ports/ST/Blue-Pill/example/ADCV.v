import pin
import adc

pin.setup(p5, pin__input)
pin.setup(p10, pin__output)
pin.setup(p11, pin__output)

for {
	if 400 <= adc__read(p5) {
		pin__high(p10)
		pin__low(p11)
	} else {
		pin__high(p11)
		pin__low(p10)
	}
}
