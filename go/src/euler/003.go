package main

import (
	"euler/lib"
	"fmt"
	"math"
)

func main() {
	const target = 600851475143
	max := int(math.Sqrt(float64(target))) + 1
	p := lib.NewPrimeGenerator()
	for i := max; i > 0; i-- {
		if target%i == 0 && p.IsPrime(i) {
			fmt.Println(i)
			break
		}
	}
}
