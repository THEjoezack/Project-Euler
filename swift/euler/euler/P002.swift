class P002 {
    let max = 4000000
    
    func run() -> String {
        let result = fib(1, b:2, sum:0) // why is this required???
        return String(result)
    }
    
    func fib(a:Int, b:Int, sum:Int) -> Int {
        if (sum >= max) {
            return sum
        }
        let next = a + b;
        let nextSum = b % 2 == 0 ? sum + b : sum;
        return fib(b, b:next, sum:nextSum);
    }

}