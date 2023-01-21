#!/usr/bin/sbcl --script
; vim:ft=lisp

(defpackage #:__new_package
  (:use #:cl))

(in-package #:__new_package)

(defun main ()
  (print *posix-argv*))
