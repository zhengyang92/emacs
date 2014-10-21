(require 'eshell)
(require 'em-smart)
(setq eshell-where-to-jump 'begin)
(setq eshell-review-quick-commands nil)
(setq eshell-smart-space-goes-to-end t)
(setq eshell-directory-name "~/.emacs.d/extends/eshell")

(defun open-eshell-in-other-buffer()
  "Open eshell in other buffer"
  (interactive)
  (split-window-right)
  (eshell))
(defun m-eshell-hook ()
  ;; define control p, control n and the up/down arrow
  (define-key eshell-mode-map [(control p)] 'eshell-previous-matching-input-from-input)
  (define-key eshell-mode-map [(control n)] 'eshell-next-matching-input-from-input)
  (define-key eshell-mode-map [up] 'previous-line)
  (define-key eshell-mode-map [down] 'next-line))

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'eshell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'eshell-mode-hook 'm-eshell-hook)
(provide 'eshell-conf)
