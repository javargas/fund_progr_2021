#lang racket

(define (es-primo-recursivo? x index)
  (cond [(= x 1) false ]
        [(= index 1) true]
        [(= (modulo x index) 0) false]
        [else (es-primo-recursivo? x (- index 1))])
)

(define (es-primo? x)
  (es-primo-recursivo? x (- x 1)))

(define (sumar-primos lista)
  (if (empty? lista)
      0
      (if (es-primo? (first lista))
          (+ (first lista) (sumar-primos (rest lista)))
          (sumar-primos (rest lista)))))