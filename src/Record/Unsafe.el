;; -*- lexical-binding: t; -*-

(require 'psel)

(defvar Record.Unsafe.unsafeHas
  (lambda (key)
    (lambda (obj)
      (not (null (assq (intern key) obj))))))

(defvar Record.Unsafe.unsafeGet
  (lambda (key)
    (lambda (obj)
      (cdr (assq (intern key) obj)))))

(defvar Record.Unsafe.unsafeSet
  (lambda (key)
    (lambda (val)
      (lambda (obj)
        (psel/alist-set (intern key) val obj)))))

(defvar Record.Unsafe.unsafeDelete
  (lambda (key)
    (lambda (obj)
      (psel/alist-delete (intern key) obj))))
