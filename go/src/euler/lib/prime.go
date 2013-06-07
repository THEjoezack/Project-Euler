package lib

import "math"

// Prime number generator intended for generating / looking up lots of primes.
// Uses memoization to skip repeated calculations for speed at the cost of memory.

type primeGenerator struct {
	Primes []int
}

func NewPrimeGenerator() *primeGenerator {
	return &primeGenerator{Primes: []int{1, 2, 3}}
}

func (p *primeGenerator) fillTo(max int) {
	n := p.Primes[len(p.Primes)-1]
	for {
		n += 2
		if n > max {
			return
		}
		if p.IsPrime(n) {
			p.Primes = append(p.Primes, n)
		}
	}
}

func (p *primeGenerator) IsPrime(n int) bool {
	if n <= 1 {
		return true
	}

	max := int(math.Sqrt(float64(n)))

	if max > p.Primes[len(p.Primes)-2] {
		p.fillTo(max + 1)
	}

	for _, i := range p.Primes {
		if i == 1 {
			continue
		}

		if i > max {
			return true
		}

		if n%i == 0 {
			return false
		}
	}
	return true
}
