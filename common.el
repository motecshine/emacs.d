
(setq package-archives '(("gnu"   . "http://1.15.88.122/gnu/")
                           ("melpa" . "http://1.15.88.122/melpa/")))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))


(package-install 'use-package)

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
;(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 更改光标的样式（不能生效，解决方案见第二集）
(setq cursor-type 'bar)

(icomplete-mode 1)


;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)


;; search
(use-package consult :ensure t)
;;replace swiper
(global-set-key (kbd "C-s") 'consult-line)
;;consult-imenu


(setq-default cursor-type 'bar)
(show-paren-mode t)

(use-package simple
  :ensure nil
  :hook (after-init . size-indication-mode)
  :init
  (progn
    (setq column-number-mode t)
    ))


(global-hl-line-mode 1)

;;modeline上显示我的所有的按键和执行的命令
(use-package keycast :ensure t)
(add-to-list 'global-mode-string '("" keycast-mode-line))
(keycast-mode t)

;; 这里的执行顺序非常重要，doom-modeline-mode 的激活时机一定要在设置global-mode-string 之后‘
(use-package doom-modeline
  :ensure t

  :init
  (doom-modeline-mode t))


(global-auto-revert-mode 1)

(setq auto-save-default nil)

