;;; Code:
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1)) ; turn off
(if (fboundp 'horizontal-scroll-bar-mode) (horizontal-scroll-bar-mode -1)) ; turn off scrollbar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1)) ; turn off toolbar
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1)) ; turn off menubar

(add-hook 'after-make-frame-functions
          '(lambda (frame)
             (modify-frame-parameters frame
                                      '((vertical-scroll-bars . nil)
                                        (horizontal-scroll-bars . nil)))))
;;cursor-type
(setq-default cursor-type 'bar)

;;initial scratch
(setq initial-scratch-message nil)

;;disable emacs startup message
(setq inhibit-startup-message t)

;;turn all yes-or-no into y-or-n
(fset 'yes-or-no-p 'y-or-n-p)

;;setup the default font
(if (eq system-type 'darwin)
    (set-frame-font "Monaco-12"))

(provide 'ui-conf)
;;; ui-conf.el ends here
