;; -*- lexical-binding: t; -*-

(defvar Data.Functor.arrayMap
  (lambda (a)
    (lambda (b)
      (mapcar a b))))
