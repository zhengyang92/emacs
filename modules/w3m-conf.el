;;w3m
(add-to-list 'load-path "~/.emacs.d/extends/emacs-w3m/")
(require 'w3m-load)
;;display image
(setq w3m-default-display-inline-images t)
(setq w3m-home-page "http://www.google.co.uk")

(provide 'w3m-conf)
