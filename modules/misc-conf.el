(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes

;;winner-mode
(when (fboundp 'winner-mode)
(winner-mode)

;;eshell-mode path
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(windmove-default-keybindings))
(setq default-major-mode 'text-mode)
;;(add-hook 'text-mode-hook 'turn-on-auto-fill)

(global-linum-mode 1)
(setq linum-format "%5d|")

;;yasnippet
;;(require 'yasnippet)
;;(yas-global-mode 1)

;;convert tab to 4 spaces
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-stop-list ())

;;frame title
(setq frame-title-format "emacs@%b")

;;delete the line when C-k at the beginning of line
(setq-default kill-whole-line t)

;;keep the cursor at the end of line when seeking vertically
(setq track-eol t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; ESS for R
(require 'ess-site)

(provide 'misc-conf)
