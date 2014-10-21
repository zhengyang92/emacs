(add-to-list 'load-path "~/.emacs.d/extends/markdown-mode/")
(autoload 'markdown-mode "markdown-mode.el"
    "Major mode for editing Markdown files" t)
(setq auto-mode-alist
    (cons '("\\.md" . markdown-mode) auto-mode-alist))

(provide 'markdown-mode-conf)
