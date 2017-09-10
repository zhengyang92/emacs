
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
; style I want to use in c++ mode

(setq-default c++-indent-level 2)
(setq-default c-basic-offset 2)
(setq-default fill-column 80)
(setq-default indent-tabs-mode nil)

;;(add-hook 'c-mode-common-hook 'google-set-c-style)
;;(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

(semantic-mode 1)

;;(require 'function-args)
;;(fa-config-default)
(define-key c-mode-map  [(control tab)] 'moo-complete)
(define-key c++-mode-map  [(control tab)] 'moo-complete)
;;(define-key c-mode-map (kbd "M-o")  'fa-show)
;;(define-key c++-mode-map (kbd "M-o")  'fa-show)

(provide 'cpp-mode-conf)
