;; Elcord-mode
(require 'elcord)
(setq elcord-display-buffer-details nil)
(setq elcord-idle-timer nil)
(elcord-mode)

;; Ido-mode
(ido-mode 1)
(setq ido-auto-merge-work-directories-length -1)

;; Evil-mode
(require 'evil)
(evil-mode 1)
(require 'evil-commentary)
(evil-commentary-mode)
(evil-set-initial-state 'dired-mode 'normal)
(evil-set-initial-state 'compilation-mode 'normal)
(evil-set-initial-state 'help-mode 'normal)
(evil-set-initial-state 'Man-mode 'normal)

;; Diff-mode
(require 'diff-hl)
(global-diff-hl-mode)

;; Compilation-mode
(setq compile-command "")

;; C-mode
(add-to-list 'auto-mode-alist '("\\.ct\\'" . c-mode))
(add-hook 'c-mode-hook
   (lambda () (setq c-syntactic-indentation nil)))

(setq display-buffer-alist
   '(("\\*compilation\\*"
      (display-buffer-reuse-window display-buffer-in-direction)
      (direction . below)
      (window-height . 0.5)
      (dedicated . t)
      (reusable-frames . visible))))

