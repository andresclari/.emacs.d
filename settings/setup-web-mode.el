;; -*- Mode: Emacs-Lisp -*- 
;; Copyright © 2015 Andres Clari <andres@steelcode.net>
;; 
;; Filename: setup-web-mode.el
;; Description: 
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
;; Created: 15-Nov-2015
;; Version: 
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;; Commentary: 
;; 
;; 
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(eval-after-load "web-mode"
  '(set-face-background 'web-mode-current-element-highlight-face "blue"))

(provide 'setup-web-mode)
