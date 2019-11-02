; #!/usr/bin/sbcl --script

(defun mn (args)
  nil)

(defun main ()
  (mn (cdr *posix-argv*)))
