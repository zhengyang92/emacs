(add-to-list 'load-path "~/.emacs.d/modules/")
(add-to-list 'load-path "~/.emacs.d/custom/")
(add-to-list 'load-path "~/.emacs.d/packages/")
(require 'elpa-conf)
(require 'org-mode-conf)
(require 'misc-conf)
(require 'color-theme-conf)
;;(require 'eshell-conf)
;;(require 'markdown-mode-conf)
;;(require 'erc-conf)
;;(require 'lisp-mode-conf)
;;(require 'key-bindings-conf)
;;(require 'scheme-mode-conf)
(require 'google-c-style)
(require 'cpp-mode-conf)
(require 'ui-conf)
(require 'helm-conf)
(require 'helm-gtags-conf)
;;(require 'company-mode-conf)
;;(require 'haskell-mode-conf)
;;;(require 'python-mode-conf)
;;(require 'smart-line-mode-conf)
;;(require 'magit-conf)
;;(require 'gnus-conf)
(require 'javacc-mode)
(load-file "~/.emacs.d/ProofGeneral/generic/proof-site.el")

(provide 'init)
