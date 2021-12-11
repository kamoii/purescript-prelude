;; -*- lexical-binding: t; -*-

(defvar Data.Show.Generic.intercalate
  (lambda (separator)
    (lambda (xs)
      (mapconcat 'identity xs separator))))

;; You don't need to provide feature. This file will copied with a diffirent file name.
