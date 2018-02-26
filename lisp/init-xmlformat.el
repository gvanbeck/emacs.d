(defun format-xml ()
  "Excecutes shell with current buffer as input"
  (interactive)
  (shell-command-on-region
   (point-min)
   (point-max)
   "xmllint --format -"
   (current-buffer)
   t
   "*XMLFormat Error Buffer*"
   t))

(provide 'init-xmlformat)
