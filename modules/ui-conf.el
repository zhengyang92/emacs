;;(nyan-mode)

;;(require 'powerline)
;;(set-face-attribute 'mode-line nil
;;                    :foreground "White"
;;                    :background "#7F9F7F"
;;                    :box nil)
;;(setq powerline-arrow-shape 'diagonal)
;;(setq-default mode-line-format '("%e"
;;  (:eval
;;   (concat
;;    (powerline-rmw 'left nil)
;;    (powerline-buffer-id 'left nil powerline-color1)
;;    (powerline-minor-modes 'left powerline-color1)
;;    (powerline-narrow 'left powerline-color1 powerline-color2)
;;    (powerline-vc 'center powerline-color2)
;;    (powerline-make-fill powerline-color2)
;;    (powerline-row 'right powerline-color1 powerline-color2)
;;    (powerline-make-text ":" powerline-color1)
;;    (powerline-column 'right powerline-color1)
;;    (powerline-percent 'right nil powerline-color1)
;;    (powerline-make-text "  " nil)))))

(setq sml/theme 'respectful)
(setq sml/no-confirm-load-theme t)
(sml/setup)

;;disable scroll bar
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
;;(set-default-font "Monaco-12")
;;(set-fontset-font
;;    (frame-parameter nil 'font)
;;    'han
;;    (font-spec :family "Hiragino Sans GB" ))

(provide 'ui-conf)
