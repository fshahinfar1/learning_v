fn main() {
    println(add(10, 20))
    println(sub(10, 20))

    // Multiple return
    a, b := multiple_return()
    println(a)
    println(b)


    // Testing _ character
    c, _ := multiple_return()
    println(c)
    // println(_)
    // _ character is for ignorinig value
    // it will not work when trying to get the value

    // Writing a function which can take variable number
    // of arguments
    println(sum())
    println(sum(1,2,3))
    println(sum(2,4,8,10,12))
}

fn add(x int, y int) int {
    return x + y
}

fn sub(x int, y int) int {
    return x - y
}

fn multiple_return() (int, int) {
    return 2, 3
}

fn sum(a ...int) int {
	// by default variables in v are mutable!
	// to be able to change the value of a variable it
	// should be define with `mut`.
    mut sum := 0
    for x in a {
        sum += x
    }
    return sum
}
