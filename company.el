(use-package company
  :bind (:map company-active-map
	      ("C-n" . 'company-select-next)
	      ("C-p" . 'company-select-previous))
  :init
  (global-company-mode t)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0))


(global-set-key (kbd "<tab>") #'company-indent-or-complete-common)
(add-hook 'after-init-hook 'global-company-mode)

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))
