import time 
import pin

pin.setup(d1 pin.input)
pin.setup(d2 pin.output)

for {
if pin.read(d1) == 0 {
	pin.high(d2)
	time.sleep(1)
	pin.low(d2)
	time.sleep(1)
}
} 