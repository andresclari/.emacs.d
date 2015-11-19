(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

;; Highlight current line
(global-hl-line-mode 1)

;; Set custom theme path
(setq custom-theme-directory (concat user-emacs-directory "themes"))

(dolist
    (path (directory-files custom-theme-directory t "\\w+"))
  (when (file-directory-p path)
    (add-to-list 'custom-theme-load-path path)))

;; Default theme
(defun use-presentation-theme ()
  (interactive)
  (when (boundp 'st/presentation-font)
    (set-face-attribute 'default nil :font st/presentation-font)))

(defun use-default-theme ()
  (interactive)
  (load-theme 'default-black)
  (when (boundp 'st/default-font)
    (set-face-attribute 'default nil :font st/default-font)))

(defun use-xemacs-theme ()
  (interactive)
  (load-theme 'xemacs)
  (when (boundp 'st/default-font)
    (set-face-attribute 'default nil :font st/default-font)))

(defun toggle-presentation-mode ()
  (interactive)
  (if (string= (frame-parameter nil 'font) st/default-font)
      (use-presentation-theme)
    (use-default-theme)))

(global-set-key (kbd "C-<f9>") 'toggle-presentation-mode)

;; (use-default-theme)
(use-xemacs-theme)
(set-cursor-color "red")
(setq default-frame-alist '((cursor-color . "red")))

;; Don't defer screen updates when performing operations
(setq redisplay-dont-pause t)

;; org-mode colors
(setq org-todo-keyword-faces
      '(
        ("INPR" . (:foreground "yellow" :weight bold))
        ("DONE" . (:foreground "green" :weight bold))
        ("IMPEDED" . (:foreground "red" :weight bold))
        ))

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; (when window-system
;;   (setq st/default-font "Liberation Mono-9")
;;   (setq st/presentation-font "Liberation Mono-12")
;;   (set-face-attribute 'default nil :font st/default-font))

(when window-system
  (setq st/default-font "Screen-9")
  (setq st/presentation-font "DejaVu Sans Mono-12")
  (set-face-attribute 'default nil :font st/default-font))

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (blink-cursor-mode -1))

;; Make zooming affect frame instead of buffers
(require 'zoom-frm)

;; Unclutter the modeline
(require 'diminish)
(eval-after-load "yasnippet" '(diminish 'yas-minor-mode))
(eval-after-load "elisp-slime-nav" '(diminish 'elisp-slime-nav-mode))
(eval-after-load "smartparens" '(diminish 'smartparens-mode))
(eval-after-load "guide-key" '(diminish 'guide-key-mode))
(eval-after-load "whitespace-cleanup-mode" '(diminish 'whitespace-cleanup-mode))
(eval-after-load "subword" '(diminish 'subword-mode))

(defmacro rename-modeline (package-name mode new-name)
  `(eval-after-load ,package-name
     '(defadvice ,mode (after rename-modeline activate)
        (setq mode-name ,new-name))))

(rename-modeline "js2-mode" js2-mode "JS2")

(set-face-bold-p 'bold nil)
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal :underline nil))
 (face-list))

(provide 'appearance)
