(use-package rustic
  :ensure t
  :config
  (defun rustic-mode-auto-save-hook ()
  "Enable auto-saving in rustic-mode buffers."
  (when buffer-file-name
    (setq-local compilation-ask-about-save nil)))
    (add-hook 'rustic-mode-hook 'rustic-mode-auto-save-hook)
    (setq rustic-lsp-server 'rust-analyzer)
  )


(use-package rust-mode
  :ensure t
  :config
  (require 'rust-mode)
  (add-hook 'rust-mode-hook
            (lambda () (setq indent-tabs-mode nil)))
  (define-key rust-mode-map (kbd "C-c C-c") 'rust-run)
  (define-key rust-mode-map (kbd "C-c C-p") 'rust-test)
  (add-hook 'rust-mode-hook #'lsp)
  (setq rust-format-on-save t))
