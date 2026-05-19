(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'evil)
   (package-install 'evil))

(unless (package-installed-p 'evil-commentary)
   (package-install 'evil-commentary))

(unless (package-installed-p 'drag-stuff)
   (package-install 'drag-stuff))

(unless (package-installed-p 'dashboard)
   (package-install 'dashboard))

(unless (package-installed-p 'diff-hl)
   (package-install 'diff-hl))

(unless (package-installed-p 'elcord)
  (package-install 'elcord))

(unless (package-installed-p 'ligature)
   (package-install 'ligature))

(use-package tokyonight-themes
   :vc (:url "https://github.com/xuchengpeng/tokyonight-themes")
   :config)

(use-package ligature
   :config
   (ligature-set-ligatures 'prog-mode '("=>" "->" "!=" ">=" "/=" "==" "<="))
   (global-ligature-mode t))

