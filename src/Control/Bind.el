;; -*- lexical-binding: t; -*-

(defvar Control.Bind.arrayBind
  (lambda (xs)
    (lambda (f)
      (apply 'vconcat (mapcar f xs)))))

;; You don't need to provide feature. This file will copied with a diffirent file name.
