;;; init-projectile.el --- Use Projectile for navigation within projects -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'projectile)
  (add-hook 'after-init-hook 'projectile-mode)

  ;; Shorter modeline
  (setq-default projectile-mode-line-prefix " Proj")

  (after-load 'projectile
    (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

  (maybe-require-package 'ibuffer-projectile))


(require-package 'eyebrowse)

(setq eyebrowse-mode-line-separator " "
      eyebrowse-new-workspace t)

(eyebrowse-mode t)


(provide 'init-projectile)
;;; init-projectile.el ends here
