(defpackage siclp/tests/main
  (:use :cl
        :siclp
        :rove))
(in-package :siclp/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :siclp)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
