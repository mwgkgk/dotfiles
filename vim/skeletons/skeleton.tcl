#! /bin/env tclsh

package require Tk

set greeting hello

label .hello -text $greeting
pack .hello
