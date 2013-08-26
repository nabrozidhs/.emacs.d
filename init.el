(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)


;; Packages to install if not installed.
(defvar packages-to-install '(auctex
                              clojure-mode
                              clojure-test-mode
                              haskell-mode
                              markdown-mode
                              nrepl
                              org
                              starter-kit
                              starter-kit-bindings
                              starter-kit-eshell
                              starter-kit-lisp
                              python-mode))

(dolist (package packages-to-install)
  (when (not (package-installed-p package))
    (package-install package)))


;; Theme.
(load-theme 'manoj-dark)


;; Emacs UI
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
