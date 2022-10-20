(defun a-plus-abs-b (a b)
  (funcall (if (> b 0) '+ '-) a b))

(a-plus-abs-b 7 -7) ; 14
(a-plus-abs-b 3 -100) ; 103

; What is happening in the function a-plus-abs-b?
; funcall indicates that it will call the next function with the next arguments
; The if statement says that if b is greater than 0, we will use addition; else subtraction
; We then pass the arguments a and b
;
; So the effect is that b will be handled as if we are taking the absolute value,
; by using an if statement to determine which operator to use
