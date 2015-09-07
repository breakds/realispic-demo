(in-package :cl-user)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package :realispic-demo.lucky-color)
    (defpackage realispic-demo.lucky-color
      (:nicknames :lucky-color)
      (:use :cl)
      (:import-from :realispic
                    :def-app
                    :def-widget
                    :import-widget)
      (:export :lucky-color))))
(in-package :realispic-demo.lucky-color)

(def-widget color-card-content ((color :attribute))
  (:div ((class "mdl-card__title" "mdl-card--expand")
         (style :background-color color))
        (:h2 ((class "mdl-card__title-text"))
             (+ "Hello, " color))))

(def-widget color-card ((color :state "White"))
  (labels ((set-random-color ()
             (let* ((colors (array "Red" "Orange" "Yellow" "Lime"
                                   "Cyan" "LightBlue" "Plum" "White"))
                    (index (funcall (@ *math floor) 
                                    (* (funcall (@ *math random))
                                       (@ colors length)))))
               (update-state color (aref colors index)))))
    (:div ((class "mdl-card" "mdl-shadow--2dp"))
          (:color-card-content ((color (:state color))))
          (:div ((class "mdl-card__actions" "mdl-card--border"))
                (:a ((class "mdl-button" "mdl-button--colored"
                            "mdl-js-button" "mdl-js-ripple-effect")
                     (on-click (@ this set-random-color)))
                    "I am feeling lucky.")))))

(def-app lucky-color ()
  :title "Lucky Color"
  :port 9989
  :widget (:color-card ())
  :includes ("https://storage.googleapis.com/code.getmdl.io/1.0.4/material.indigo-pink.min.css"
             "https://storage.googleapis.com/code.getmdl.io/1.0.4/material.min.js"
             "https://fonts.googleapis.com/icon?family=Material+Icons"))
                      

  
  



               
        
      
      
    
