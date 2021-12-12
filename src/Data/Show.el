;; -*- lexical-binding: t; -*-

;; ref
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/String-Conversion.html
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Vector-Functions.html

(defvar Data.Show.showIntImpl
  (symbol-function 'number-to-string))

(defvar Data.Show.showNumberImpl
  (symbol-function 'number-to-string))

;; Must understand how PureScript's char literarl works.
;; Copy how .js is doing.
(defvar Data.Show.showCharImpl
  (lambda (c)
    (cond ((or (< c #x20) (eq c #x7f))
           (pcase c
             (#x07 "'\\a'")
             (?\b "'\\b'")
             (?\f "'\\f'")
             (?\n "'\\n'")
             (?\r "'\\r'")
             (?\t "'\\t'")
             (?\v "'\\v'")
             (_ (concat "'\\" (number-to-string c) "'"))))
          ((or (eq c ?') (eq c ?\\))
           (concat "'\\" (char-to-string c) "'"))
          (t
           (concat "'" (char-to-string c) "'")))))

;; Lazy implementation.
;; Need to copy what .js is doing.
(defvar Data.Show.showStringImpl
  (symbol-function 'prin1-to-string))

(defvar Data.Show.showArrayImpl
  (lambda (f)
    (lambda (xs)
      (concat "[" (mapconcat f xs ",") "]"))))

(defvar Data.Show.cons
  (lambda (head)
    (lambda (tail)
      (vconcat [head] tail))))

;; https://github.com/purescript/purescript-prelude/pull/274
;; This function will change name to `Data.Show.intercalate`.
;; Hopes test whould catch the breaking change.
(defvar Data.Show.join
  (lambda (separator)
    (lambda (xs)
      (mapconcat 'identity xs separator))))

