;;; package --- Summary

;;; Commentary:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MELPA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)

;;; Code:
(setq package-archives
      '(("melpa-stable" . "https://stable.melpa.org/packages/")
	("melpa" . "http://melpa.milkbox.net/packages/")
	("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(require 'use-package)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                APPEARANCE                ;;       
::::::::::::::::::::::::::::::::::::::::::::::

;; THEME
(use-package spacemacs-dark-theme
  :config
  (load-theme 'spacemacs-dark t))
(setq inhibit-splash-screen t)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages
   (quote
    (flycheck-ocaml use-package flycheck auto-complete spacemacs-theme tuareg))))



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line$



;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;    FLYCHECK           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; (use-package flycheck
;;   :ensure t
;;   :commands flycheck-mode
;;   :init (global-flycheck-mode)
;;   :config
;;   )

(add-hook 'after-init-hook #'global-flycheck-mode)


(defvar merlin-use-auto-complete-mode t)
(global-set-key (kbd "C-SPC") 'auto-complete)
;;(load-theme 'spacemacs-dark t)
(with-eval-after-load 'merlin
  ;; Disable Merlin's own error checking
  (setq merlin-error-after-save nil)

  ;; Enable Flycheck checker
  (flycheck-ocaml-setup))

(add-hook 'tuareg-mode-hook #'merlin-mode)

(setq-default cursor-type 'bar )
(global-linum-mode t)
 (show-paren-mode 1)
(defvar show-paren-delay 0)

(provide'init.el)
;;; init.el ends here
