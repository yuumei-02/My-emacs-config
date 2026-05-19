(load "~/.config/emacs/package.el")
(setq inhibit-startup-message t)
(setq inhibit-startup-screen t)

(load-file "~/.config/emacs/io.el")
(load-file "~/.config/emacs/ui.el")
(load-file "~/.config/emacs/text-stuff.el")
(load-file "~/.config/emacs/modes-and-packages.el")
(load-file "~/.config/emacs/keybindings.el")
(load-file "~/.config/emacs/fumi-mode.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
     '("01a9797244146bbae39b18ef37e6f2ca5bebded90d9fe3a2f342a9e863aaa4fd"
         default))
 '(package-selected-packages
     '(dashboard diff-hl dired-subtree drag-stuff elcord evil-commentary
         gruber-darker-theme gruvbox-theme kanagawa-themes ligature
         naysayer-theme org-superstar phoenix-dark-mono-theme php-mode
         sexy-monochrome-theme tokyonight-themes))
 '(package-vc-selected-packages
     '((tokyonight-themes :url
          "https://github.com/xuchengpeng/tokyonight-themes"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#080808")))))
