(in-package :cl-user)
(defpackage realispic-demo-lucky-color-asd
  (:use :cl :asdf))
(in-package :realispic-demo-lucky-color-asd)

(defsystem lucky-color
  :version "0.1.0"
  :author "BreakDS <breakds@gmail.com>"
  :license "MIT"
  :depends-on (:realispic)
  :components ((:module "lucky-color" :components
                        ((:file "app"))))
  :description "A simple webapp demo with one functional button.")
               

