(defun my-isearch-forward-word-at-point ()
  "Search for word at point."
  (interactive)
  (let ((word (thing-at-point 'word t))
        (bounds (bounds-of-thing-at-point 'word)))
    (if word
        (progn
          (isearch-mode t nil nil nil t)
          (when (< (car bounds) (point))
            (goto-char (car bounds)))
          (isearch-yank-string word))
      (user-error "No word at point"))))

(defun my-isearch-forward-symbol-at-point ()
  "Search for symbol at point."
  (interactive)
  (let ((symbol (thing-at-point 'symbol t))
        (bounds (bounds-of-thing-at-point 'symbol)))
    (if symbol
        (progn
          (isearch-mode t nil nil nil 'isearch-symbol-regexp)
          (when (< (car bounds) (point))
            (goto-char (car bounds)))
          (isearch-yank-string symbol))
      (user-error "No symbol at point"))))

(global-set-key (kbd "M-s ,") 'my-isearch-forward-word-at-point)
(global-set-key (kbd "M-s .") 'my-isearch-forward-symbol-at-point)
