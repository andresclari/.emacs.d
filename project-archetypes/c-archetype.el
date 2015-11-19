(require 'magit)

(defun create-c-project (project-name description global)
  (interactive "sProject name: \nsDescription: \nsGlobal namespace: ")
  (pa-with-new-project project-name "c-project"
    ((cons "__project-name__" project-name)
     (cons "__description__" description)
     (cons "__GLOBAL__" global))
    (magit-ignore-file ".rvmrc" nil t)
    (magit-ignore-file "todo.org" nil t)))

(pa-declare-project-archetype "c-project" 'c-project)

(provide 'c-project-archetype)
