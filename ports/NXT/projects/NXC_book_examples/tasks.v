import motor
import sensor

@[mutex]
__global move_mutex = 0		// initialization value is necesary but will be ingnored

@[task]
fn move_square() {
	for {
		acquire(move_mutex)
		motor.forward(ac, 75)
		sleep_ms(1000)
		motor.reverse(c, 75)
		sleep_ms(500)
		release(move_mutex)
	}
}

@[task]
fn check_sensors() {
	for {
		if sensor.read(i1) == 1 {
			acquire(move_mutex)
			motor.reverse(ac, 75)
			sleep_ms(500)
			motor.forward(a, 75)
			sleep_ms(500)
			release(move_mutex)
		}
	}
}


precedes(move_square, check_sensors)
sensor.set_touch(i1)
