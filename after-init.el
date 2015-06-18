(require 'cask)
(cask-initialize)
(require 'helm)
(require 'helm-config)
(helm-mode 1)
(recentf-mode 1)
(require 'helm-projectile)

(define-key helm-find-files-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-find-files-map "" 'helm-execute-persistent-action)
(define-key helm-find-files-map "
" 'helm-find-files-up-one-level)

(define-key helm-read-file-map [tab] 'helm-execute-persistent-action)
(define-key helm-read-file-map "" 'helm-execute-persistent-action)
(define-key helm-read-file-map "
" 'helm-find-files-up-one-level)

(define-key global-map "b" 'helm-mini)
(define-key projectile-command-map (kbd "b") 'helm-projectile-switch-to-buffer)
(define-key projectile-command-map (kbd "g") 'helm-projectile-grep)
(define-key projectile-command-map (kbd "C-f") 'helm-projectile-find-file)
