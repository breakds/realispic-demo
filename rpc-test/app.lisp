(in-package :cl-user)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package :realispic-demo.rpc-test)
    (defpackage realispic-demo.rpc-test
      (:nicknames :rpc-test)
      (:use :cl :parenscript)
      (:import-from :realispic
                    :def-app
                    :def-widget
                    :def-service
                    :import-widget
                    :with-rpc
                    :rpc-result
                    :rpc-error)
      (:import-from :realispic.candy
                    :trace)
      (:export :rpc-test))))
(in-package :realispic-demo.rpc-test)

(def-service adder-simple (a b)
  (list :result (+ (parse-integer a)
                   (parse-integer b))))

(def-widget rpc-button ()
  (:button ((on-click (lambda ()
                        (with-rpc ("adder-simple" :a 12 :b 18)
                          (if rpc-error
                              (trace rpc-error)
                              (trace rpc-result))))))
           "click me!"))

(def-app rpc-test ()
  :title "RPC Test"
  :port 5000
  :system :rpc-test
  :widget (:rpc-button ()))

                      

  
  



               
        
      
      
    
