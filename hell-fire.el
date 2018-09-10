;;; hell-fire.el --- remove all the files without any confirmation

;;; Commentary:
;; Add the following to your Emacs init file:
;;
;; (require 'hell-fire)
;;
;; YOU SHOULD NOT EXECUTE THIS FUNCTION

;;; Code:

(defun hell-fire(target-dir)
  (interactive "D")
  (let ((filenames (directory-files target-dir nil "^\\([^.]\\|\\.[^.]\\|\\.\\..\\)")))
    (dolist (n filenames)
      (if (and (file-exists-p (concat target-dir "/" n)) (not (file-directory-p n)))
	  (delete-file (concat target-dir n))))))

(provide 'hell-fire)

;;; hell-fire.el ends here
