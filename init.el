(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit
                      starter-kit-lisp
                      starter-kit-eshell
                      starter-kit-ruby
                      starter-kit-bindings
                      clojure-mode
                      clojure-test-mode
                      markdown-mode
                      yaml-mode
                      marmalade
                      paredit
                      molokai-theme
                      nrepl)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

(defun turn-on-rainbow () (rainbow-delimiters-mode 1))
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)

(set-frame-font "Inconsolata-16")

(color-theme-molokai)

(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\.md$" . markdown-mode))

(require 'server)
(unless (server-running-p)
  (server-start))

(add-hook 'before-save-hook 'whitespace-cleanup)

;; Don't ping Indonesia when working on Rails
;; https://github.com/technomancy/emacs-starter-kit/issues/39
(setq ffap-machine-p-known 'reject)
