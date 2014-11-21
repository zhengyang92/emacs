(require 'erc)
(require 'erc-autoaway)
(require 'erc-ring)
(require 'erc-fill)
(require 'erc-services)

;(erc-netsplit-mode nil)                 ; I don't need this.
(erc-ring-enable)
(erc-log-mode)

(setq erc-nick "foulwall")
(setq erc-port 6666)
(setq erc-away-nickname "foulwall{away}")
(setq erc-nickserv-passwords
      '((freenode (("foulwall" . "gentoo")))))
(setq erc-prompt-for-nickserv-password nil)
(setq erc-user-full-name "Zhengyang Liu")

(erc-services-mode 1)

;; Auto un-away
(setq erc-auto-discard-away t)
;; Spell check
(erc-spelling-mode 1)
;; Do not make nicks as buttons
(setq erc-button-buttonize-nicks nil)

(setq erc-log-channels t
      erc-log-channels-directory "~/.emacs.d/logs/erc"
      erc-log-insert-log-on-open nil
      erc-log-file-coding-system 'utf-8)

(setq erc-prompt (lambda ()
                   (if (and (boundp 'erc-default-recipients)
                            (erc-default-target))
                       (erc-propertize (concat (erc-default-target) ">")
                                       'read-only t
                                       'rear-nonsticky t
                                       'front-nonsticky t)
                     (erc-propertize (concat "ERC>")
                                     'read-only t
                                     'rear-nonsticky t
                                     'front-nonsticky t))))
(setq erc-autojoin-channels-alist '(("freenode.net"
                                     "##crypto"
                                     "##classical"
                                     "#gsoc"
                                     "#shogun")))
(erc-autojoin-mode 1)

;; Don't track server buffer
(setq erc-track-exclude-server-buffer t)
;; Don't track join/quit
(setq erc-track-exclude-types '("NICK" "333" "353" "JOIN" "PART" "QUIT"))


(provide 'erc-conf)
