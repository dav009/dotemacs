(setq ns-right-alternate-modifier nil)
(setq ns-right-command-modifier 'hyper)

(with-eval-after-load 'helm
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action))
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "M-b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "H-t") 'multi-term)
(global-set-key (kbd "C-x t") 'helm-mt)
(global-set-key (kbd "C-n")
    (lambda () (interactive) (next-line 5)))
(global-set-key (kbd "C-p")
    (lambda () (interactive) (previous-line 5)))


(define-key isearch-mode-map (kbd "<up>") 'isearch-ring-retreat )
(define-key isearch-mode-map (kbd "<down>") 'isearch-ring-advance )
(define-key isearch-mode-map (kbd "<left>") 'isearch-repeat-backward)
(define-key isearch-mode-map (kbd "<right>") 'isearch-repeat-forward)

(global-set-key (kbd "H-x") 'server-edit)
(global-set-key (kbd "H-b") 'helm-buffers-list)
(global-set-key (kbd "H-0") 'delete-window)
(global-set-key (kbd "H-w") 'ace-window)
(global-set-key (kbd "H-p") 'execute-extended-command)
(global-set-key (kbd "H-o") 'helm-find-files)
(global-set-key (kbd "H-[") 'beginning-of-buffer)
(global-set-key (kbd "H-'") 'end-of-buffer)

(define-key comint-mode-map (kbd "<up>")
  'comint-previous-matching-input-from-input)

(define-key comint-mode-map (kbd "<down>")
  'comint-next-matching-input-from-input)


(add-hook 'term-mode-hook (lambda ()
                            (define-key term-raw-map (kbd "C-y") 'term-paste)
	                     (define-key term-raw-map (kbd "s-v") 'term-paste)
	  ))
