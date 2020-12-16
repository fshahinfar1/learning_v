fn main() {
	disks := 3
	solve(disks, 0, 2, 1)
}

fn solve(disks int, from int, to int, other int) {
	if disks == 1 {
		println('$from -> $to')
		return
	}
	solve(disks - 1, from, other, to)
	println('$from -> $to')
	solve(disks -1, other, to, from)
}
