;;; The following lines added by ql:add-to-init-file:
#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

;;; *
;;; * Quicksearch
;;; *

;;; system readtable warning
#+#:nil
(ql:quickload '(#:quicksearch) :silent t)

;;; *
;;; * Common utilities
;;; *

(load #p"~/dot/repl/common-rc.lisp")
