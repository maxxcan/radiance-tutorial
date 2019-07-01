(in-package #:cl-user)
(asdf:defsystem #:plaster
  :version "0.0.1"
  :defsystem-depends-on (:radiance)
  :class "radiance:virtual-module"
  :components ((:file "module")
               (:file "frontend"))
  :depends-on ((:interface :database)
               :r-clip))
