(let ((bootstrap-file (concat user-emacs-directory "straight/repos/straight.el/bootstrap.el"))
      (bootstrap-version 3))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

; (straight-use-package
;  '(prescient :host github :repo "raxod502/prescient.el"))

(straight-use-package 'ivy)
(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))
(ivy-mode 1)

; (straight-use-package 'helm)
; (global-set-key (kbd "M-x") #'helm-M-x)
; (global-set-key (kbd "C-x C-f") #'helm-find-files)

(straight-use-package 'slime)

(straight-use-package 'evil)
(evil-mode 1)

(load-theme 'leuven t)
