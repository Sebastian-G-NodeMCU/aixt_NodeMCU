import time {sleep_ms}
import pin

pin.setup(D4 pin.out)

for {
	pin.high(D4)
	sleep_ms(250)
	pin.low(D4)
	sleep_ms(250)
}