module utils

import os

pub struct Rune {}

pub fn Rune.to_int(r rune) ?int {
	digit := r.str().int()

	if digit == 0 {
		return none
	}

	return digit
}

pub fn get_actual_input(file_path string) string {
	mut path := file_path.split('/')
	path.pop()
	path << 'input'

	return os.read_file(path.join('/')) or { panic(err) }
}

pub fn get_example_input(file_path string, part int) string {
	file_name := if part == 1 { 'example_input' } else { 'example_input_2' }
	mut path := file_path.split('/')
	path.pop()
	path << file_name

	return os.read_file(path.join('/')) or { panic(err) }
}
