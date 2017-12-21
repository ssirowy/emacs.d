(require-package 'kubernetes)

;;; Some keybindings for basic commands.
(global-set-key (kbd "C-c k o") 'kubernetes-overview)
(global-set-key (kbd "C-c k c") 'kubernetes-use-context)
(global-set-key (kbd "C-c k n") 'kubernetes-set-namespace)


(provide 'init-kubernetes)
