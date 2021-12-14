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

(defvar Data.Eq.eqArrayImpl
  (lambda (f)
    (lambda (xs)
      (lambda (ys)
        (and (eq (length xs) (length ys))
             (Data.Eq._eqArrayImpl 0 f xs ys))))))

(defun Data.Eq._eqArrayImpl (i f xs ys)
  (cond ((eq i (length xs))
         t)
        ((not (funcall (funcall f (aref xs i)) (aref ys i)))
         nil)
        (t
         (Data.Eq._eqArrayImpl (1+ i) f xs ys))))
