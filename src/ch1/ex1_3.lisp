(defun square (x)
  (* x x))

(defun sum-of-squares (x y)
  (+ (square x) (square y)))

(defun sum-of-2-largest-squares (a b c)
  (setf min-val (min a b c))
  (cond ((= min-val a) (sum-of-squares b c))
        ((= min-val b) (sum-of-squares a c))
        ((= min-val c) (sum-of-squares a b))))

(sum-of-2-largest-squares 10 4 9) ; 181
(sum-of-2-largest-squares 1 4 9)  ; 97
(sum-of-2-largest-squares 1 4 7)  ; 65
