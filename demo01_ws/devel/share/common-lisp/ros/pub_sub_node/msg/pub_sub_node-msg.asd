
(cl:in-package :asdf)

(defsystem "pub_sub_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "My_person" :depends-on ("_package_My_person"))
    (:file "_package_My_person" :depends-on ("_package"))
    (:file "Person" :depends-on ("_package_Person"))
    (:file "_package_Person" :depends-on ("_package"))
  ))