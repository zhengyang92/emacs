(add-to-list 'load-path "~/.emacs.d/extends/clojure-mode")
(require 'clojure-mode)
(require 'nrepl)
(require 'paredit)
(require 'rainbow-delimiters)

(add-hook 'nrepl-interaction-mode-hook
  'nrepl-turn-on-eldoc-mode)
(setq nrepl-tab-command 'indent-for-tab-command)
(setq-default indent-tabs-mode nil)
(add-to-list 'same-window-buffer-names "*nrepl*")
(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'clojure-mode-hook 'set-newline-and-indent)

(defun my-nrepl-jack-in ()
  (interactive)
  (split-window-vertically)
  (dolist (buffer (buffer-list))
    (when (string-prefix-p "*nrepl" (buffer-name buffer))
      (kill-buffer buffer)))
  (nrepl-jack-in nil))

(setq nrepl-popup-stacktraces nil)


(add-hook 'clojure-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-n") 'my-nrepl-jack-in)))

(provide 'clojure-mode-conf)
