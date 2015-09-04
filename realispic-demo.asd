(in-package :cl-user)
(defpackage realispic-demo-asd
  (:use :cl :asdf))
(in-package :realispic-demo-asd)

(defsystem realispic-demo
  :version "0.1.0"
  :author "BreakDS <breakds@gmail.com>"
  :license "MIT"
  :depends-on (:realispic)
  :components ((:file "realispic-demo"))
  :description "This is a psuedo project to register demos for realispic.")


               

