;;; Sat Aug 13 05:08:29 UTC 2022

;;; Common things between impls

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
;;; * Repl utils
;;; *

(ql:quickload '(#:ghost) :silent t)
; (use-package :ghost-artifacts)

; (ql:quickload '(#:ghost/spellbook) :silent t)

;;; *
;;; * Greeting
;;; *

#+#:nil
(scheduling-facility:agenda)
