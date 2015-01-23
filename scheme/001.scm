(define (problem sum i count)
  (define (divides divisor) (= 0 (modulo i divisor)))
  (define (divisible) (or (divides 5) (divides 3)))
  (if (= 0 count)
    sum
    (problem
      (if (divisible) (+ i sum) sum)
      (+ i 1)
      (- count 1))))

(problem 0 1 999)