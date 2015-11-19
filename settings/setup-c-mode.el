;; Configuration for C and C++ syntax

(setq c-basic-offset 4)
(setq tab-width 4)

(add-hook 'c-mode-hook
          (lambda ()
            (setq-default c-basic-offset 4)
            (setq-default tab-width 4)
            (setq indent-tabs-mode nil)))

(provide 'setup-c-mode)
