;;HERE MY PRIVATE SETTINGS

;;auto-save and backup
(setq backup-by-copying t      ; don't clobber symlinks
      backup-directory-alist '(("." . "~/.emacs.d/backup/"))  ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)       ; use versioned backups
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/backup/" t)))

(require 'init-lilypond)
(require 'init-xmlformat)

(provide 'init-local)
