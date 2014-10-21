(add-to-list 'load-path "~/.emacs.d/extends/mew-6.5/")
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)

;; Optional setup (Read Mail menu):
(setq read-mail-command 'mew)

;; Optional setup (e.g. C-xm for sending a message):
(autoload 'mew-user-agent-compose "mew" nil t)
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'mew-user-agent))
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
      'mew-user-agent
      'mew-user-agent-compose
      'mew-draft-send-message
      'mew-draft-kill
      'mew-send-hook))

(setq mew-pop-size 0)
(setq mew-passwd-timer-unit 999)
(setq mew-passwd-lifetime 999)
(set-default 'mew-decode-quoted 't)  
(setq mew-prog-pgp "gpg")
(setq mew-pop-delete nil)
(setq mew-config-alist 
 '(
  ("default"
        ("name"	. "Homer Liu")
	("user"	. "liu.homer@gmail.com")
	("mail-domain" . "gmail.com")
	("proto" . "%")
	("imap-server"	. "imap.gmail.com")
	("imap-user"	. "liu.homer@gmail.com")
	("imap-size"	. 0)
	("imap-auth"    . 'pass)
        ("imap-ssl"     . t)
	("imap-ssl-port". "993")
	("smtp-ssl"	. t)
	("smtp-auth"    . 'pass)
	("smtp-ssl-port". "465")
	("smtp-user"	. "liu.homer@gmail.com")
	("smtp-server"	. "smtp.gmail.com")
	("imap-delete" . t)
	("imap-queue-folder" . "%queue") 
	("imap-trash-folder" . "%INBOX.Trash") ;; This must be in concile with your IMAP box setup
	)
 ))
(setq mew-ssl-verify-level 0)

(setq mew-summary-form
      '(type (5 date) " | " (-4 size) " | " (20 from) " | " t (0 subj)))
(setq mew-use-cached-passwd t)
;;gmail
(setq mew-mail-path "~/.emacs.d/mails/")
(setq mew-conf-path mew-mail-path)
(provide 'mew-conf)

