;; Redirect Emacs's annoying vomit files
(make-directory "~/.config/emacs/saves/" t)
(setq backup-directory-alist '((".*" . "~/.config/emacs/saves/")))
(setq auto-save-file-name-transforms '((".*" "~/.config/emacs/saves/" t)))
(when (>= emacs-major-version 28)
   (setq lock-file-name-transforms '((".*" "~/.config/emacs/saves/" t))))   
