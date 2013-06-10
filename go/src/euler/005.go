// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10
// without any remainder.

// What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
package main

import "fmt"

func main() {
	primes := []int{19,17,13,11,7,5,3,2} // primes < 20
	current := 2520 // has to be > the given for 10
	for {
		found := true
		for i := 0; i < len(primes); i++ {
			if current % primes[i] == 0 {
				continue
			}
			found = false	
			break
		}
		if found {
			break	
		}
		current += 1
	}
	fmt.Println(current)
}
