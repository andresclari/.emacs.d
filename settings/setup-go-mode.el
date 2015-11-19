(require 'go-mode-autoloads)

;; Auto-format with gofmt on save
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))


(defun my-go-mode-hook ()
  (setq gofmt-command "goimports")                  ; Use goimports instead of go-fmt
  (add-hook 'before-save-hook 'gofmt-before-save)   ; Call Gofmt before saving
  (if (not (string-match "go" compile-command))     ; Customize compile command to run go build
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  (local-set-key (kbd "M-*") 'godef-jump))          ; Godef jump key binding

(add-hook 'go-mode-hook 'my-go-mode-hook)


(provide 'setup-go-mode)
