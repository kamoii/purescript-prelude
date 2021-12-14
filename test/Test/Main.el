;; -*- lexical-binding: t; -*-

(require 'psel)

(defvar Test.Main.testNumberShow
  (lambda (showNumber)
    (lambda (_)
      (Test.Main._testNumberShow showNumber 0.0 "0.0")
      (Test.Main._testNumberShow showNumber 1.0 "1.0")
      (Test.Main._testNumberShow showNumber -1.0 "-1.0")
      (Test.Main._testNumberShow showNumber 500.0 "500.0")
      (Test.Main._testNumberShow showNumber 1e10 "10000000000.0")
      (Test.Main._testNumberShow showNumber (+ 1e10 0.5) "10000000000.5")
      (Test.Main._testNumberShow showNumber -1e10 "-10000000000.0")
      (Test.Main._testNumberShow showNumber (- -1e10 0.5) "-10000000000.5")
      (Test.Main._testNumberShow showNumber 1e21 "1e+21")
      (Test.Main._testNumberShow showNumber 1e-21 "1e-21"))))

(defun Test.Main._testNumberShow (f number str)
  (when (not (equal (funcall f number) str))
    (psel/throw-assert-error "testNumberShow")))
