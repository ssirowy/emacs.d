(require-package 'web-mode)

;; Associate hbs files with web-mode
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))

(provide 'init-web-mode)
