;; ------------------------------------------------------------------------------
;; FILE        | .emacs
;; AUTHOR      | sameh kamal
;; DESCRIPTION | emacs initialization file
;; ------------------------------------------------------------------------------

;; user information
(setq user-full-name    "Sameh Kamal"
      user-mail-address "sameh.kamaleldin@gmail.com"
      package-enable-at-startup nil)

(when (>= emacs-major-version 24)

  (require 'package)
  (add-to-list 'package-archives '("melpa"     . "http://melpa.milkbox.net/packages/"  ) t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/" )  )

  (package-initialize)

  ;; Bootstrap  use-package
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package)
  )

  (require 'use-package)

  ;; configure menus  
  (tool-bar-mode   0 )
  (menu-bar-mode   0 )
  (scroll-bar-mode 0 )

  ;; configure theme
  (load-theme 'seti t)
  
  ;; configure line number format
  (global-linum-mode t)
  (setq linum-format "%4d")

  ;; configre font
  (set-default-font "Monospace 10")
  
  ;; global keybindings
  (global-set-key "\M-r"      '(lambda () (interactive) (load-file "~/.emacs"))  )
  (global-set-key (kbd "RET") 'newline-and-indent                                )
  (global-set-key (kbd "C-;") 'comment-or-uncomment-region                       )

  ;; multi-cursor bindings
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-?") 'mc/mark-all-like-this)
  
  ;; packages configuration
  (use-package magit
     :ensure t
     :bind ("C-x C-g" . magit-status))  
)
