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
  (add-to-list 'load-path "~/.emacs.d/snippets")
  (require 'yasnippet)
  (require 'use-package)
  (require 'tex-mik)
  
  ;; hilghlight parantheses
  (require 'highlight-parentheses)
  (define-globalized-minor-mode global-highlight-parentheses-mode highlight-parentheses-mode
    (lambda nil (highlight-parentheses-mode t)))

  ;; configure menus  
  (tool-bar-mode   0 )
  (menu-bar-mode   0 )
  (scroll-bar-mode 0 )

  ;; configure theme
  (load-theme 'seti t)
  ;; enable elpy mode for python dev
  (elpy-enable)
  ;; auto-complete default config
  (ac-config-default)
  ;; enable flycheck global mode
  (global-flycheck-mode)
  ;; enable git diff
  (diff-hl-mode         t)
  (diff-hl-flydiff-mode t)
  ;; enable yasnippet
  (yas-global-mode      t)
  ;; enable highlight parentheses 
  (global-highlight-parentheses-mode t)
  ;; auctex config
  (load "auctex.el" nil t t)
  setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil)
  (add-hook 'LaTeX-mode-hook 'visual-line-mode)
  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
  (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
  (setq reftex-plug-into-AUCTeX t)
  (setq TeX-PDF-mode t)

  ;; configure line number format
  (global-linum-mode t)
  (setq linum-format "%4d ")

  ;; configre font
  (set-default-font "Monospace 14")

  ;; global keybindings
  (global-set-key (kbd "C-v"  ) 'clipboard-yank  )
  (global-set-key (kbd "C-x d") 'delete-char  )
  (global-set-key "\M-r"       '(lambda () (interactive) (load-file "~/.emacs"))  )
  (global-set-key (kbd "RET") (lambda () (interactive) (newline) (indent-according-to-mode)))
  (global-set-key (kbd "C-;") 'comment-or-uncomment-region                       )

  ;; multi-cursor bindings
  (global-set-key (kbd "C-M-d") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-?") 'mc/mark-all-like-this)

  ;; Fixing a key binding bug in elpy
  (define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
  ;; Fixing another key binding bug in iedit mode
  (define-key global-map (kbd "C-c o") 'iedit-mode)

  ;; packages configuration
  (use-package magit
     :ensure t
     :bind ("C-x C-g" . magit-status))  
  )
