#!/usr/bin/env racket

#lang racket/base

(module+ main)
  (printf "Given arguments: ~s\n"
        (current-command-line-arguments))
