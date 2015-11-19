(menu-bar-mode 1)
(set-scroll-bar-mode 'right)

;; Monday ftw
(set-variable 'calendar-week-start-day 1)

;; No graphics please o.O
(setq speedbar-use-images nil)

;; Set default new frame size
(add-hook 'before-make-frame-hook
          #'(lambda ()
              (add-to-list 'default-frame-alist '(left   . 0))
              (add-to-list 'default-frame-alist '(top    . 0))
              (add-to-list 'default-frame-alist '(height . 68))
              (add-to-list 'default-frame-alist '(width  . 110))
              (set-cursor-color "red")))

;; Don't follow links and use the actual symlinks
(setq vc-follow-symlinks nil)

;; Seed the random-number generator
(random t)

;; Keep region when undoing in region
(defadvice undo-tree-undo (around keep-region activate)
  (if (use-region-p)
      (let ((m (set-marker (make-marker) (mark)))
            (p (set-marker (make-marker) (point))))
        ad-do-it
        (goto-char p)
        (set-mark m)
        (set-marker p nil)
        (set-marker m nil))
    ad-do-it))

;; Whitespace-style
(setq whitespace-style '(trailing lines space-before-tab
                                  indentation space-after-tab)
      whitespace-line-column 100)

;; Add Urban Dictionary to webjump (C-x g)
(eval-after-load "webjump"
  '(add-to-list 'webjump-sites '("Urban Dictionary" .
                                 [simple-query
                                  "www.urbandictionary.com"
                                  "http://www.urbandictionary.com/define.php?term="
                                  ""])))

;; Fix whitespace on save, but only if the file was clean
(global-whitespace-cleanup-mode)

;; Use normal tabs in makefiles
(add-hook 'makefile-mode-hook 'indent-tabs-mode)

;; More neat bindings for C-x 8
(global-set-key (kbd "C-x 8 t m") (λ (insert "™")))
(global-set-key (kbd "C-x 8 ( c )") (λ (insert "©")))
(global-set-key (kbd "C-x 8 - >") (λ (insert "→")))
(global-set-key (kbd "C-x 8 8") (λ (insert "∞")))
(global-set-key (kbd "C-x 8 ( c )") (λ (insert "©")))
(global-set-key (kbd "C-x 8 v") (λ (insert "✓")))

;; Add JSP expansions to html-mode
(eval-after-load "sgml-mode" '(require 'jsp-expansions))

;; A bit of misc cargo culting in misc.el
(setq xterm-mouse-mode t)

;; Find aspell and hunspell automatically
(setq ispell-program-name "hunspell")
(setq ispell-local-dictionary "en_US")
(setq ispell-local-dictionary-alist
      '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil nil nil utf-8)))


;; Information to populate headers automatically
(setq user-mail-address "andres@steelcode.net")
(setq header-copyright-notice "
Permission to use, copy, modify, distribute, and sell this software and its
documentation for any purpose is hereby granted without fee, provided that
the above copyright notice appear in all copies and that both that
copyright notice and this permission notice appear in supporting
documentation.  No representations are made about the suitability of this
software for any purpose.  It is provided \"as is\" without express or
implied warranty.\n")


(setq header-copyright-work
      (concat "
This source code is licensed to the original client, and cannot be replicated,
used in other projects outside the original contract specifications, or
redistributed without prior written consent.\n \nCopyright (c) " (format-time-string "%Y") " SteelCode Consulting. All rights reserved.\n \nhttp://steelcode.net\n"))

(setq work-mode t)
(defun toggle-work-mode nil
  "Enables work copyright on files"
  (interactive)
  (if work-mode
      (setq work-mode nil)
    (setq work-mode t)))


(setq planetcyber-default-email user-mail-address)
(setq planetcyber-address "andres@planet-cyber.net")
(setq planetcyber-mode nil)
(defun planetcyber nil
  "Changes email to PlanetCyber address"
  (interactive)
  (if planetcyber-mode
      (progn
        (setq user-mail-address planetcyber-default-email)
        (setq planetcyber-mode nil))
    (progn
      (setq user-mail-address planetcyber-address)
      (setq planetcyber-mode t))))

(provide 'my-misc)
