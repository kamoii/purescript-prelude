;; -*- lexical-binding: t; -*-

(defvar Data.HeytingAlgebra.boolConj
  (lambda (a)
    (lambda (b)
      (and a b))))

(defvar Data.HeytingAlgebra.boolDisj
  (lambda (a)
    (lambda (b)
      (or a b))))

(defvar Data.HeytingAlgebra.boolNot
  (lambda (a) (not a)))
