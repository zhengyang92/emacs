;clojure-mode
(setq slime-lisp-implementations
      '((cmucl ("lisp" "-quiet"))
        (sbcl ("sbcl") :coding-system utf-8-unix)
        (clozure-cl ("ccl"))))
(setq slime-default-lisp 'sbcl)
(setq slime-protocol-version 'ignore)

(add-hook 'lisp-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c s") 'slime-selector)
             (local-set-key (kbd "<tab>") 'slime-complete-symbol)
             (local-set-key (kbd "C-c C-n")
                            '(lambda ()
                               (interactive)
                               (slime)))))
                               

;;(setq inferior-lisp-program "/usr/local/bin/sbcl")

;;mit-scheme
(when (require 'slime nil t)
  (defun mit-scheme-start-swank (file encoding)
    (format "%S\n\n" `(start-swank ,file)))
  (defun mit-scheme-find-buffer-package ()
    (save-excursion
      (let ((case-fold-search t))
	(goto-char (point-min))
	(and (re-search-forward "^;+ package: \\(([^)]+)\\)" nil t)
	     (match-string-no-properties 1)))))
  (defun mit-scheme-slime-mode-init ()
    (slime-mode t)
    (make-local-variable 'slime-find-buffer-package-function)
    (setq slime-find-buffer-package-function 'mit-scheme-find-buffer-package))
  (slime-setup '(slime-fancy slime-asdf slime-banner))
  (if (not (memq 'mit-scheme slime-lisp-implementations))
      (setq slime-lisp-implementations
	    (cons '(mit-scheme ("mit-scheme")
			       :init mit-scheme-start-swank)
		  slime-lisp-implementations)))
  (add-hook 'scheme-mode-hook 'mit-scheme-slime-mode-init))


(provide 'lisp-mode-conf)
