;;; early-init.el -*- lexical-binding: t; -*-

;; Disable the built-in package manager because Elpaca is used instead
(setq package-enable-at-startup nil)

(setq c/monospace-font "JetBrains Mono NL"
      c/monospace-font-size 15)

;; Configure default frame settings before the first frame is shown
(setq default-frame-alist
      (append
       (list
        `(font . ,(concat c/monospace-font "-" (number-to-string c/monospace-font-size)))
        '(internal-border-width . 0)
        '(undecorated-round . t)
        '(left-fringe . 16)
        '(right-fringe . 16))
       default-frame-alist))

;; Prevent the frame from being resized when font size is changed
(setq frame-inhibit-implied-resize t)

;; Configure tool bar
(tool-bar-mode -1)
(tab-bar-mode 1)
