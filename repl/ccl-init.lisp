;;; *
;;; * Precompile file
;;; *

#+nil
(defparameter *precompiled-fasl-dir*
  #P"~/.cache/local/common-lisp/ccl/"
  "A directory to store precompiled FASL files. Is ensured to exist.")

#+nil
(defun precompile-and-load (filename)
  "Try to load a corresponding precompiled file in *PRECOMPILED-FASL-DIR*,
 COMPILE-FILE the FILENAME if precompiled file is not found. Create directories
 if needed.

 FILENAME is a pathname like #P\"~/asdf.lisp\"."
  (let
      ((target-filepath (make-pathname
                          :directory (directory-namestring *precompiled-fasl-dir*)
                          :name (pathname-name filename)
                          ;; Clozure CL uses flatform-specific FASL extensions:
                          :type "lx64fsl")))
    ;; TODO The logic is: try load (wrong version? report), if not, recompile
    ;;      once, try again, complain, and give up.
    #+nil
    (progn
      (ensure-directories-exist (directory-namestring target-filepath))
      (if (not (probe-file target-filepath))
          (compile-file filename
                        :output-file target-filepath))
      (load target-filepath))))

#+nil
(quote
  (precompile-and-load #P"~/asdf.lisp")
  (apropos "pathname-")
  (pathname-name #P"~/asdf.lisp")
  (directory-namestring *precompiled-fasl-dir*)
  ;; TODO handler-case see above
  (let ((target-file (make-pathname
                       :directory (directory-namestring *precompiled-fasl-dir*)
                       :name (pathname-name #P"~/asdf.lisp")
                       ;; Clozure CL uses flatform-specific FASL extensions:
                       :type "lx64fsl")))
    (handler-case (load target-file)
      (ccl::simple-file-error (c)
        (format t "Caught: ~s" c)
        (declare (ignore c))
        (compile-file #P"~/asdf.lisp"
                      :output-file target-file))))
  nil) ; 2021-06-19/07:10:53

;;; *
;;; * Quicklisp
;;; *

;;; The following lines added by ql:add-to-init-file:
#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

;;; *
;;; * Use a newer asdf version
;;; *

;;; Apparently this relies on asdf-install method which is deprecated
;;; TODO detect trunk based on current-directory-name, use separate path
(let
  ;; Clozure CL uses flatform-specific FASL extensions:
  ((compiled-file #P"~/.cache/local/common-lisp/ccl/asdf.lx64fsl"))
  (progn
    (ensure-directories-exist (directory-namestring compiled-file))
    (handler-case
      (load compiled-file)
      (error (e)
             (format t "Error: ~A~%Compiling..~%" e)
             (ignore-errors (delete-file compiled-file))
             (compile-file #P"~/asdf.lisp"
                    :output-file compiled-file)
             (load compiled-file)))))

#+nil
(quote
  (if (search ".ghq/" (ccl::current-directory-name)))
  nil) ; 2021-06-19/04:52:50

;;; *
;;; * CCL Config
;;; *

(setf *quit-on-eof* t)

;;; *
;;; * Common utilities
;;; *

(load #p"~/dot/repl/common-rc.lisp")
