(add-to-list 'load-path "~/.emacs.d/personal/")

(load "misc.el")
(server-start)

(require 'package)


(add-to-list 'package-archives             
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(require 'use-package)
(require 'ace-window)
(require 'helm-mt)
(require 'git-gutter)
(require 'multi-term)
(require 'helm-config)
(require 'helm)
(require 'projectile)
(require 'ensime)

(use-package ensime
  :ensure t)

(elpy-enable)

(helm-mode 1)
(global-git-gutter-mode +1)
(git-gutter:linum-setup)
(projectile-global-mode)


(custom-set-variables 
  '(git-gutter:update-interval 2)
  )

(setq multi-term-program "/bin/zsh")
(setq ensime-startup-snapshot-notification nil)
(custom-set-variables '(markdown-command "/usr/local/bin/multimarkdown"))

;; Custom 'files'
(require 'multi-term)
(load "personal.el")
(load "face.el")
(load "bindings.el")
(load "modes.el")
(load "hooks.el")
(setq system-uses-terminfo nil)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(add-hook 'shell-mode-hook 
          'ansi-color-for-comint-mode-on)



(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))



(use-package projectile
  :demand
  :init   (setq projectile-use-git-grep t)
  :config (projectile-global-mode t)
  :bind   (("s-f" . projectile-find-file)
           ("s-F" . projectile-grep)))

(use-package undo-tree
  :diminish undo-tree-mode
  :config (global-undo-tree-mode)
  :bind ("s-/" . undo-tree-visualize))
