(in-package #:plaster)

(define-page edit "plaster/edit" (:clip "edit.ctml")
  (r-clip:process T))

(define-page view "plaster/view/(.*)" (:uri-groups (id) :clip "view.ctml")
  (let* ((id (db:ensure-id id))
         (paste (first (db:select 'plaster-pastes (db:query (:= '_id id)) :amount 1))))
    (unless paste
      (error 'request-not-found :message (format NIL "No paste with ID ~a was found." id)))
    (r-clip:process
     T
     :title (gethash "title" paste)
     :time (gethash "time" paste)
     :text (gethash "text" paste))))
