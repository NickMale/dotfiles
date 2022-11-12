(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)


;; use-package setup
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile (require 'use-package))

(use-package use-package
	     :config
	     (setq use-package-always-ensure t))

;; neotree
(use-package neotree)
(global-set-key [f8] 'neotree-toggle)

;; line numbers for programming modes
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Theming
(use-package tangotango-theme)
(load-theme 'tangotango t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (smartparens company-mode eglot tangotango-theme tabbar session pod-mode muttrc-mode mutt-alias initsplit htmlize graphviz-dot-mode folding eproject diminish csv-mode browse-kill-ring boxquote bm bar-cursor apache-mode use-package neotree lsp-treemacs flycheck company cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; eglot (LSP support)
(use-package eglot)
(use-package project)

;; CIDER REPL
(use-package cider
  :ensure t)

;; Company mode
(use-package company)
(add-hook 'after-init-hook 'global-company-mode)

;; Smart parens
(use-package smartparens)
(require 'smartparens-config)
(add-hook 'prog-mode-hook #'smartparens-mode)

;; Window movement
(use-package ace-window)
(global-set-key (kbd "M-o") 'ace-window)
