(load "~/.config/emacs/package.el")
(setq inhibit-startup-message t)
(setq inhibit-startup-screen t)

(load-file "~/.config/emacs/io.el")
(load-file "~/.config/emacs/ui.el")
(load-file "~/.config/emacs/text-stuff.el")
(load-file "~/.config/emacs/modes-and-packages.el")
(load-file "~/.config/emacs/keybindings.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
     '(dashboard diff-hl dired-subtree drag-stuff elcord evil-commentary
         gruber-darker-theme gruvbox-theme kanagawa-themes ligature
         magit org-bullets org-superstar php-mode tokyonight-themes))
 '(package-vc-selected-packages
     '((tokyonight-themes :url
          "https://github.com/xuchengpeng/tokyonight-themes"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
