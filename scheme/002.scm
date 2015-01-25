;;; Even Fibonacci numbers

(define (even-fib max)
  (define (fib a b sum)
    (if (>= b max)
      sum
      (fib b (+ a b) (if (= 0 (modulo b 2)) (+ sum b) sum))))
  (fib 1 2 0))

(even-fib 4000000)