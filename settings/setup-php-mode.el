;; -*- Mode: Emacs-Lisp -*- 
;; Copyright © 2015 Andres Clari <andres@steelcode.net>
;; 
;; Filename: setup-php-mode.el
;; Description: PHP mode configuration.
;; Author: Andres Clari <andres@steelcode.net>
;; 
;; Permission to use, copy, modify, distribute, and sell this software and its
;; documentation for any purpose is hereby granted without fee, provided that
;; the above copyright notice appear in all copies and that both that
;; copyright notice and this permission notice appear in supporting
;; documentation.  No representations are made about the suitability of this
;; software for any purpose.  It is provided "as is" without express or
;; implied warranty.
;; 
;; Created: 08-Nov-2015
;; Version: 1.0

;; PHP
(autoload 'php-mode "php-mode")

(setq php-file-patterns nil)
(add-to-list 'auto-mode-alist '("[^.][^t][^p][^l]\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.tpl.php$" . html-mode))
(eval-after-load "php-mode"
  '(define-key php-mode-map (kbd "C-.") nil))

(provide 'setup-php-mode)

