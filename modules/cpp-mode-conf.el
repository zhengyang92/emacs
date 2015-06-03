(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
; style I want to use in c++ mode
(c-add-style "cern-style"
             '("stroustrup"
               (indent-tabs-mode . nil)        ; use spaces rather than tabs
               (c-basic-offset . 3)            ; indent by four spaces
               (c-offsets-alist . ((inline-open . 0)  ; custom indentation rules
                                   (brace-list-open . 0)
                                   (statement-case-open . +)))))

(defun my-c++-mode-hook ()
  (c-set-style "cern-style"))        ; use my-style defined above

(add-hook 'c++-mode-hook 'my-c++-mode-hook)
(provide 'cpp-mode-conf)
