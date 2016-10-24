(setq elpy-rpc-python-command "/usr/local/bin/python3")
(setq python-shell-interpreter "ipython3" python-shell-interpreter-args "--simple-prompt --pprint")
(setq python-check-command (expand-file-name "/usr/local/bin/flake8"))
(setq elpy-rpc-backend "jedi")

(add-hook 'elpy-mode-hook
          (lambda ()
            ;; (setq indent-tabs-mode nil)
            ;; (setq tab-width 4)
            ;; (setq python-indent 4)
            (define-key elpy-mode-map (kbd "M-.") 'elpy-goto-definition)
            (define-key elpy-mode-map (kbd "C-x M-.") 'elpy-goto-definition-other-window)
            (define-key elpy-mode-map (kbd "M-,") 'pop-tag-mark)
            ))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . gfm-mode))
  :init (setq markdown-command "multimarkdown"))