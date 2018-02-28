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

;;lsp-mode with php
(add-to-list 'load-path "~/.emacs.d/vendor/lsp-php")
(add-to-list 'load-path "~/.emacs.d/vendor/lsp-mode")
(add-to-list 'load-path "~/.emacs.d/vendor/lsp-ui")

(require 'lsp-mode)

(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(require 'lsp-php)
(add-hook 'php-mode-hook #'lsp-ui-mode)

(custom-set-variables
 '(lsp-php-language-server-command (quote ("php" "/Users/gertvanbeckevoort/php-language-server/vendor/bin/php-language-server.php")))
 )
;;end lsp-mode with php


(provide 'init-local)
;;;init-local ends here
