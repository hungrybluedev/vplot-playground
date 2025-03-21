module main

import vplot
import os
import math

fn sig() ([]f64, []f64) {
	mut x := []f64{}
	mut s := []f64{}

	for i in 1 .. 1000 {
		x << f64(i)
		s << f64(math.log(i))
	}
	return x, s
}

fn main() {
	_, y := sig()

	mut p1 := vplot.new()

	p1.plot2([]f64{}, y, 'Test Y only') or { println('ERROR: ${err.msg()}') }
	os.input('Press any key to continue')

	p1.close()
}
