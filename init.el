(add-to-list 'load-path "~/.emacs.d/modules/")
(add-to-list 'load-path "~/.emacs.d/custom/")
(require 'elpa-conf)
(require 'org-mode-conf)
(require 'misc-conf)
(require 'color-theme-conf)
(require 'eshell-conf)
(require 'markdown-mode-conf)
(require 'erc-conf)
(require 'lisp-mode-conf)
(require 'key-bindings-conf)
(require 'scheme-mode-conf)
(require 'google-c-style)
(require 'cpp-mode-conf)
(require 'ui-conf)
(require 'helm-conf)
(require 'helm-gtags-conf)
(require 'company-mode-conf)
(require 'haskell-mode-conf)

(provide 'init)
