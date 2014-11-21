(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-<f9>") 'org-publish-all)

(global-set-key (kbd "C-c e s") 'eshell)

(global-set-key (kbd "<f4>") 'shell)
(global-set-key (kbd "<f9>") 'rename-buffer)
(global-set-key (kbd "<f5>") 'swap-color-theme)
(add-hook 'emacs-lisp-mode-hook ;; guessing
          '(lambda ()
             (local-set-key (kbd "C-c C-e")
                            '(lambda ()
                               (interactive)
                               (eval-buffer)
                               (message "Current Buffer Evaluated")))))
(global-set-key "\C-cef" (lambda () (interactive)
                           (erc)))

(global-set-key "\M-n" 'scroll-up-line)
(global-set-key "\M-p" 'scroll-down-line)


(provide 'key-bindings-conf)
