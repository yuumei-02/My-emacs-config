;; Functions
(defun reload-config() (interactive)
   (load-file user-init-file))

(defun insert-copyright-info()
   "Insert copyright"
   (interactive) (insert "// Copyright (c) 2026 <YOUR-NAME>. All Rights Reserved.\n// See the license file for more information."))

(defun kill-current-buffer() (interactive)
   (kill-buffer (current-buffer)))

(defun split-and-enter-window-below() (interactive)
   (split-window-below)
   (select-window (windmove-down)))

(defun split-and-enter-window-right() (interactive)
   (split-window-right)
   (select-window (windmove-right)))

(defun dedent() (interactive)
   (let* ((whitespace-count (count-whitespace-from-cursor))
          (before-count (car whitespace-count))
          (to-delete (min 3 before-count)))
   (delete-char (- to-delete))))

(defun count-whitespace-from-cursor ()
   (let* ((before-pos (progn (save-excursion (skip-chars-backward " \t") (point))))
         (after-pos (progn (save-excursion (skip-chars-forward " \t") (point))))
         (before-count (- (point) before-pos))
         (after-count (- after-pos (point))))
   (cons before-count after-count)))

;; Prefixes
(define-prefix-command 'leader-prefix)
(define-key evil-normal-state-map (kbd "SPC") 'leader-prefix)
(define-prefix-command 'plex-prefix)
(define-key evil-normal-state-map (kbd "C-a") 'plex-prefix)
(define-prefix-command 'visual-leader-prefix)
(define-key evil-visual-state-map (kbd "SPC") 'visual-leader-prefix)

;; Leader binds
(define-key 'leader-prefix (kbd "f f") 'find-file)
(define-key 'leader-prefix (kbd "f d") 'dired-jump)
(define-key 'leader-prefix (kbd "d k") 'describe-key)
(define-key 'leader-prefix (kbd "c c") 'compile)
(define-key 'leader-prefix (kbd "c i") 'insert-copyright-info)
(define-key 'leader-prefix (kbd "g s") 'magit-status)
(define-key 'leader-prefix (kbd "g c") 'magit-commit)
(define-key 'leader-prefix (kbd "g a") 'magit-stage-files)
(define-key 'leader-prefix (kbd "TAB") 'magit-section-toggle)
(define-key 'leader-prefix (kbd "b") 'ido-switch-buffer)
(define-key 'leader-prefix (kbd "x") 'execute-extended-command)
(define-key 'visual-leader-prefix (kbd "x") 'execute-extended-command)

;; Plex binds
(define-key 'plex-prefix (kbd "x") 'delete-window)
(define-key 'plex-prefix (kbd "k") 'kill-current-buffer)
(define-key 'plex-prefix (kbd "z") 'delete-other-windows)
(define-key 'plex-prefix (kbd "v") 'split-and-enter-window-below)
(define-key 'plex-prefix (kbd "b") 'split-and-enter-window-right)
(define-key 'plex-prefix (kbd "r") 'reload-config)
(define-key 'plex-prefix (kbd "f") 'ido-switch-buffer)

;; Normal-mode binds
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
(define-key evil-normal-state-map (kbd "M-<down>") 'drag-stuff-down)
(define-key evil-normal-state-map (kbd "M-<up>") 'drag-stuff-up)
(define-key evil-normal-state-map (kbd "C-s") 'save-buffer)
(define-key evil-normal-state-map (kbd ";") 'execute-extended-command)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-normal-state-map (kbd "C-d") 'evil-scroll-down)

;; Insert-mode binds
(define-key evil-insert-state-map (kbd "C-h") 'evil-backward-char)
(define-key evil-insert-state-map (kbd "C-j") 'evil-next-line)
(define-key evil-insert-state-map (kbd "C-k") 'evil-previous-line)
(define-key evil-insert-state-map (kbd "C-l") 'evil-forward-char)
(define-key evil-insert-state-map (kbd "C-v") 'yank)
(define-key evil-insert-state-map (kbd "TAB") (lambda () (interactive) (insert "   ")))
(define-key evil-insert-state-map [backtab] 'evil-shift-left-line)
(define-key evil-insert-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-insert-state-map (kbd "C-d") 'evil-scroll-down)

;; Visual-mode binds
(define-key evil-visual-state-map (kbd "C-j") 'drag-stuff-down)
(define-key evil-visual-state-map (kbd "C-k") 'drag-stuff-up)

;; Miscellaneous
(evil-ex-define-cmd "q[uit]" 'kill-current-buffer)

