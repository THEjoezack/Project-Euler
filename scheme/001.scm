(define (problem sum i count)
  (define (divides divisor) (= 0 (modulo i divisor)))
  (cond
    ((= 0 count) sum)
    ((or (divides 5) (divides 3)) (problem (+ sum i) (+ i 1) (- count 1)))
    (else (problem sum (+ i 1) (- count 1)))))

(problem 0 1 999)
