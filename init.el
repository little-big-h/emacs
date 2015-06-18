(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-mode-common-hook (quote (projectile-mode)))
 '(compilation-scroll-output (quote first-error))
 '(custom-safe-themes
	 (quote
		("5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "3dafeadb813a33031848dfebfa0928e37e7a3c18efefa10f3e9f48d1993598d3" default)))
 '(magit-use-overlays nil)
 '(package-archives (quote (("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(projectile-keymap-prefix "")
 '(standard-indent 2)
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 22 24 26 28 30)))
 '(tab-width 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(secondary-selection ((t (:background "blue")))))

  (setq magit-last-seen-setup-instructions "1.4.0")
(defun set-tab-width-to-2 ()
  "Set the tab width to 2"
  (setq tab-width 2))
(add-hook 'magit-mode-hook 'set-tab-width-to-2)

;; (global-unset-key (kbd "C-x C-x"))
(global-unset-key "")
(eval-after-load "cc-mode" '(define-key c-mode-base-map "" 'compile))

(define-key global-map [67108910] 'goto-next-locus)


(add-hook
 'after-init-hook
 (lambda nil (load-file "~/.emacs.d/after-init.el")))

