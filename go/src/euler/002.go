//By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

package main

import "fmt"

func main() {
	fib, last, sum := 1, 1, 0

	for fib < 4000000 {
		fib, last = fib+last, fib
		if fib%2 == 0 {
			sum += fib
		}
	}
	fmt.Println(sum)
}
