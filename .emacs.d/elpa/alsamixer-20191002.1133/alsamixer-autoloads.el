;;; alsamixer-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "alsamixer" "alsamixer.el" (0 0 0 0))
;;; Generated autoloads from alsamixer.el

(autoload 'alsamixer-set-volume "alsamixer" "\
Set volume to PERC.

\(fn PERC)" t nil)

(autoload 'alsamixer-up-volume "alsamixer" "\
Set volume, step size can be passed by PERC.

\(fn &optional PERC)" t nil)

(autoload 'alsamixer-down-volume "alsamixer" "\
Set volume, step size can be passed by PERC.

\(fn &optional PERC)" t nil)

(autoload 'alsamixer-toggle-mute "alsamixer" "\
Mute / unmute." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "alsamixer" '("alsamixer-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; alsamixer-autoloads.el ends here
