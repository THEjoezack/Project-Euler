class P001 {
    func run() -> String {
        let filtered = filter(1...999, { $0 % 3 == 0 || $0 % 5 == 0 })
        let sum = filtered.reduce(0, +) // chaining these together results in a compile error?

        return String(sum);
    }
}