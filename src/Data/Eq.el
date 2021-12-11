;; -*- lexical-binding: t; -*-

(require 'psel)

(defvar Data.Eq._equal (psel/curry2 'equal))

(defvar Data.Eq.eqBooleanImpl Data.Eq._equal)

(defvar Data.Eq.eqIntImpl Data.Eq._equal)

(defvar Data.Eq.eqNumberImpl Data.Eq._equal)

(defvar Data.Eq.eqCharImpl Data.Eq._equal)

(defvar Data.Eq.eqStringImpl Data.Eq._equal)

(defvar Data.Eq.eqArrayImpl Data.Eq._equal)

;; You don't need to provide feature. This file will copied with a diffirent file name.
