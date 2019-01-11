;;; Melpa Packages Site -- Summary
;;list-packages
(require 'package)

;; tell emacs to not initialize the package tool when it is loaded
(setq package-enable-at-startup nil)

;; provide remote package sources
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

;; tell built-in package tool to get started
(package-initialize)



;;; Make sure 'use-package' is installed
;; Bootstrap 'use-package': if not installed, refresh remotes, install it
;; https://github/jwiegly/use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))



;;; Fix common $PATH environment variable issue on for MacOS
;;requires "exec-path-from-shell" package
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "820adda9854ceaf51d342cbf64acc665226556ef36757feb1ca8d176a49a6ea9" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" default)))
 '(package-selected-packages
   (quote
    (color-theme-sanityinc-tomorrow dired-k git-timemachine all-the-icons all-the-icons-gnus all-the-icons-ivy neotree win-switch skewer-mode skewer-reload-stylesheets counsel-tramp company-tern js2-refactor xref-js2 js2-mode engine-mode color-theme org-bullets rjsx-mode multiple-cursors yasnippet ac-html ac-html-bootstrap ac-html-csswatcher ac-inf-ruby atom-dark-theme company company-web counsel dash emmet-mode exec-path-from-shell faff-theme flycheck fontawesome forecast hl-anything image+ image-dired+ ivy jekyll-modes js3-mode json-mode json-navigator major-mode-icons markdown-mode markdown-preview-mode pandoc-mode pdf-tools rainbow-mode sass-mode sed-mode smart-mode-line-powerline-theme undo-tree use-package web-completion-data web-mode yaml-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#1d1f21" :foreground "#c5c8c6" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "Menlo"))))
 '(highlight ((t (:background "gray28"))))
 '(web-mode-current-column-highlight-face ((t (:background "gray28"))))
 '(web-mode-doctype-face ((t (:foreground "#9a8297"))))
 '(web-mode-html-attr-name-face ((t (:foreground "#dec97e"))))
 '(web-mode-html-attr-value-face ((t (:foreground "#96b38a"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "#a4904a"))))
 '(web-mode-html-tag-face ((t (:foreground "#a4904a")))))



;;; Loads 'lccinit.org' file containing Packages with Configuration
;; File is in Org Mode structure for Visual clarity
(org-babel-load-file (expand-file-name "~/.emacs.d/lccinit.org"))

;;; init.el ends here
