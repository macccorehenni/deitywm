;;; alert-toast-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "alert-toast" "alert-toast.el" (0 0 0 0))
;;; Generated autoloads from alert-toast.el

(autoload 'alert-toast-notify "alert-toast" "\
Send INFO using Windows 10 toast notification.
Handles :ICON, :SEVERITY, :PERSISTENT, :NEVER-PERSIST, :TITLE and
:MESSAGE keywords from INFO plist.

\(fn INFO)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "alert-toast" '("alert-toast-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; alert-toast-autoloads.el ends here
