(in-package :cl-user)

(defpackage :lisux
  (:use :common-lisp)
  (:import-from :uiop
                #:run-program
                #:getenv)
  ;; (:import-from :base
  ;;               :sh)
  (:export :main))

(in-package :lisux)

(defun main ()
  (format t "Hello ~A!" (getenv "USER")))
