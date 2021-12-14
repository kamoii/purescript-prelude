;; -*- lexical-binding: t; -*-

(defvar Data.Functor.arrayMap
  (lambda (f)
    (lambda (xs)
      (apply 'vector (mapcar f xs)))))
