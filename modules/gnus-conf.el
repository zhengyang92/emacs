;;gnus
(setq gnus-home-directory "~/.emacs.d/usenet/")
(setq gnus-directory "~/.emacs.d/usenet/")
(setq gnus-inhibit-startup-message t)  
(setq gnus-select-method '(nntp "news.gmane.org"))
(setq user-full-name "foulwall") 
(setq user-mail-address "foulwall@yahoo.com") 

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(canlock-password "5dc7c801822d98e2ce1a3d4c0d4081b4ab3c0ad8"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
)

(provide 'gnus-conf)
