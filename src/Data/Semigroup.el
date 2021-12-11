;; -*- lexical-binding: t; -*-

(require 'psel)

(defvar Data.Semigroup.concatString
  (psel/curry2 'concat))

(defvar Data.Semigroup.concatArray
  (psel/curry2 'vconcat))

;; You don't need to provide feature. This file will copied with a diffirent file name.
