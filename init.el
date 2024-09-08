;;Start screen
(setq initial-buffer-choice 'recentf-open-files)
(setq initial-scratch-message nil)

;; Packages config
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Uncomment this line to enable MELPA Stable if desired
;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Font
(set-frame-font "JetBrains Mono 12" nil t)

;; recentf configuration
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(defun display-recentf-on-startup ()
  (recentf-open-files))

(add-hook 'emacs-startup-hook 'display-recentf-on-startup)

;;Autoload function
(defun l ()
  (interactive) 
  (load-file "~/.emacs.d/init.el"))

;; Doom modeline and icons
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom
  (doom-modeline-buffer-file-name-style 'relative-from-project)
  (doom-modeline-icon t)
  (doom-modeline-major-mode-icon t)
  (doom-modeline-minor-modes nil))
(use-package all-the-icons-dired
  :ensure t
  :hook (dired-mode . all-the-icons-dired-mode))
(use-package all-the-icons-ibuffer
  :ensure t
  :init (all-the-icons-ibuffer-mode 1))

;; Visual
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(add-to-list 'default-frame-alist '(undecorated . t))
(set-frame-parameter nil 'undecorated t)
(add-to-list 'default-frame-alist '(internal-border-width . 10))

;; Translucent
(set-frame-parameter (selected-frame) 'alpha '(85 85))

;; Smartparens
(require 'smartparens-config)
(smartparens-global-mode 1)

;;Treemacs
(add-hook 'emacs-startup-hook 'treemacs)

;; Rainbow delimiters
(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

;; Line numbers
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; Magit
(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

;; Control Buffers Function @galeanaara
(defun other-window-backward (&optional n)
  (interactive "P")
  (other-window (- (prefix-numeric-value n))))

(global-set-key (kbd "C-x C-o") 'other-window-backward)

;; Size screen daemon
(setq default-frame-alist '((width . 1200) (height . 800)))
(set-face-attribute 'default nil :height 120)
(add-to-list 'default-frame-alist '(font . "JetBrains Mono-12"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-xcode))
 '(custom-safe-themes
   '("d3ad0b7d28322ef20c0876eb32bf6e7da8d58b104e320d851225f950af7417b7" "d17a21b31262daa40e85a15f6d2f1ec640d158b64dc8ee315790449b7ba6b03e"))
 '(package-selected-packages
   '(recentf-ext recentf-remove-sudo-tramp-prefix yasnippet-snippets xterm-keybinder which-key treemacs-magit tree-sitter timu-macos-theme speedbar-git-respect smartparens rainbow-delimiters one-themes nyan-mode neotree lsp-python-ms lsp-javacomp lsp-java go-mode flycheck doom-themes doom-modeline dired-subtree company catppuccin-theme auto-complete all-the-icons-nerd-fonts all-the-icons-ivy-rich all-the-icons-ivy all-the-icons-ibuffer all-the-icons-dired all-the-icons-completion)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
