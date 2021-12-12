;; -*- lexical-binding: t; -*-

(defvar Control.Apply.arrayApply
  (lambda (fs)
    (lambda (xs)
      (apply 'vector (mapcar (lambda (f) (mapcar f xs) fs))))))
