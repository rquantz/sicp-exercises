(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
(define (average a b) (/ (+ a b) 2))
(define (sqrt x)
    (define (good-enough? guess x)
        (< (abs (- (square guess) x)) 0.001))
    (define (improve guess x)
        (average guess (/ x guess)))
    (define (sqrt-iter guess x)
        (new-if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))
    (sqrt-iter 1.0 x))

(newline)
(write-line "Because Scheme uses 'applicative order' to evaluate arguments,")
(write-line "new-if will always evaluate both clauses, including the recursive")
(write-line "function call.")
(write-line "This leads to a 'maximum recursion depth exceeded' error.")
(write-line (sqrt 9))
