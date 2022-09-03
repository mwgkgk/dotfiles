;;; Sat Aug 13 05:08:29 UTC 2022

;;; Common things between impls

;;; *
;;; * Repl utils
;;; *

(ql:quickload '(#:ghost) :silent t)
(use-package :ghost)

;;; neoterm workaround meme
(defparameter sbcl nil)
;;; mis-send cause muscle memory to abort from errors
(defparameter a nil)

;;; *
;;; * Project management
;;; *

(ql:quickload '(#:colony #:scheduling-facility #:condition-system) :silent t)

;;; *
;;; * Playpen
;;; *

(ql:quickload '(#:sprawl) :silent t)

;;; *
;;; * Greeting
;;; *

(scheduling-facility:agenda)

;;; *
;;; * In-package
;;; *

(load #p"~/lisp-package.lisp" :if-does-not-exist nil)
