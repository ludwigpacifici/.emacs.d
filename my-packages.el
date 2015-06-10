(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(defvar my-packages '(
;                      cider
;                      clojure-mode
                      exec-path-from-shell
                      expand-region
                      flymake-cppcheck
                      ggtags
                      ido-ubiquitous
                      magit
                      markdown-mode
                      monokai-theme
                      org
                      org-plus-contrib
                      scss-mode
;                      smartparens
                      smex
                      solarized-theme
                      yaml-mode
                      zenburn-theme
                      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))