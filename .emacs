;;;.emacs --- master set of program confs
;;;Author: Mac Henni
;;;Version 1.0 (GitHub)

;;;Required packages for this setup:
;;olivetti— a focus tool
;;exwm, exwm-xm, exwm-modeline— a WM for emacs
;;these should be installed from MELPA 
;;;Customize— but I changed it from within emacs!
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(confirm-kill-emacs 'y-or-n-p)
 '(cua-enable-cua-keys t)
 '(custom-safe-themes
   '("05626f77b0c8c197c7e4a31d9783c4ec6e351d9624aa28bc15e7f6d6a6ebd926" default))
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-default-load-average nil)
 '(display-time-format nil)
 '(display-time-mode t)
 '(emacs-lock-default-locking-mode 'kill)
 '(exwm-input-global-keys
   '(([8388727 8388705 82]
      . exwm-reset)
     ([8388727 8388719]
      lambda
      (command)
      (interactive
       (list
	(read-shell-command "$ ")))
      (start-process-shell-command command nil command))
     ([8388727 8388705 108]
      lambda nil
      (interactive)
      (restart-emacs))
     ([8388727 8388710]
      lambda nil
      (interactive)
      (exwm-layout-hide-mode-line))
     ([8388727 8388705 115]
      lambda nil
      (interactive)
      (kill-emacs))))
 '(exwm-input-line-mode-passthrough nil)
 '(exwm-input-move-event [8388727 8388727 109])
 '(exwm-input-prefix-keys
   '("" "" ""
     [134217848]
     [134217824]
     [134217766]
     [134217786]
     ""
     [8388727]))
 '(exwm-input-resize-event [8388727 8388727 114])
 '(exwm-replace t)
 '(flyspell-after-incorrect-word-string "!")
 '(global-reveal-mode t)
 '(inhibit-startup-echo-area-message "mac")
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-major-mode 'text-mode)
 '(initial-scratch-message "HELLO
WELCOME TO EMACS
>")
 '(mode-line-in-non-selected-windows t)
 '(olivetti-lighter " cent")
 '(olivetti-style t)
 '(package-selected-packages
   '(dashboard-ls chronos mmm-mode ranger ac-helm ## ntfy elisp-lint request cheatsheet dashboard org-present smart-cursor-color alert-toast helm-dictionary alert sokoban alsamixer helm helm-chrome-control helm-chrome kdeconnect emojify simple-modeline flyspell-popup undo-fu achievements exwm-modeline battery-notifier exwm-x encourage-mode eimp bart-mode disable-mouse dictionary dad-joke emoji-recall olivetti markdown-mode hello_world flyspell-correct exwm))
 '(quote
   (package-selected-packages
    '(hello_world flyspell-correct olivetti markdown-mode dracula-theme exwm)))
 '(tab-bar-mode t)
 '(tab-bar-new-button-show nil)
 '(tab-bar-select-tab-modifiers '(meta))
 '(tab-bar-show t)
 '(tab-bar-tab-hints t)
 '(tab-bar-tab-name-function 'tab-bar-tab-name-current-with-count)
 '(tool-bar-mode nil)
 '(visible-bell t)
 '(word-wrap t))
;;;Faces— beutiful
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "snow3" :foreground "gray46" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :family "Ubuntu Mono"))))
 '(bold ((t (:inverse-video t :weight normal))))
 '(error ((t (:extend t :foreground "Red1" :underline (:color "orange red" :style wave) :weight ultra-bold))))
 '(fringe ((t (:background "gray36"))))
 '(glyphless-char ((t (:slant italic :height 0.6))))
 '(highlight ((t (:background "green" :foreground "white" :box (:line-width 2 :color "white" :style released-button)))))
 '(link ((t (:foreground "lime green"))))
 '(match ((t (:background "yellow1" :box 2))))
 '(menu ((t (:background "pale goldenrod" :foreground "olive drab"))))
 '(minibuffer-prompt ((t (:weight bold))))
 '(mode-line ((t (:background "MistyRose2" :weight normal))))
 '(mode-line-buffer-id ((t nil)))
 '(mode-line-emphasis ((t nil)))
 '(scroll-bar ((t (:distant-foreground "gray18"))))
 '(shadow ((t (:foreground "gray37"))))
 '(success ((t (:background "white smoke" :foreground "ForestGreen" :weight bold))))
 '(tab-bar ((t (:background "grey85" :foreground "black" :box (:line-width 2 :color "gray65" :style released-button)))))
 '(tab-line ((t nil)))
 '(tool-bar ((t (:background "cadet blue" :foreground "black" :box (:line-width 1 :style released-button)))))
 '(tooltip ((t (:inherit variable-pitch :background "gray65" :foreground "white smoke"))))
 '(vertical-border ((((type x) (min-colors 1) (background dark)) (:inherit mode-line-inactive))))
 '(warning ((t (:foreground "tomato" :weight bold))))
 '(window-divider ((t (:foreground "khaki")))))
;; MELPA— more packages for you!
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; More theming— begone, window fringe (this is probaly needless with exwm)
(set-frame-parameter nil 'undecorated t)
(menu-bar-mode nil)
;; exwm settings
(require 'exwm)
(require 'exwm-config)
(exwm-config-example)
;;helm rules; must make final
(global-set-key (kbd "M-x") 'helm-M-x)
;;change my color
(smart-cursor-color-mode 1)
;; cheatsheet
(cheatsheet-add-group "deityos-specific commands"
		      '(:key "S-w S-a R" :description "reload deitywm")
		      '(:key "S-w S-o" :description "Run shell command")
		      '(:key "S-w S-a l" :description "Log out")
		      '(:key "S-w S-f" :description "Hide modeline while using x-apps")
		      '(:key "S-w S-a s" :description "Shutdown"))
			
;;ac-helm
;;(global-set-key (kbd "S-A h") 'ac-complete-with-helm)
;;(define-key ac-complete-mode-map (kbd "S-A h") 'ac-complete-with-helm)
;;and thus they spoke
;;.emacs ends here
(put 'list-timers 'disabled nil)
