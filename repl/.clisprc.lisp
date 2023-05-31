;;; The following lines added by ql:add-to-init-file:
#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

;;; Use a newer asdf version:
#+#:nil
(let
  ((compiled-file #P"~/.cache/local/common-lisp/clisp/asdf.fas"))
  (progn
    (ensure-directories-exist (directory-namestring compiled-file))
    (if (not (probe-file compiled-file))
      (compile-file #P"~/asdf.lisp"
                    :output-file compiled-file))
    (load compiled-file)))

;;; *
;;; * Common utilities
;;; *

#+#:nil
(load #p"~/dot/repl/common-rc.lisp")
