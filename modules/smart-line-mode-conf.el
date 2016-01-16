(setq sml/theme nil)
(setq sml/no-confirm-load-theme t)
(sml/setup)
(add-to-list 'sml/replacer-regexp-list '("^~/research/" ":RS:") t)

(provide 'smart-line-mode-conf)
