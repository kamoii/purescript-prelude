;; -*- lexical-binding: t; -*-

(defvar Control.Bind.arrayBind
  (lambda (xs)
    (lambda (f)
      (apply 'vconcat (mapcar f xs)))))
