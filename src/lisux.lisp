(in-package :cl-user)

(defpackage :lisux
  (:use :common-lisp)
  (:import-from :base
                :sh)
  (:export :main))

(in-package :lisux)

(defun main ()
  (print "Hello Lisux!"))
