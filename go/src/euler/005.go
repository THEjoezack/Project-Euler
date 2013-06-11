// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10
// without any remainder.

// What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
package main

import (
	"fmt"
	"euler/lib"
)

func main() {
	var n,i uint64 = 2520,11
	for i = 11; i <= 20; i++ {
		n = lib.Lcm(n,i)
	}
	fmt.Println(n)
}
