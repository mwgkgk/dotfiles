(in-package :lem-user)

;;; Enable vi mode
;;; See ~/.roswell/local-projects/cxxxr/lem/modes/vi-mode/README.md/
(lem-vi-mode:vi-mode)

;;; *
;;; * Keybindings / Normal mode
;;; *

;;; TODO move upstream
(define-key lem-vi-mode:*command-keymap* "C-d" 'next-page)

;;; *
;;; * Keybindings / Window management
;;; *

;;; Also known as vi-quit but that one doesn't work
(define-command delete-active-window-or-exit () ()
  (if (one-window-p)
      (exit-lem)
      (delete-active-window)))

(define-key lem-vi-mode:*command-keymap* "Space q" 'delete-active-window-or-exit)
(define-key lem-vi-mode:*command-keymap* "Space Q" 'exit-lem)

(define-key lem-vi-mode:*command-keymap* "Space h" 'window-move-left)
(define-key lem-vi-mode:*command-keymap* "Space l" 'window-move-right)
(define-key lem-vi-mode:*command-keymap* "Space k" 'window-move-up)
(define-key lem-vi-mode:*command-keymap* "Space j" 'window-move-down)

(define-key lem-vi-mode:*command-keymap* "Space w" 'save-current-buffer)
(define-key lem-vi-mode:*command-keymap* "Space e" 'find-file)

(define-key lem-vi-mode:*command-keymap* "Space n" 'split-active-window-vertically)
(define-key lem-vi-mode:*command-keymap* "Space N" 'split-active-window-horizontally)

;;; *
;;; * Keybindings / S-exp
;;; *

(define-key lem-vi-mode:*command-keymap* "C-c o" 'lem::kill-around-form)
(define-key lem-vi-mode:*command-keymap* "C-c S" 'lem-paredit-mode:paredit-splice)
;;; TODO move to C-c C-c
(define-key lem-vi-mode:*command-keymap* "C-c c" 'lem-paredit-mode::paredit-wrap)
(define-key lem-vi-mode:*command-keymap* "M-L" 'lem-paredit-mode::paredit-slurp)
(define-key lem-vi-mode:*command-keymap* "M-K" 'lem-paredit-mode::paredit-barf)

;;; *
;;; * Keybindings / Eval
;;; *

(define-key lem-vi-mode:*command-keymap* "X" 'lem-lisp-mode:lisp-compile-defun)
(define-key lem-vi-mode:*command-keymap* "Space x" 'lem-lisp-mode:lisp-compile-and-load-file)

;;; *
;;; * Keybindings / Places
;;; *

;;; TODO pass args to commands from define-key
(define-key lem-vi-mode:*command-keymap* "; c v c" 'find-file)

;;; *
;;; * Colors
;;; *

(define-color-theme "zone" ()
  (:display-background-mode :dark)
  ;; (:foreground "#FFFFFF")
  ;; (:background "#000000")
  (:inactive-window-background nil)
  (region :foreground nil :background "blue")
  (modeline :background "#404040" :foreground "white")
  (modeline-inactive :background "#303030" :foreground "gray")
  (syntax-string-attribute :foreground "light salmon")
  (syntax-comment-attribute :foreground "chocolate1")
  (syntax-keyword-attribute :foreground "cyan1")
  (syntax-constant-attribute :foreground "LightSteelBlue")
  (syntax-function-name-attribute :foreground "LightSkyBlue")
  (syntax-variable-attribute :foreground "LightGoldenrod")
  (syntax-type-attribute :foreground "PaleGreen"))

(lem::apply-theme (lem::find-color-theme "zone"))
