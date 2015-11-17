(require 'package)
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;;(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)

;;sbt-mode
(unless (package-installed-p 'sbt-mode)
  (package-refresh-contents) (package-install 'sbt-mode))

;;color-theme
(unless (package-installed-p 'color-theme)
  (package-refresh-contents) (package-install 'color-theme))

;;color-theme-solarized
(unless (package-installed-p 'color-theme-solarized)
  (package-refresh-contents) (package-install 'color-theme-solarized))

;;markdown-mode
(unless (package-installed-p 'markdown-mode)
  (package-refresh-contents) (package-install 'markdown-mode))

;;yasnippet
;;(unless (package-installed-p 'yasnippet)
;;  (package-refresh-contents) (package-install 'yasnippet))

;;python-mode
;;(unless (package-installed-p 'python-mode)
;;  (package-refresh-contents) (package-install 'python-mode))

;;htmlize
(unless (package-installed-p 'htmlize)
  (package-refresh-contents) (package-install 'htmlize))

;;zencoding-mode
(unless (package-installed-p 'zencoding-mode)
  (package-refresh-contents) (package-install 'zencoding-mode))

;;exec-path-from-shell
(unless (package-installed-p 'exec-path-from-shell)
  (package-refresh-contents) (package-install 'exec-path-from-shell))

;;slime
;;(unless (package-installed-p 'slime)
;;  (package-refresh-contents) (package-install 'slime))

;;sml-mode
(unless (package-installed-p 'sml-mode)
  (package-refresh-contents) (package-install 'sml-mode))

;;haskell-mode
(unless (package-installed-p 'haskell-mode)
  (package-refresh-contents) (package-install 'haskell-mode))

;;haskell-indentation 2n
(unless (package-installed-p 'hi2)
  (package-refresh-contents) (package-install 'hi2))

;;structured-haskell-mode
(unless (package-installed-p 'shm)
  (package-refresh-contents) (package-install 'shm))

(unless (package-installed-p 'company-ghc)
  (package-refresh-contents) (package-install 'company-ghc))

;;llvm-mode
(unless (package-installed-p 'llvm-mode)
  (package-refresh-contents) (package-install 'llvm-mode))

;;paredit
(unless (package-installed-p 'paredit)
  (package-refresh-contents) (package-install 'paredit))

;;go-mode
(unless (package-installed-p 'go-mode)
  (package-refresh-contents) (package-install 'go-mode))

;;yaml-mode
(unless (package-installed-p 'yaml-mode)
  (package-refresh-contents) (package-install 'yaml-mode))

;;helm
(unless (package-installed-p 'helm)
  (package-refresh-contents) (package-install 'helm))

(unless (package-installed-p 'helm-ls-git)
  (package-refresh-contents) (package-install 'helm-ls-git))

(unless (package-installed-p 'helm-ls-hg)
  (package-refresh-contents) (package-install 'helm-ls-hg))

(unless (package-installed-p 'helm-descbinds)
  (package-refresh-contents) (package-install 'helm-descbinds))

(unless (package-installed-p 'helm-firefox)
  (package-refresh-contents) (package-install 'helm-firefox))

(unless (package-installed-p 'helm-gtags)
  (package-refresh-contents) (package-install 'helm-gtags))

;;cmake-mode
(unless (package-installed-p 'cmake-mode)
  (package-refresh-contents) (package-install 'cmake-mode))

(unless (package-installed-p 'nyan-mode)
  (package-refresh-contents) (package-install 'nyan-mode))

;;company
(unless (package-installed-p 'company)
  (package-refresh-contents) (package-install 'company))

;;company-c-headers
(unless (package-installed-p 'company-c-headers)
  (package-refresh-contents) (package-install 'company-c-headers))

(unless (package-installed-p 'function-args)
  (package-refresh-contents) (package-install 'function-args))

(unless (package-installed-p 'tuareg)
  (package-refresh-contents) (package-install 'tuareg))

;;clojure-mode
(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents) (package-install 'clojure-mode))

;;rust-mode
(unless (package-installed-p 'rust-mode)
  (package-refresh-contents) (package-install 'rust-mode))

;;fsharp-mode
(unless (package-installed-p 'fsharp-mode)
  (package-refresh-contents) (package-install 'fsharp-mode))

;;ESS for R
(unless (package-installed-p 'ess)
  (package-refresh-contents) (package-install 'ess))

;;erlang
(unless (package-installed-p 'erlang)
  (package-refresh-contents) (package-install 'erlang))

;;(unless (package-installed-p 'powerline)
;;  (package-refresh-contents) (package-install 'powerline))

(provide 'elpa-conf)
