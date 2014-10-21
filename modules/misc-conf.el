(add-to-list 'load-path "~/.emacs.d/extends/misc/")
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
(setq linum-format "%4d")


;;yasnippet 
(add-to-list 'load-path "~/.emacs.d/extends/yasnippet/")
(require 'yasnippet-bundle)
(yas/initialize)
;;(yas/load-directory "~/.emacs.d/extends/yasnippet/snippets/")

;;cursor-type
(setq-default cursor-type 'bar)

;;initial scratch
(setq initial-scratch-message nil)

;;disable scroll bar
(scroll-bar-mode -1)
;;(tool-bar-mode -1)

;;disable emacs startup message
(setq inhibit-startup-message t)

;;turn all yes-or-no into y-or-n
(fset 'yes-or-no-p 'y-or-n-p)

;;setup the default font 
;;(set-default-font "Monaco-12")
;;(set-fontset-font
;;    (frame-parameter nil 'font)
;;    'han
;;    (font-spec :family "Hiragino Sans GB" ))

;;ido
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10)


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

;;key-bindings
(global-set-key [f6] 'mew)

;; default directory
(setq default-directory "~/Dropbox/")

;; show time on minibuffer
(display-time-mode 1)
(setq display-time-24hr-format t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'misc-conf)
