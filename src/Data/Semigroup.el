;; -*- lexical-binding: t; -*-

(defvar Data.Semigroup.concatString
  (lambda (a)
    (lambda (b)
      (concat a b))))

(defvar Data.Semigroup.concatArray
  (lambda (a)
    (lambda (b)
      (vconcat a b))))
