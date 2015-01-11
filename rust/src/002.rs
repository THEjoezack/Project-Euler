fn main() {
    let mut sum = 0;
    let mut last = 1;
    let mut fib = 1;

    while fib < 4000000 {
        if fib % 2 == 0 {
            sum = sum + fib;
        }
        let temp = fib;
        fib = fib + last;
        last = temp;
    }

    println!("{}", sum);
}