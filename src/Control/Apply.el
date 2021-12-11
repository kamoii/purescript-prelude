;; -*- lexical-binding: t; -*-

(defvar Control.Apply.arrayApply
  (lambda (fs)
    (lambda (xs)
      (apply 'vector (mapcar (lambda (f) (mapcar f xs) fs))))))

;; You don't need to provide feature. This file will copied with a diffirent file name.
