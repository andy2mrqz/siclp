(defsystem "siclp"
  :version "0.1.0"
  :author "Andrew Marquez"
  :license "UNLICENSE"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Solutions to SICP in Common Lisp"
  :in-order-to ((test-op (test-op "siclp/tests"))))

(defsystem "siclp/tests"
  :author "Andrew Marquez"
  :license "UNLICENSE"
  :depends-on ("siclp"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for siclp"
  :perform (test-op (op c) (symbol-call :rove :run c)))
