(in-package #:plaster)

(define-trigger db:connected ()
  (db:create 'plaster-pastes '((title (:varchar 32))
                               (time (:integer 5))
                               (text :text))))
