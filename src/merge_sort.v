fn main() {
	mut arr := [3, 10, 8, 9, 0, 2, 4, 5, 1, 1, 7]
	println("Before sorting:")
	println(arr)

	merge_sort(mut arr, 0, arr.len)
	println("After sorting:")
	println(arr)
}

fn merge_sort(mut arr []int, from int, to int) {
	// Already in sorted order
	count := to - from
	if count == 0 || count == 1 {
		return
	}

	if count == 2 {
		left := from
		right := from + 1
		if arr[left] > arr[right] {
			tmp := arr[right]
			arr[right] = arr[left]
			arr[left] = tmp
		}
		return
	}

	mid := (from + to) / 2
	merge_sort(mut arr, from, mid)
	merge_sort(mut arr, mid, to)
	merge_fn(mut arr, from, mid, to)
}

fn merge_fn(mut arr []int, from int, mid int, to int) {
	sentinel := 2147483647 // Max int32

	size := to - from
	mut left := arr[(from)..(mid)].clone()
	left << sentinel

	mut right := arr[(mid)..(to)].clone()
	right << sentinel



	mut l := 0
	mut r := 0
	mut count := 0

	for count < size {
		if left[l] <= right[r] {
			arr[from + count] = left[l]
			l++
		} else {
			arr[from + count] = right[r]
			r++
		}
		count++
	}
}
