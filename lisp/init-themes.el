(require-package 'color-theme-sanityinc-solarized)
(require-package 'color-theme-sanityinc-tomorrow)

;; If you don't customize it, this is the theme you get.
(setq-default custom-enabled-themes '(sanityinc-tomorrow-day))

;; Ensure that themes will be applied even if they have not been customized
(defun reapply-themes ()
  "Forcibly load the themes listed in `custom-enabled-themes'."
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      (load-theme theme)))
  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))

(add-hook 'after-init-hook 'reapply-themes)


;;------------------------------------------------------------------------------
;; Toggle between day and night
;;------------------------------------------------------------------------------
(defun day ()
  "Activate a light day theme."
  (interactive)
  (color-theme-sanityinc-tomorrow-day))

(defun night ()
  "Activate a dark eighties theme."
  (interactive)
  (color-theme-sanityinc-tomorrow-eighties))

(provide 'init-themes)
