(package-initialize)

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
(require 'flycheck-conf)
(require 'llvm-mode)
;(load-file "~/.emacs.d/ProofGeneral/generic/proof-site.el")

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (racket-mode proof-general swift-mode boogie-friends fill-column-indicator z3-mode smart-mode-line rust-mode paredit nyan-mode helm-ls-hg helm-ls-git helm-gtags helm-firefox helm-descbinds exec-path-from-shell company-c-headers cmake-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
