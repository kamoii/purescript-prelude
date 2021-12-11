;; -*- lexical-binding: t; -*-

(require 'psel)

;; Equality is checked first, so `ltf` function only need to consider when
;; arguments are diffierent.
(defun Data.Ord._unsafeCompareImpl (ltf)
  (lambda (lt)
    (lambda (eq)
      (lambda (gt)
        (lambda (x)
          (lambda (y)
            (cond ((equal x y) eq)
                  ((funcall ltf x y) lt)
                  (t gt))))))))

;; Same semantics as .js backend. True is bigger than False.
(defvar Data.Ord.ordBooleanImpl
  (Data.Ord._unsafeCompareImpl (lambda (a b) b)))

(defvar Data.Ord.ordIntImpl
  (Data.Ord._unsafeCompareImpl '<))

(defvar Data.Ord.ordNumberImpl
  (Data.Ord._unsafeCompareImpl '<))

(defvar Data.Ord.ordStringImpl
  (Data.Ord._unsafeCompareImpl 'string<))

(defvar Data.Ord.ordCharImpl
  (Data.Ord._unsafeCompareImpl '<))

(defvar Data.Ord.ordArrayImpl
  (lambda (f)
    (lambda (xs)
      (lambda (ys)
        (Data.Ord._ordArrayImpl f xs ys)))))

(defun Data.Ord._ordArrayImpl (f xs ys)
  (cons ((and (null xs) (null ys)) 0)
        ((null xs) 1)
        ((null ys) -1)
        (t
         (let ((o (psel/funcall2 f (car xs) (car ys))))
           (if (not (eq o 0))
               o
             (Data.Ord._ordArrayImpl f (cdr xs) (cdr ys)))))))

;; You don't need to provide feature. This file will copied with a diffirent file name.
