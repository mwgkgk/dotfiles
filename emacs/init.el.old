(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (leuven)))
 '(package-selected-packages (quote (which-key restart-emacs use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 
(when window-system
    (tool-bar-mode 0
      (scroll-bar-mode 0
        (tooltip-mode 0))))

;; Bar cursor
(setq-default cursor-type '(bar . 1))
;; Don't blink the cursor
(blink-cursor-mode -1)

;; No welcome screen - opens directly in scratch buffer
(setq inhibit-startup-message t
      initial-scratch-message ""
      initial-major-mode 'fundamental-mode
      inhibit-splash-screen t)

;; Change the echo message
(defun display-startup-echo-area-message ()
  (message "mwgkgkgkgkgkgk..."))

;; Backups at .saves folder in the current folder
(setq backup-by-copying t      ; don't clobber symlinks
      backup-directory-alist
      '(("." . "~/.emacs-temp"))    ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)       ; use versioned backups

(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
      create-lockfiles nil)

(prefer-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8-auto-unix)

(setq visible-bell nil)
(setq ring-bell-function 'ignore)

(setq large-file-warning-threshold (* 15 1024 1024))

(fset 'yes-or-no-p 'y-or-n-p)

(setq gdb-many-windows t
      gdb-show-main t)

(subword-mode)

(setq sentence-end-double-space nil)

(when (fboundp 'winner-mode)
  (winner-mode 1))

(unless (package-installed-p 'use-package)
    (package-refresh-contents
      (package-install 'use-package)))
(eval-when-compile
    (require 'use-package))
(require 'bind-key)                ;; if you use any :bind variant

(use-package dired
             :bind (:map dired-mode-map
                         ("C-c C-e" . wdired-change-to-wdired-mode))
             :init
             (setq dired-dwim-target t
                   dired-recursive-copies 'top
                   dired-recursive-deletes 'top
                   dired-listing-switches "-alh")
             :config
             (add-hook 'dired-mode-hook 'dired-hide-details-mode))

(use-package diminish
             :ensure t
             :demand t
             :diminish (visual-line-mode . "ω")
             :diminish hs-minor-mode
             :diminish abbrev-mode
             :diminish auto-fill-function
             :diminish subword-mode)

(use-package restart-emacs
             :ensure t
             :bind* (("C-x M-c" . restart-emacs)))

(use-package which-key
             :ensure t
             :defer t
             :diminish which-key-mode
             :init
             (setq which-key-sort-order 'which-key-key-order-alpha)
             :bind* (("M-m ?" . which-key-show-top-level))
             :config
             (which-key-mode)
             (which-key-add-key-based-replacements
               "M-m ?" "top level bindings"))

(use-package discover-my-major
             :ensure t
             :bind (("C-h C-m" . discover-my-major)
                    ("C-h M-m" . discover-my-mode)))

