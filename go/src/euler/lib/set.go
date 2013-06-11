package lib

func Gcd(a, b uint64) uint64 {
        for b != 0 {
                a, b = b, a%b
        }
        return a
}

func Lcm(a, b uint64) uint64 {
	return a * b / Gcd(a,b)
}
