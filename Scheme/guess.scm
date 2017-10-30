#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Number Guessing
;; Dustin Michels
;; 30 Oct 2017
;;;;;;;;;;;;;;;;;;;;;;;;;;

#|-----------
Key functions
-----------|#

;; Check user input against my_num
;; If not equal, call `get-input`
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

;; Get user input and pass it to `check-input`
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
