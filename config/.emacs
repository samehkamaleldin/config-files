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

  ;; load package initalization script
  (load-file "~/.emacs.d/emacs-pkginit.el")
  (require 'use-package)
  
  ;; configure menus  
  (tool-bar-mode   0 )
  (menu-bar-mode   0 )
  (scroll-bar-mode 0 )

  ;; hilghlight parantheses
  (require 'highlight-parentheses)
  (define-globalized-minor-mode global-highlight-parentheses-mode highlight-parentheses-mode
    (lambda nil (highlight-parentheses-mode t)))

  (global-highlight-parentheses-mode t)

  ;; configure theme
  (load-theme 'seti t)

  ;; enable git diff
  (diff-hl-mode         t)
  (diff-hl-flydiff-mode t)
  
  ;; configure line number format
  (global-linum-mode t)
  (setq linum-format "%4d ")

  ;; configre font
  (set-default-font "Monospace 13")
  
  ;; global keybindings
  (global-set-key (kbd "C-v"  ) 'clipboard-yank  )
  (global-set-key (kbd "C-x d") 'delete-char  )
  (global-set-key "\M-r"        '(lambda () (interactive) (load-file "~/.emacs"))  )
  (global-set-key (kbd "RET")   'newline-and-indent                                )

  (global-set-key (kbd "C-;") 'comment-or-uncomment-region                       )

  ;; multi-cursor bindings
  (global-set-key (kbd "C-d") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-?") 'mc/mark-all-like-this)
  
  ;; packages configuration
  (use-package magit
     :ensure t
     :bind ("C-x C-g" . magit-status))  
)
