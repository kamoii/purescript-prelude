;; -*- lexical-binding: t; -*-

(defvar Test.Utils.throwErr
  (lambda (msg)
    (lambda (_)
      (psel/throw-assert-error msg))))
