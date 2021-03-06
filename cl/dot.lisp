(defpackage :gtirb/dot
  (:use :common-lisp :alexandria :graph :graph/dot :gtirb
        :command-line-arguments
        :named-readtables :curry-compose-reader-macros)
  (:import-from :uiop :nest)
  (:import-from :uiop/image :quit)
  (:shadowing-import-from :proto-v0 :ir)
  (:shadowing-import-from :gtirb :symbol)
  (:export :to-dot :to-dot-file))
(in-package :gtirb/dot)
(in-readtable :curry-compose-reader-macros)

(defun dot-edge-label (graph edge)
  (let ((obj (edge-value graph edge)))
    (format nil "\"~a[~:[U~;C~]:~:[I~;D~]]\""
            (edge-type obj) (conditional obj) (direct obj))))

(defmethod to-dot ((obj gtirb) &rest rest)
  "Write the CFG of MODULE to the Graphviz graphing language."
  (apply #'to-dot (cfg obj)
         :edge-attrs (list (cons :label {dot-edge-label (cfg obj)}))
         rest))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defparameter +udpate-args+
    '((("help" #\h #\?) :type boolean :optional t
       :documentation "display help output"))))

;;; NOTE: When Quicklisp updates graph to the latest this can be removed.
(defmethod to-dot-file
    ((object t) path &key attributes node-attrs edge-attrs
                       subgraphs ranks)
  (with-open-file (out path :direction :output :if-exists :supersede)
    (to-dot object :stream out :attributes attributes :node-attrs node-attrs
            :edge-attrs edge-attrs :subgraphs subgraphs :ranks ranks)))

(define-command dot (gtirb-file dot-file &spec +udpate-args+)
  "Write first GTIRB module in GTIRB-FILE to DOT-FILE." ""
  (when help (show-help-for-dot) (quit))
  (to-dot-file (read-gtirb gtirb-file) dot-file))
