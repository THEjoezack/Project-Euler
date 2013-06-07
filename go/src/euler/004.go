package main

import (
	"euler/lib"
	"fmt"
)

const max, min = 999, 100

func main() {
	highest := 0
	for i := max; i >= min; i-- {
		for j := max; j >= min; j-- {
			sum := i * j
			if sum < highest {
				break
			}
			if lib.IsPalindrome(sum) {
				highest = sum
				break
			}
		}
	}

	fmt.Println(highest)
}
