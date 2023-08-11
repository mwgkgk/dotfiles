;;; Sat Aug 13 05:08:29 UTC 2022

;;; Common things between impls

;;; *
;;; * Repl utils
;;; *

(ql:quickload '(#:ghost) :silent t)
(use-package :ghost)

(ql:quickload '(#:ghost/spellbook) :silent t)

;;; *
;;; * Project management
;;; *

(ql:quickload '(#:colony #:scheduling-facility #:condition-system #:ants
                #:manufacturing-facility) :silent t)

;;; *
;;; * Playpen
;;; *

(ql:quickload '(#:sprawl) :silent t)

;;; *
;;; * Greeting
;;; *

#+#:nil
(scheduling-facility:agenda)
