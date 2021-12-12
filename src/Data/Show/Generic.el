;; -*- lexical-binding: t; -*-

(defvar Data.Show.Generic.intercalate
  (lambda (separator)
    (lambda (xs)
      (mapconcat 'identity xs separator))))
