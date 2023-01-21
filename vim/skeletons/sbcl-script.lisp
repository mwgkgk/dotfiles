#!/usr/bin/env runsbcl
; vim:ft=lisp

(defpackage #:__new_package
  (:use #:cl))

(in-package #:__new_package)

(defun main ()
  (let ((filepath (second sb-ext:*posix-argv*)))
    (error "unfinished")))
