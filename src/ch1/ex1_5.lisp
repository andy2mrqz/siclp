(defun p ()
  (p))

(defun test (x y)
  (if (= x 0)
      x
      y))

;; Describe what would happen with an interpreter that is:
;;  * applicative
;;  * normal order
;;
;; (test 0 (p))

; With an applicative interpreter (common to most programming languages),
; each expression would be expanded until there are no more sub-expressions.
; In this case, it would expand as follows:
;   * (if (= 0 0) 0 (p))
; However, p would endlessly repeat expanding itself and never terminate
;
; With a normal-order interpreter, the expressions would be expanded
; step by step as follows:
;   * (if (= 0 0) 0 (p))
;   * (if t 0 (p))
;   * 0
