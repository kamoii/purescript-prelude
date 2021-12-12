;; -*- lexical-binding: t; -*-

(defvar Data.Semiring.intAdd
  (lambda (a)
    (lambda (b)
      (+ a b))))

(defvar Data.Semiring.intMul
  (lambda (a)
    (lambda (b)
      (* a b))))

(defvar Data.Semiring.numAdd
  (lambda (a)
    (lambda (b)
      (+ a b))))

(defvar Data.Semiring.numMul
  (lambda (a)
    (lambda (b)
      (* a b))))
