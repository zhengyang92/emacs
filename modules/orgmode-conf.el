(setq org-startup-indented t) ;; toggle org-mode's indent on
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-log-done t)

(require 'htmlize)

(setq org-agenda-files (list
                             "~/Dropbox/agenda/"))

(add-hook 'org-mode-hook
(lambda () (setq truncate-lines nil)))

(setq org-publish-use-timestamps-flag nil)
(require 'org-publish)
(setq org-publish-project-alist
      `(("note-org"
         :auto-sitemap t
         :sitemap-title "Portfilio"
         :sitemap-filename "index.org"
         :base-directory "~/Dropbox/note"
         :publishing-directory "~/Dropbox/note-release"
         :link-up ".."
         :link-home "/"
         :author "Zhengyang Liu"
         :email "zhengyangl@hotmail.com"
         :author-info "helloworld"
         :base-extension "org"
         :recursive t
         :table-of-contents nil
         :publishing-function org-publish-org-to-html
         :style "<link rel=\"stylesheet\" type=\"text/css\" href=\"\\static\\stylesheet.css\">"
         :auto-preamble t
         :link-home "index.html")
        ("note-static"
         :base-directory ,"~/Dropbox/note/static"
         :publishing-directory ,"~/Dropbox/note-release/static"
         :recursive t
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|swf\\|zip\\|gz\\|txt\\|el"
         :publishing-function org-publish-attachment)
        ("note"
         :components ("note-org" "note-static")
         )
        )
)
(provide 'orgmode-conf)
