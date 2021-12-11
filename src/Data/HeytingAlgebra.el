;; -*- lexical-binding: t; -*-

(require 'psel)

(defvar Data.HeytingAlgebra.boolConj (psel/curry2 'and))

(defvar Data.HeytingAlgebra.boolDisj (psel/curry2 'or))

(defvar Data.HeytingAlgebra.boolNot (symbol-function 'not))

;; You don't need to provide feature. This file will copied with a diffirent file name.
