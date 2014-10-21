;;jabber
(add-to-list 'load-path "~/.emacs.d/extends/emacs-jabber/") 
(require 'jabber-autoloads)
(setq jabber-account-list
      '(("liu.homer@gmail.com"
	 (:network-server . "talk.google.com")
	 (:connection-type . ssl)
	 (:password . "using namespace std;"))))

(setq jabber-vcard-avatars-retrieve nil)
(setq jabber-chat-buffer-show-avatar nil)

(mapcar
 (lambda (mode)
   (let ((mode-hook (intern (concat (symbol-name mode) "-hook")))
         (mode-map (intern (concat (symbol-name mode) "-map"))))
     (add-hook mode-hook
               `(lambda nil 
                        (local-set-key 
                               (kbd "RET")
                               (or (lookup-key ,mode-map "\C-j")
                                   (lookup-key global-map "\C-j")))))))
 '(c-mode c++-mode cperl-mode emacs-lisp-mode java-mode html-mode lisp-mode ruby-mode sh-mode)) ;;auto-indent

(defun iwb ()
 "indent whole buffer"
 (interactive)
 (delete-trailing-whitespace)
 (indent-region (point-min) (point-max) nil))

(provide 'jabber-conf)


