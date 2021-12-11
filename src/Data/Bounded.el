;; -*- lexical-binding: t; -*-

;; Elisp integer is not bounded
;;
;; (defvar Data.Bounded.topInt foreign-not-implemeneted)
;; (defvar Data.Bounded.bottomInt foreign-not-implemeneted)

(defvar Data.Bounded.topChar (max-char))

(defvar Data.Bounded.bottomChar 0)

(defvar Data.Bounded.topNumber 1.0e+INF)

(defvar Data.Bounded.bottomNumber -1.0e+INF)

;; You don't need to provide feature. This file will copied with a diffirent file name.
