(define (problem sum i max)
  (define (divides divisor) (= 0 (modulo i divisor)))
  (define (get-sum) (if (or (divides 5) (divides 3)) (+ i sum) sum))
  (if (= i max) sum (problem (get-sum) (+ i 1) max)))

(problem 0 1 1000)