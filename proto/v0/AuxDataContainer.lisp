
;;;;    AuxDataContainer.lisp

;;; Generated by the protocol buffer compiler.  DO NOT EDIT!


(cl:in-package #:common-lisp-user)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package '#:proto-v0)
    (make-package '#:proto-v0 :use nil)))
(in-package #:proto-v0)
(cl:declaim #.com.google.base:*optimize-default*)

(cl:defclass aux-data-container-aux-data-entry (pb:protocol-buffer)
  (
  (key
   :accessor key
   :initform (pb:string-field "")
   :type pb::%sf%)
  (value
   :writer (cl:setf value)
   :initform cl:nil
   :type (cl:or cl:null proto-v0::aux-data))
  (%has-bits%
   :accessor %has-bits%
   :initform 0
   :type (cl:unsigned-byte 2))
  (pb::%cached-size%
   :initform 0
   :type (cl:integer 0 #.(cl:1- cl:array-dimension-limit)))
  ))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'aux-data-container-aux-data-entry))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'key))


(cl:defmethod (cl:setf key) :after (x (self aux-data-container-aux-data-entry))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-key)
  (cl:defgeneric has-key (proto)))
(cl:defmethod has-key ((self aux-data-container-aux-data-entry))
  (cl:logbitp 0 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-key))

(cl:unless (cl:fboundp 'clear-key)
  (cl:defgeneric clear-key (proto)))
(cl:defmethod clear-key ((self aux-data-container-aux-data-entry))
  (cl:setf (cl:slot-value self 'key) (pb:string-field ""))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-key))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'value))

(cl:unless (cl:fboundp 'value)
  (cl:defgeneric value (proto)))
(cl:defmethod value ((self aux-data-container-aux-data-entry))
  (cl:let ((result (cl:slot-value self 'value)))
    (cl:when (cl:null result)
      (cl:setf result (cl:make-instance 'proto-v0::aux-data))
      (cl:setf (cl:slot-value self 'value) result))
      (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1)
    result))

(cl:defmethod (cl:setf value) :after (x (self aux-data-container-aux-data-entry))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-value)
  (cl:defgeneric has-value (proto)))
(cl:defmethod has-value ((self aux-data-container-aux-data-entry))
  (cl:logbitp 1 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-value))

(cl:unless (cl:fboundp 'clear-value)
  (cl:defgeneric clear-value (proto)))
(cl:defmethod clear-value ((self aux-data-container-aux-data-entry))
  (cl:setf (cl:slot-value self 'value) cl:nil)
  (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-value))



(cl:defclass aux-data-container (pb:protocol-buffer)
  (
  (aux-data
   :accessor aux-data
   :initform (cl:make-array
              0
              :element-type 'proto-v0::aux-data-container-aux-data-entry
              :fill-pointer 0 :adjustable cl:t)
   :type (cl:vector proto-v0::aux-data-container-aux-data-entry))
  (%has-bits%
   :accessor %has-bits%
   :initform 0
   :type (cl:unsigned-byte 1))
  (pb::%cached-size%
   :initform 0
   :type (cl:integer 0 #.(cl:1- cl:array-dimension-limit)))
  ))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'aux-data-container))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'aux-data))

(cl:unless (cl:fboundp 'clear-aux-data)
  (cl:defgeneric clear-aux-data (proto)))
(cl:defmethod clear-aux-data ((self aux-data-container))
  (cl:setf (cl:slot-value self 'aux-data)
           (cl:make-array 0 :element-type 'proto-v0::aux-data-container-aux-data-entry
            :fill-pointer 0 :adjustable cl:t))
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-aux-data))


(cl:defmethod cl:print-object ((self aux-data-container-aux-data-entry) stream)
  (cl:pprint-logical-block (stream cl:nil)
    (cl:print-unreadable-object (self stream :type cl:t :identity cl:t)
      (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_key: ~s" (key self)))
      (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_value: ~s" (value self)))
      ))
  (cl:values))

(cl:defmethod pb:clear ((self aux-data-container-aux-data-entry))
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'key) (pb:string-field "")))
  (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'value) cl:nil))
  (cl:setf (cl:slot-value self '%has-bits%) 0)
  (cl:values))

(cl:defmethod pb:is-initialized ((self aux-data-container-aux-data-entry))
  cl:t)

(cl:defmethod pb:octet-size ((self aux-data-container-aux-data-entry))
  (cl:let ((size 0))
    ;; string key = 1[json_name = "key"];
    (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
      (cl:incf size 1)
      (cl:incf size (cl:let ((s (pb::%utf8-string-length% (cl:slot-value self 'key))))
        (cl:+ s (varint:length32 s)))))
    ;; .protoV0.AuxData value = 2[json_name = "value"];
    (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
      (cl:let ((s (pb:octet-size (cl:slot-value self 'value))))
        (cl:incf size (cl:+ 1 s (varint:length32 s)))))
    (cl:setf (cl:slot-value self 'pb::%cached-size%) size)
    size))

(cl:defmethod pb:serialize ((self aux-data-container-aux-data-entry) buffer index limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index index limit)
              (cl:ignorable buffer limit))
  ;; string key = 1[json_name = "key"];
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 10))
    (cl:setf index (wire-format:write-octets-carefully buffer index limit (cl:slot-value (cl:slot-value self 'key) 'pb::%octets%))))
  ;; .protoV0.AuxData value = 2[json_name = "value"];
  (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 18))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit (cl:slot-value (cl:slot-value self 'value) 'pb::%cached-size%)))
    (cl:setf index (pb:serialize (cl:slot-value self 'value) buffer index limit)))
  index)

(cl:defmethod pb:merge-from-array ((self aux-data-container-aux-data-entry) buffer start limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index start limit))
  (cl:do ((index start index))
      ((cl:>= index limit) index)
    (cl:declare (cl:type com.google.base:vector-index index))
    (cl:multiple-value-bind (field-number wire-type new-index)
        (wire-format:parse-tag buffer index limit)
      (cl:setf index new-index)
      (cl:case field-number
        ;; string key = 1[json_name = "key"];
        ((1)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (value new-index)
                  (wire-format:read-octets-carefully buffer index limit)
                (cl:setf (cl:slot-value self 'key) (pb:string-field value))
                (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1)
                (cl:setf index new-index)))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; .protoV0.AuxData value = 2[json_name = "value"];
        ((2)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint31-carefully buffer index limit)
                (cl:when (cl:> (cl:+ new-index length) limit)
                  (cl:error 'wire-format:data-exhausted))
                (cl:let ((message (cl:slot-value self 'value)))
                  (cl:when (cl:null message)
                    (cl:setf message (cl:make-instance 'proto-v0::aux-data))
                    (cl:setf (cl:slot-value self 'value) message)
                    (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))
                  (cl:setf index (pb:merge-from-array message buffer new-index (cl:+ new-index length)))
                  (cl:when (cl:/= index (cl:+ new-index length))
                    (cl:error 'wire-format:alignment)))))
            (cl:t (cl:error 'wire-format:alignment))))
        (cl:t
          (cl:when (cl:= wire-type wire-format:+end-group+)
            (cl:return-from pb:merge-from-array index))
          (cl:setf index
            (wire-format:skip-field field-number wire-type buffer index limit))
          )))))

(cl:defmethod pb:merge-from-message ((self aux-data-container-aux-data-entry) (from aux-data-container-aux-data-entry))
  (cl:when (cl:logbitp 0 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'key) (cl:slot-value from 'key))
    (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 1 (cl:slot-value from '%has-bits%))
    (cl:let ((message (cl:slot-value self 'value)))
      (cl:when (cl:null message)
        (cl:setf message (cl:make-instance 'proto-v0::aux-data))
        (cl:setf (cl:slot-value self 'value) message)
        (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))
     (pb:merge-from-message message (cl:slot-value from 'value))))
)



(cl:defmethod cl:print-object ((self aux-data-container) stream)
  (cl:pprint-logical-block (stream cl:nil)
    (cl:print-unreadable-object (self stream :type cl:t :identity cl:t)
      (cl:format stream " ~_aux-data: ~s" (aux-data self))
      ))
  (cl:values))

(cl:defmethod pb:clear ((self aux-data-container))
  (cl:setf (cl:slot-value self 'aux-data)
           (cl:make-array 0 :element-type 'proto-v0::aux-data-container-aux-data-entry
            :fill-pointer 0 :adjustable cl:t))
  (cl:setf (cl:slot-value self '%has-bits%) 0)
  (cl:values))

(cl:defmethod pb:is-initialized ((self aux-data-container))
  cl:t)

(cl:defmethod pb:octet-size ((self aux-data-container))
  (cl:let ((size 0))
    ;; map<string, .protoV0.AuxData> aux_data = 1[json_name = "auxData"];
    (cl:let* ((v (cl:slot-value self 'aux-data))
              (length (cl:length v)))
      (cl:incf size (cl:* 1 length))
      (cl:dotimes (i length)
        (cl:let ((s (pb:octet-size (cl:aref v i))))
          (cl:incf size (cl:+ s (varint:length32 s))))))
    (cl:setf (cl:slot-value self 'pb::%cached-size%) size)
    size))

(cl:defmethod pb:serialize ((self aux-data-container) buffer index limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index index limit)
              (cl:ignorable buffer limit))
  ;; map<string, .protoV0.AuxData> aux_data = 1[json_name = "auxData"];
  (cl:let* ((v (cl:slot-value self 'aux-data))
            (length (cl:length v)))
    (cl:loop for i from 0 below length do
       (cl:setf index (varint:encode-uint32-carefully buffer index limit 10))
       (cl:setf index (varint:encode-uint32-carefully buffer index limit (cl:slot-value (cl:aref v i) 'pb::%cached-size%)))
       (cl:setf index (pb:serialize (cl:aref v i) buffer index limit))))
  index)

(cl:defmethod pb:merge-from-array ((self aux-data-container) buffer start limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index start limit))
  (cl:do ((index start index))
      ((cl:>= index limit) index)
    (cl:declare (cl:type com.google.base:vector-index index))
    (cl:multiple-value-bind (field-number wire-type new-index)
        (wire-format:parse-tag buffer index limit)
      (cl:setf index new-index)
      (cl:case field-number
        ;; map<string, .protoV0.AuxData> aux_data = 1[json_name = "auxData"];
        ((1)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint31-carefully buffer index limit)
                (cl:when (cl:> (cl:+ new-index length) limit)
                  (cl:error 'wire-format:data-exhausted))
                (cl:let ((message (cl:make-instance 'proto-v0::aux-data-container-aux-data-entry)))
                  (cl:setf index (pb:merge-from-array message buffer new-index (cl:+ new-index length)))
                  (cl:when (cl:/= index (cl:+ new-index length))
                    (cl:error 'wire-format:alignment))
                  (cl:vector-push-extend message (cl:slot-value self 'aux-data)))))
            (cl:t (cl:error 'wire-format:alignment))))
        (cl:t
          (cl:when (cl:= wire-type wire-format:+end-group+)
            (cl:return-from pb:merge-from-array index))
          (cl:setf index
            (wire-format:skip-field field-number wire-type buffer index limit))
          )))))

(cl:defmethod pb:merge-from-message ((self aux-data-container) (from aux-data-container))
  (cl:let* ((v (cl:slot-value self 'aux-data))
            (vf (cl:slot-value from 'aux-data))
            (length (cl:length vf)))
    (cl:loop for i from 0 below length do
      (cl:vector-push-extend (cl:aref vf i) v)))
)


