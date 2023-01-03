;;; battery-notifier-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "battery-notifier" "battery-notifier.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from battery-notifier.el

(defvar battery-notifier-mode nil "\
Non-nil if Battery-Notifier mode is enabled.
See the `battery-notifier-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `battery-notifier-mode'.")

(custom-autoload 'battery-notifier-mode "battery-notifier" nil)

(autoload 'battery-notifier-mode "battery-notifier" "\
Toggle use of `battery-notifier-mode'.
This global minor mode sends notifications when battery capacity is low
and runs action hooks when battery capacity is critically low.

If called interactively, enable Battery-Notifier mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "battery-notifier" '("battery-notifier-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; battery-notifier-autoloads.el ends here
