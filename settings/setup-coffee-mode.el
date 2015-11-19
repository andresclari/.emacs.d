;;; setup-coffee-mode.el --- Configuration for CoffeMode
;;; Copyright (C) 2015 Andres Clari <andres@steelcode.net>

;; Author: Andres Clari <andres@steelcode.net>
;; Created: 05-Nov-2015
;; Version: 1.0 (05-Nov-2015)
;; Keywords: coffescript, coffeemode, configuration


;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))

;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))

;; This gives you a tab of 2 spaces
(custom-set-variables '(coffee-tab-width 2))

(provide 'setup-coffee-mode)
;;; setup-coffee-mode.el ends here
