
;;;;    IR.lisp

;;; Generated by the protocol buffer compiler.  DO NOT EDIT!


(cl:in-package #:common-lisp-user)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package '#:proto-v0)
    (make-package '#:proto-v0 :use nil)))
(in-package #:proto-v0)
(cl:declaim #.com.google.base:*optimize-default*)

(cl:defclass ir (pb:protocol-buffer)
  (
  (uuid
   :accessor uuid
   :initform (cl:make-array 0 :element-type '(cl:unsigned-byte 8))
   :type (cl:simple-array (cl:unsigned-byte 8) (cl:*)))
  (modules
   :accessor modules
   :initform (cl:make-array
              0
              :element-type 'proto-v0::module
              :fill-pointer 0 :adjustable cl:t)
   :type (cl:vector proto-v0::module))
  (aux-data-container
   :writer (cl:setf aux-data-container)
   :initform cl:nil
   :type (cl:or cl:null proto-v0::aux-data-container))
  (%has-bits%
   :accessor %has-bits%
   :initform 0
   :type (cl:unsigned-byte 3))
  (pb::%cached-size%
   :initform 0
   :type (cl:integer 0 #.(cl:1- cl:array-dimension-limit)))
  ))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'ir))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'uuid))


(cl:defmethod (cl:setf uuid) :after (x (self ir))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-uuid)
  (cl:defgeneric has-uuid (proto)))
(cl:defmethod has-uuid ((self ir))
  (cl:logbitp 0 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-uuid))

(cl:unless (cl:fboundp 'clear-uuid)
  (cl:defgeneric clear-uuid (proto)))
(cl:defmethod clear-uuid ((self ir))
  (cl:setf (cl:slot-value self 'uuid) (cl:make-array 0 :element-type '(cl:unsigned-byte 8)))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-uuid))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'modules))

(cl:unless (cl:fboundp 'clear-modules)
  (cl:defgeneric clear-modules (proto)))
(cl:defmethod clear-modules ((self ir))
  (cl:setf (cl:slot-value self 'modules)
           (cl:make-array 0 :element-type 'proto-v0::module
            :fill-pointer 0 :adjustable cl:t))
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-modules))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'aux-data-container))

(cl:unless (cl:fboundp 'aux-data-container)
  (cl:defgeneric aux-data-container (proto)))
(cl:defmethod aux-data-container ((self ir))
  (cl:let ((result (cl:slot-value self 'aux-data-container)))
    (cl:when (cl:null result)
      (cl:setf result (cl:make-instance 'proto-v0::aux-data-container))
      (cl:setf (cl:slot-value self 'aux-data-container) result))
      (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 1)
    result))

(cl:defmethod (cl:setf aux-data-container) :after (x (self ir))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-aux-data-container)
  (cl:defgeneric has-aux-data-container (proto)))
(cl:defmethod has-aux-data-container ((self ir))
  (cl:logbitp 2 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-aux-data-container))

(cl:unless (cl:fboundp 'clear-aux-data-container)
  (cl:defgeneric clear-aux-data-container (proto)))
(cl:defmethod clear-aux-data-container ((self ir))
  (cl:setf (cl:slot-value self 'aux-data-container) cl:nil)
  (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-aux-data-container))


(cl:defmethod cl:print-object ((self ir) stream)
  (cl:pprint-logical-block (stream cl:nil)
    (cl:print-unreadable-object (self stream :type cl:t :identity cl:t)
      (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_uuid: ~s" (uuid self)))
      (cl:format stream " ~_modules: ~s" (modules self))
      (cl:when (cl:logbitp 2 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_aux-data-container: ~s" (aux-data-container self)))
      ))
  (cl:values))

(cl:defmethod pb:clear ((self ir))
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'uuid) (cl:make-array 0 :element-type '(cl:unsigned-byte 8))))
  (cl:when (cl:logbitp 2 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'aux-data-container) cl:nil))
  (cl:setf (cl:slot-value self 'modules)
           (cl:make-array 0 :element-type 'proto-v0::module
            :fill-pointer 0 :adjustable cl:t))
  (cl:setf (cl:slot-value self '%has-bits%) 0)
  (cl:values))

(cl:defmethod pb:is-initialized ((self ir))
  cl:t)

(cl:defmethod pb:octet-size ((self ir))
  (cl:let ((size 0))
    ;; bytes uuid = 1[json_name = "uuid"];
    (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
      (cl:incf size 1)
      (cl:incf size (cl:let ((s (cl:length (cl:slot-value self 'uuid))))
        (cl:+ s (varint:length32 s)))))
    ;; .protoV0.AuxDataContainer aux_data_container = 4[json_name = "auxDataContainer"];
    (cl:when (cl:logbitp 2 (cl:slot-value self '%has-bits%))
      (cl:let ((s (pb:octet-size (cl:slot-value self 'aux-data-container))))
        (cl:incf size (cl:+ 1 s (varint:length32 s)))))
    ;; repeated .protoV0.Module modules = 3[json_name = "modules"];
    (cl:let* ((v (cl:slot-value self 'modules))
              (length (cl:length v)))
      (cl:incf size (cl:* 1 length))
      (cl:dotimes (i length)
        (cl:let ((s (pb:octet-size (cl:aref v i))))
          (cl:incf size (cl:+ s (varint:length32 s))))))
    (cl:setf (cl:slot-value self 'pb::%cached-size%) size)
    size))

(cl:defmethod pb:serialize ((self ir) buffer index limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index index limit)
              (cl:ignorable buffer limit))
  ;; bytes uuid = 1[json_name = "uuid"];
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 10))
    (cl:setf index (wire-format:write-octets-carefully buffer index limit (cl:slot-value self 'uuid))))
  ;; repeated .protoV0.Module modules = 3[json_name = "modules"];
  (cl:let* ((v (cl:slot-value self 'modules))
            (length (cl:length v)))
    (cl:loop for i from 0 below length do
       (cl:setf index (varint:encode-uint32-carefully buffer index limit 26))
       (cl:setf index (varint:encode-uint32-carefully buffer index limit (cl:slot-value (cl:aref v i) 'pb::%cached-size%)))
       (cl:setf index (pb:serialize (cl:aref v i) buffer index limit))))
  ;; .protoV0.AuxDataContainer aux_data_container = 4[json_name = "auxDataContainer"];
  (cl:when (cl:logbitp 2 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 34))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit (cl:slot-value (cl:slot-value self 'aux-data-container) 'pb::%cached-size%)))
    (cl:setf index (pb:serialize (cl:slot-value self 'aux-data-container) buffer index limit)))
  index)

(cl:defmethod pb:merge-from-array ((self ir) buffer start limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index start limit))
  (cl:do ((index start index))
      ((cl:>= index limit) index)
    (cl:declare (cl:type com.google.base:vector-index index))
    (cl:multiple-value-bind (field-number wire-type new-index)
        (wire-format:parse-tag buffer index limit)
      (cl:setf index new-index)
      (cl:case field-number
        ;; bytes uuid = 1[json_name = "uuid"];
        ((1)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (value new-index)
                  (wire-format:read-octets-carefully buffer index limit)
                (cl:setf (cl:slot-value self 'uuid) value)
                (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1)
                (cl:setf index new-index)))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; repeated .protoV0.Module modules = 3[json_name = "modules"];
        ((3)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint31-carefully buffer index limit)
                (cl:when (cl:> (cl:+ new-index length) limit)
                  (cl:error 'wire-format:data-exhausted))
                (cl:let ((message (cl:make-instance 'proto-v0::module)))
                  (cl:setf index (pb:merge-from-array message buffer new-index (cl:+ new-index length)))
                  (cl:when (cl:/= index (cl:+ new-index length))
                    (cl:error 'wire-format:alignment))
                  (cl:vector-push-extend message (cl:slot-value self 'modules)))))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; .protoV0.AuxDataContainer aux_data_container = 4[json_name = "auxDataContainer"];
        ((4)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint31-carefully buffer index limit)
                (cl:when (cl:> (cl:+ new-index length) limit)
                  (cl:error 'wire-format:data-exhausted))
                (cl:let ((message (cl:slot-value self 'aux-data-container)))
                  (cl:when (cl:null message)
                    (cl:setf message (cl:make-instance 'proto-v0::aux-data-container))
                    (cl:setf (cl:slot-value self 'aux-data-container) message)
                    (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 1))
                  (cl:setf index (pb:merge-from-array message buffer new-index (cl:+ new-index length)))
                  (cl:when (cl:/= index (cl:+ new-index length))
                    (cl:error 'wire-format:alignment)))))
            (cl:t (cl:error 'wire-format:alignment))))
        (cl:t
          (cl:when (cl:= wire-type wire-format:+end-group+)
            (cl:return-from pb:merge-from-array index))
          (cl:setf index (wire-format:skip-field field-number wire-type buffer index limit)))))))

(cl:defmethod pb:merge-from-message ((self ir) (from ir))
  (cl:let* ((v (cl:slot-value self 'modules))
            (vf (cl:slot-value from 'modules))
            (length (cl:length vf)))
    (cl:loop for i from 0 below length do
      (cl:vector-push-extend (cl:aref vf i) v)))
  (cl:when (cl:logbitp 0 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'uuid) (cl:slot-value from 'uuid))
    (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 2 (cl:slot-value from '%has-bits%))
    (cl:let ((message (cl:slot-value self 'aux-data-container)))
      (cl:when (cl:null message)
        (cl:setf message (cl:make-instance 'proto-v0::aux-data-container))
        (cl:setf (cl:slot-value self 'aux-data-container) message)
        (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 1))
     (pb:merge-from-message message (cl:slot-value from 'aux-data-container))))
  )


