;; -*- lexical-binding: t; -*-

(defvar Data.Eq._equal
  (lambda (a)
    (lambda (b)
      (equal a b))))

(defvar Data.Eq.eqBooleanImpl Data.Eq._equal)

(defvar Data.Eq.eqIntImpl Data.Eq._equal)

(defvar Data.Eq.eqNumberImpl Data.Eq._equal)

(defvar Data.Eq.eqCharImpl Data.Eq._equal)

(defvar Data.Eq.eqStringImpl Data.Eq._equal)

(defvar Data.Eq.eqArrayImpl Data.Eq._equal)
