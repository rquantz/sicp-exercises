(define (larger-sum-square x y z)
	(define (sum-square a b)
		(+ (* a a) (* b b)))
    (define sorted-args
        (sort (list x y z) (lambda (a b) (> a b))))
    (sum-square (list-ref sorted-args 0)
                (list-ref sorted-args 1)))

