;;; ntfy.el --- ntfy frontend
;; Copyright 2022 Mac Henni <mmnf.mac.josh@gmail.com>
;; Version: 0.1
;; Attempt:
;;; 0.1: Print all vars.


;ntfy.el starts here

;;; Commentary:
;; This provides a ntfy frontend via https. See ntfy.sh for useage. 
;;; Code:

(defun ntfy-send
  (topic &optional message title tags priority click delay email)
  "Send a notification via ntfy. Doesn't support actions."
  (interactive)
  (message
   (format "Topic: %s. Message: %s Title: %s Tags: %s Priority: %d Click: %s Delay: %s Email %s" topic message title tags priority click delay)))

;;; ntfy.el ends here
