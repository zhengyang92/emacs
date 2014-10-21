(load-file "~/.emacs.d/extends/cedet/common/cedet.el")
(add-to-list 'load-path "~/.emacs.d/extends/ecb-2.40/")
(setq stack-trace-on-error t)
(require 'ecb)
(require 'ecb-autoloads)
(setq ecb-auto-activate t
      ecb-tip-of-the-day nil)
(setq ecb-source-path '(("~/Dropbox/scripts/api/bter/" "bter-automata")
                        ("~/Dropbox/gsoc/shogun-demo/" "shogun-demo")
                        ("~/Dropbox/gsoc/shogun/" "shogun")
                        ("~/Dropbox/mldata/" "mldata")))

(global-ede-mode 1)
(semantic-load-enable-code-helpers) 
(global-srecode-minor-mode 1)

(provide 'cedet-conf)
