;; -*- lexical-binding: t; -*-

(require 'psel)

;; TBH, I don't know what I'm doing. Copying what .js is doing.

(defvar Data.EuclideanRing.intDegree
  (symbol-function 'abs))

(defvar Data.EuclideanRing.intDiv
  (lambda (x)
    (lambda (y)
      (cond ((eq y 0) 0)
            ((> y 0) (floor (/ x (float y))))
            (t (- (floor (/ x (float (- y))))))))))

(defvar Data.EuclideanRing.intMod
  (lambda (x)
    (lambda (y)
      (if (eq y 0)
          0
        (let ((yy (abs y)))
          (mod (+ (mod x yy) yy) yy))))))

(defvar Data.EuclideanRing.numDiv
  (psel/curry2 '/))

;; You don't need to provide feature. This file will copied with a diffirent file name.
