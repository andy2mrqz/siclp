; basic arithmetic

10 ; 10

(+ 5 3 4) ; 12

(- 9 1) ; 8

(/ 6 2) ; 3

(+ (* 2 4) (- 4 6)) ; 6

; setting variables

(setf a 3) ; 3

(setf b (+ a 1)) ; 4

(= a b) ; NIL

; conditionals

(if (and (> b a) (< b (* a b)))
    b
    a) ; 4

(cond ((= a 4) 6)
      ((= b 5) (+ 6 7 a))
      (t 25)) ; 16

(+ 2 (if (> b a) b a)) ; 6

(* (cond ((> a b) a)
         ((< a b) b)
         (t -1))
   (+ a 1)) ; 16
