;; -*- lexical-binding: t; -*-

;; Equality is checked first, so `ltf` function only need to consider when
;; arguments are diffierent.
(defun Data.Ord._unsafeCompareImpl (eqf ltf)
  (lambda (lt)
    (lambda (eq)
      (lambda (gt)
        (lambda (x)
          (lambda (y)
            (cond ((funcall eqf x y) eq)
                  ((funcall ltf x y) lt)
                  (t gt))))))))

;; Same semantics as .js backend. True is bigger than False.
(defvar Data.Ord.ordBooleanImpl
  (Data.Ord._unsafeCompareImpl 'equal (lambda (a b) b)))

(defvar Data.Ord.ordIntImpl
  (Data.Ord._unsafeCompareImpl 'equal '<))

(defvar Data.Ord.ordNumberImpl
  (Data.Ord._unsafeCompareImpl '= '<))

(defvar Data.Ord.ordStringImpl
  (Data.Ord._unsafeCompareImpl 'equal 'string<))

(defvar Data.Ord.ordCharImpl
  (Data.Ord._unsafeCompareImpl 'equal '<))

(defvar Data.Ord.ordArrayImpl
  (lambda (f)
    (lambda (xs)
      (lambda (ys)
        (Data.Ord._ordArrayImpl 0 f xs ys)))))

(defun Data.Ord._ordArrayImpl (i f xs ys)
  (cond ((and (eq i (length xs)) (eq i (length ys))) 0)
        ((eq i (length xs)) 1)
        ((eq i (length ys)) -1)
        (t
         (let ((o (funcall (funcall f (aref xs i)) (aref ys i))))
           (if (not (eq o 0))
               o
             (Data.Ord._ordArrayImpl (1+ i) f xs ys))))))
