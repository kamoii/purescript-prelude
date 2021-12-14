;; -*- lexical-binding: t; -*-

(defvar Control.Apply.arrayApply
  (lambda (fs)
    (lambda (xs)
      (apply 'vconcat
             (mapcar (lambda (f) (apply 'vector (mapcar f xs))) fs)))))
