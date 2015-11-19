;;; setup-headers.el --- Configure headers for source files  -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Andres Clari

;; Author: Andres Clari <andres@steelcode.net>
;; Keywords: convenience

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:


;; file, put this in your init file (~/.emacs):
;;(autoload 'auto-update-file-header "header2")
;;(add-hook 'write-file-hooks 'auto-update-file-header)

;; To have Emacs add a file header whenever you create a new file in
;; some mode, put this in your init file (~/.emacs):

(autoload 'auto-make-header "header2")
(add-hook 'emacs-lisp-mode-hook    'auto-make-header)
(add-hook 'c-mode-common-hook      'auto-make-header)
(add-hook 'ruby-mode-hook          'auto-make-header)
(add-hook 'coffee-mode-hook        'auto-make-header)
(add-hook 'js2-mode-hook           'auto-make-header)
(add-hook 'css-mode-hook           'auto-make-header)
(add-hook 'go-mode-hook            'auto-make-header)
(add-hook 'java-mode-hook          'auto-make-header)
(add-hook 'kotlin-mode-hook        'auto-make-header)
(add-hook 'perl-mode-hook          'auto-make-header)
(add-hook 'shell-script-mode-hook  'auto-make-header)
(add-hook 'python-mode-hook        'auto-make-header)

(provide 'setup-headers)
;;; setup-headers.el ends here

