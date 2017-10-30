#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Number Guessing
;;;;;;;;;;;;;;;;;;;;;;;;;;

#|--------------------
Set up
--------------------|#

(define check-input
  (lambda (input)
    (cond ((eq? input my_num)
           (display "Yeah! That was it!")
           (newline))
          ((> input my_num)
           (display "Lower...")
           (newline)
           (get-input))
          ((< input my_num)
           (display "Higher...")
           (newline)
           (get-input)))))
          
(define get-input
  (lambda ()
    (display "Guess: ")
    (check-input (read))))


#|-----------------------
Run when program launched
------------------------|#

(display "Welcome! Can you guess my number?")
(define my_num (random 100))
(display my_num)
(newline)
(get-input)