;; Initialize cask to get the correct version of org-mode
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Load customization
;; Keep emacs custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load-file custom-file)

(if (file-exists-p my-init-file)
    (load-file my-init-file)
  (progn
    (org-babel-load-file
     (expand-file-name "emacs-init.org" user-emacs-directory))))