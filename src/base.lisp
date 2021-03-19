(in-package :cl-user)

(defpackage :base
  (:use :common-lisp)
  (:export
   :sh))

(in-package :base)

(defun sh(cmd)
  #+clisp (let ((str (ext:run-shell-command cmd :output:stream)
                     (loop for line = (read-line str nil)
                      until (null line)
                      do (print line)))))
  #+ecl (si:system cmd)
  #+sbcl (sb-ext:run-program "/bin/sh" (list "-c" cmd) :input nil :output *standard-output*)
  #+clozure (ccl:run-program "/bin/sh" (list "-c" cmd) :input nil :output *standard-output*))
