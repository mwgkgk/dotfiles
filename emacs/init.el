

;;; Interface


;; Setting this section early in the file is intentional, to have
;; interface modifications applied early.

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(set-face-attribute 'default nil :font "Iosevka SS04" :height 79)
;; (set-face-attribute 'default nil :font "Anka/Coder Narrow" :height 89)
;; (set-face-attribute 'default nil :font "Anka/Coder" :height 89)
;; (set-face-attribute 'default nil :font "scientifica")

(load-theme 'tsdh-light t)

;; TODO add nlinum-relative and hook to evil mode switch
;; (global-display-line-numbers-mode)

(setq inhibit-startup-message t
      inhibit-splash-screen t)


;;; Packaging


;; Bootstrap the package manager, straight.el.
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)

      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


;; Package `use-package' provides a handy macro by the same name which
;; is essentially a wrapper around `with-eval-after-load' with a lot
;; of handy syntactic sugar and useful features.
(straight-use-package 'use-package)


;; When configuring a feature with `use-package', also tell
;; straight.el to install a package of the same name, unless otherwise
;; specified using the `:straight' keyword.
(setq straight-use-package-by-default t)


;; Tell `use-package' to always load features lazily unless told
;; otherwise. If `:demand' is present, the loading is eager.
(setq use-package-always-defer t)


;;; Colors


;; (use-package green-is-the-new-black-theme
;;   :init
;;   (load-theme 'green-is-the-new-black t))

;;; Fuzz


;; Package `ivy' provides a user interface for choosing from a list of
;; options by typing a query to narrow the list, and then selecting
;; one of the remaining candidates.
(use-package ivy
  :init
  (ivy-mode 1)

  :config
  (setq ivy-re-builders-alist
	'((t . ivy--regex-fuzzy))))


;; Package `prescient' is a library for intelligent sorting and
;; filtering in various contexts.
(use-package prescient
  :config

  ;; Remember usage statistics across Emacs sessions
  (prescient-persist-mode 1))


;; Package `ivy-prescient' provides intelligent sorting and filtering
;; for candidates in Ivy menus.
(use-package ivy-prescient
  :demand t
  :after ivy
  :config

  ;; Use `prescient' for Ivy menus.
  (ivy-prescient-mode 1))


;;; Completion


(use-package auto-complete
  :config
  (ac-config-default))


;;; Evil


(use-package evil
  :init
  (evil-mode 1)

  (use-package evil-surround
    :config
    (global-evil-surround-mode 1))
  (use-package evil-commentary
    :config
    (global-evil-commentary-mode 1))

  :config

  (setq evil-vsplit-window-right t)

  ;; TODO fix SPC for dired, apropos
  (define-key evil-normal-state-map (kbd "SPC") 'evil-window-map)
  (define-key evil-window-map (kbd "w") 'evil-write)
  (define-key evil-window-map (kbd "Q") 'evil-quit-all)
  (define-key evil-window-map (kbd "N") 'evil-window-vnew)

  ;; Comfy eval
  (add-hook 'emacs-lisp-mode-hook
            '(lambda ()
               (define-key evil-normal-state-map (kbd "X") 'eval-defun)))

  ;; TODO normal-mode s is non-prefix
  ;; (define-key evil-normal-state-map (kbd "s SPC") 'switch-to-buffer)

  (define-key evil-normal-state-map (kbd "q") 'evil-jump-item))



;;; Parens

(use-package paredit
  :init
  
  (use-package paredit-everywhere
    :init
    (add-hook 'prog-mode-hook 'paredit-everywhere-mode)))

;; (straight-use-package 'lispy)
;; (add-hook 'emacs-lisp-mode-hook (lambda () (lispy-mode 1)))

;; (straight-use-package 'lispyville)
;; (add-hook 'lispy-mode-hook #'lispyville-mode)


;;; Languages


(use-package slime)

;; Elisp

;; Navigate emacs sources
(use-package elisp-slime-nav
  :init
  (dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook))
    (add-hook hook 'turn-on-elisp-slime-nav-mode))

  (setq source-directory "~/.ghq/github.com/emacs-mirror/emacs"))

;; Clojure

(use-package cider)


;;; Behavior


(setq vc-follow-symlinks t)

;; TODO infinite undo like vim
(setq backup-by-copying t               ; don't clobber symlinks
      backup-directory-alist
      '(("." . "~/.emacs-temp"))        ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)                ; use versioned backups

;; Always open new windows
(setq split-width-threshold 80)

;; Recent files
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


;; Server

(server-start)
