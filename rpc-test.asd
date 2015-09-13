(in-package :cl-user)
(defpackage realispic-demo-rpc-test-asd
  (:use :cl :asdf))
(in-package :realispic-demo-rpc-test-asd)

(defsystem rpc-test
  :version "0.1.0"
  :author "BreakDS <breakds@gmail.com>"
  :license "MIT"
  :depends-on (:realispic)
  :components ((:module "rpc-test" :components
                        ((:file "app"))))
  :description "A simple webapp demo with one functional button.")
