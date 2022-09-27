(setq package-archives '(("gnu"   . "http://1.15.88.122/gnu/")
                         ("melpa" . "http://1.15.88.122/melpa/")))
(package-initialize)

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))
(defun load-user-file (file)
  (interactive "f")
 "Load a file in current user's configuration directory"
 (load-file (expand-file-name file user-init-dir)))

(load-user-file "common.el")
(load-user-file "company.el")
(load-user-file "themes.el")
(load-user-file "lsp.el")
(load-user-file "rust.el")
(load-user-file "debug.el")
(load-user-file "golang.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(awesome-tab simple consult keycast neotree zenburn-theme rustic tree-sitter-langs lsp-mode which-key use-package tree-sitter rust-mode dap-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
