(in-package :cl-user)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package :realispic-demo.lucky-color)
    (defpackage realispic-demo.lucky-color
      (:nicknames :lucky-color)
      (:use :cl)
      (:import-from :realispic
                    :def-widget-1)
      (:export :colored-card))))
(in-package :realispic-demo.lucky-color)

(def-widget-1 colored-card ((color :attribute))
  (:div ((class "demo-card-square" "mdl-card" "mdl-shadow--2dp"))
        (:div ((class "mdl-card__title" "mdl-card--expand"))
              (:h2 ((class "mdl-card__title-text"))
                   "Color"))
        (:div ((class "mdl-card__supporting-text"))
              "Click to change color.")
        (:div ((class "mdl-card__actions" "mdl-card--border"))
              (:a ((class "mdl-button" "mdl-button--colored"
                          "mdl-js-button" "mdl-js-ripple-effect"))
                  "I am feeling lucky."))))
               
        
      
      
    
