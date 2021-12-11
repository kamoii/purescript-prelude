;; -*- lexical-binding: t; -*-

(require 'psel)

(defvar Data.Semiring.intAdd (psel/curry2 '+))

(defvar Data.Semiring.intMul (psel/curry2 '*))

(defvar Data.Semiring.numAdd (psel/curry2 '+))

(defvar Data.Semiring.numMul (psel/curry2 '*))

;; You don't need to provide feature. This file will copied with a diffirent file name.
