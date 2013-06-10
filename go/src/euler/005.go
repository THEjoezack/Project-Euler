// 2520 is the smallest number that can be
// divided by each of the numbers from 1 to 10
// without any remainder.

// What is the smallest number that is evenly
// divisible by all of the numbers from 1 to 20?

import (
	"euler/lib"
	"fmt"
	"math"
)

func main (
	p := lib.NewPrimeGenerator()
	p.IsPrime?(20) // cheap way of getting the prime factors
	current := 2520
	for {
		for i,v in p.Primes.Reverse {
			if current % v != 0 {
				continue
			}
			return
		}
		current += 1
	}
)

fmt.Println(current)