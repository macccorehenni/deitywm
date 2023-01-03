;;; kdeconnect-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "kdeconnect" "kdeconnect.el" (0 0 0 0))
;;; Generated autoloads from kdeconnect.el

(autoload 'kdeconnect-get-active-device "kdeconnect" "\
Display the ID of the active device." t nil)

(autoload 'kdeconnect-list-devices "kdeconnect" "\
Display all visible devices, even unavailable ones." t nil)

(autoload 'kdeconnect-ping "kdeconnect" "\
Ping the active device." t nil)

(autoload 'kdeconnect-ping-msg "kdeconnect" "\
Ping the active device with MESSAGE.

\(fn MESSAGE)" t nil)

(autoload 'kdeconnect-refresh "kdeconnect" "\
Refresh connections." t nil)

(autoload 'kdeconnect-ring "kdeconnect" "\
Ring the active device." t nil)

(autoload 'kdeconnect-send-file "kdeconnect" "\
Send the file at PATH to the active device.

\(fn PATH)" t nil)

(autoload 'kdeconnect-send-text "kdeconnect" "\
Send TEXT to the active device.

\(fn TEXT)" t nil)

(autoload 'kdeconnect-send-text-region-or-prompt "kdeconnect" "\
Send text to the active device interactively.
If the REGION is active send that text, otherwise prompt for what to send" t nil)

(autoload 'kdeconnect-select-active-device "kdeconnect" "\
Set the active device to NAME.

\(fn NAME)" t nil)

(autoload 'kdeconnect-send-sms "kdeconnect" "\


\(fn MESSAGE DESTINATION)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "kdeconnect" '("kdeconnect-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; kdeconnect-autoloads.el ends here
