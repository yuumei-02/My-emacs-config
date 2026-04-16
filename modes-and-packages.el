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

;; Magit-mode
(with-eval-after-load 'magit
   (evil-set-initial-state 'magit-status-mode 'normal))

;; Org-mode
(require 'org)
(with-eval-after-load 'org
   (setq org-hide-emphasis-markers t)
   (setq org-hide-leading-stars t)
   (font-lock-add-keywords 'org-mode
      '(("^ *\\([-]\\) "
         (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•")))))))

;; Diff-mode
(require 'diff-hl)
(global-diff-hl-mode)

;; Compilation-mode
(setq compile-command "")
(add-hook 'c-mode-hook
   (lambda () (setq c-syntactic-indentation nil)))

