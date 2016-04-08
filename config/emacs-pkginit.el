;; ------------------------------------------------------------------------------
;; FILE        | .emacs-pkginit.el
;; AUTHOR      | sameh kamal
;; DESCRIPTION | emacs initial packages installation
;; ------------------------------------------------------------------------------


(require 'package)

(add-to-list 'package-archives '("elpy"         . "http://jorgenschaefer.github.io/packages/" ))
(add-to-list 'package-archives '("marmalade"    . "http://marmalade-repo.org/packages/"       ))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)


; list the packages you want
(setq package-list
      '(  use-package
	  python-environment
	  seti-theme
	  flycheck
	  elpy
	  highlight-indentation
	  auto-complete
	  magit
	  minimap
	  popup
	  multiple-cursors
	  dired+
	  diff-hl
	  ))


; activate all the packages
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
