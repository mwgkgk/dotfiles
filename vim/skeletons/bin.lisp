;;; vim:ft=lisp

(defpackage #:__new_package
  (:use #:cl))

(in-package #:__new_package)

(defun main ()
  (let ((words (uiop:command-line-arguments)))
    (if (member "--repl" words :test #'string=)
      (repl)
      (format t "~A~%"
              (let ((parse (handle-user-input words)))
                (format *error-output* "~A" parse)
                (if parse
                  parse
                  (uiop/os:getcwd))))))
  0)

#+#:nil
(sb-ext:save-lisp-and-die 
  "live/__new_package"
  :compression t
  ;; this is the main function:
  :toplevel (lambda ()
              (in-package #:__new_package)
              (use-package '(#:ghost))
              (main))
  :executable t)
