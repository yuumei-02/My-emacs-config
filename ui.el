;; UI items
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(setq mode-line-format (list
   "%m: "
   "buffer %b, "
   "line %l "
   "-- user: "
   (getenv "user")))
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(setq split-width-threshold nil)
(setq column-number-mode t)
(setq size-indication-mode t)
(pixel-scroll-precision-mode 1)
(setq scroll-conservatively 101)

;; Dashboard
(require 'dashboard)
(with-eval-after-load 'dashboard
   (setq dashboard-banner-logo-title "Zhyivannye, <YOUR-NAME>. Donska o?")
   (setq dashboard-startup-banner "~/Wallpapers/pfp.jpg")
   (setq dashboard-image-banner-max-width 200)
   (setq dashboard-image-banner-max-height 200)
   (setq dashboard-center-content t)
   (setq dashboard-vertically-center-content t)
   (dashboard-setup-startup-hook))

;; Color theme
(add-to-list 'default-frame-alist '(alpha-background . 75))
(custom-set-faces
   '(default ((t (:background "#080808")))))
(load-theme 'gruber-darker :no-confirm)

;; Font
(set-frame-font "jetbrainsmono" nil t)
(set-face-attribute 'default nil :height 110)

