(declare-fun ExpandObjSwitcher () Real)
(declare-fun Constructed_Argument_t () String)
(declare-fun CreateAsClass () Bool)
(declare-fun |0 Fill 0| () String)
(declare-fun |0 Fill 1| () String)
(declare-fun |0 Fill 2| () String)
(declare-fun |0 Fill 3| () String)
(declare-fun |0 Fill 6| () String)
(declare-fun |0 Fill 5| () String)
(declare-fun |0 Fill 4| () String)
(declare-fun Constructed_Argument () String)
(declare-fun |IsMatch_/\\x1B\\[\\d+m/_0| () Bool)
(declare-fun |1 Fill 0| () String)
(declare-fun |1 Fill 1| () String)
(declare-fun |1 Fill 2| () String)
(declare-fun |1 Fill 3| () String)
(declare-fun |1 Fill 6| () String)
(declare-fun |1 Fill 5| () String)
(declare-fun |1 Fill 4| () String)
(declare-fun |IsMatch_/\\x1B\\[\\d+m/_1| () Bool)
(declare-fun |2 Fill 0| () String)
(declare-fun |2 Fill 1| () String)
(declare-fun |2 Fill 2| () String)
(declare-fun |2 Fill 3| () String)
(declare-fun |2 Fill 6| () String)
(declare-fun |IsMatch_/\\x1B\\[\\d+m/_2| () Bool)
(declare-fun Constructed_Argument_2_t () String)
(define-funs-rec ( ( str.repeat ((x!1 String) (x!2 Int)) String)
                   ( str.whiteLeft ((x!1 String) (x!2 Int)) Int)
                   ( str.whiteRight ((x!1 String) (x!2 Int)) Int))
                 ( (ite (<= x!2 0)
                        ""
                        (str.++ x!1 ((_ str.repeat 0) x!1 (- x!2 1))))
                   (ite (= (str.at x!1 x!2) " ")
                        ((_ str.whiteLeft 0) x!1 (+ x!2 1))
                        x!2)
                   (ite (= (str.at x!1 x!2) " ")
                        ((_ str.whiteRight 0) x!1 (- x!2 1))
                        x!2)))
(assert (= ExpandObjSwitcher 3.0))
(assert (= Constructed_Argument_t "string"))
(assert CreateAsClass)
(assert (= |0 Fill 0| "\x1B"))
(assert (= |0 Fill 1| "["))
(assert (str.in.re |0 Fill 2| (re.++ (re.range "0" "9") (re.* (re.range "0" "9")))))
(assert (= |0 Fill 3| "m"))
(assert (str.in.re |0 Fill 6|
           (re.++ (str.to.re "\x1B[")
                  (re.range "0" "9")
                  (re.* (re.range "0" "9"))
                  (str.to.re "m"))))
(assert (= |0 Fill 6| (str.++ "\x1B[" |0 Fill 2| "m")))
(assert (= Constructed_Argument (str.++ |0 Fill 4| "\x1B[" |0 Fill 2| "m" |0 Fill 5|)))
(assert (str.in.re Constructed_Argument
           (re.++ (re.* (re.range "\x00" "\xff"))
                  (str.to.re "\x1B[")
                  (re.range "0" "9")
                  (re.* (re.range "0" "9"))
                  (str.to.re "m")
                  (re.* (re.range "\x00" "\xff")))))
(assert |IsMatch_/\\x1B\\[\\d+m/_0|)
(assert (= |1 Fill 0| "\x1B"))
(assert (= |1 Fill 1| "["))
(assert (str.in.re |1 Fill 2| (re.++ (re.range "0" "9") (re.* (re.range "0" "9")))))
(assert (= |1 Fill 3| "m"))
(assert (str.in.re |1 Fill 6|
           (re.++ (str.to.re "\x1B[")
                  (re.range "0" "9")
                  (re.* (re.range "0" "9"))
                  (str.to.re "m"))))
(assert (= |1 Fill 6| (str.++ "\x1B[" |1 Fill 2| "m")))
(assert (let ((a!1 (>= (+ (str.len |0 Fill 4|) (* (- 1) (str.len Constructed_Argument)))
               0))
      (a!3 (ite (>= (+ (str.len |0 Fill 4|)
                       (str.len |0 Fill 6|)
                       (str.len Constructed_Argument))
                    0)
                (+ (str.len |0 Fill 4|)
                   (str.len |0 Fill 6|)
                   (str.len Constructed_Argument))
                0)))
(let ((a!2 (ite (<= (str.len Constructed_Argument) 0)
                ""
                (str.substr Constructed_Argument
                            0
                            (ite a!1
                                 (str.len Constructed_Argument)
                                 (str.len |0 Fill 4|)))))
      (a!4 (ite (>= (+ (str.len |0 Fill 4|) (str.len |0 Fill 6|)) 0)
                (+ (str.len |0 Fill 4|) (str.len |0 Fill 6|))
                a!3)))
(let ((a!5 (ite (<= (+ (str.len Constructed_Argument) (* (- 1) a!4)) 0)
                ""
                (str.substr Constructed_Argument
                            a!4
                            (+ (str.len Constructed_Argument) (* (- 1) a!4))))))
  (= (str.++ a!2 a!5) (str.++ |1 Fill 4| "\x1B[" |1 Fill 2| "m" |1 Fill 5|))))))
(assert (str.in.re (str.++ |1 Fill 4| "\x1B[" |1 Fill 2| "m" |1 Fill 5|)
           (re.++ (re.* (re.range "\x00" "\xff"))
                  (str.to.re "\x1B[")
                  (re.range "0" "9")
                  (re.* (re.range "0" "9"))
                  (str.to.re "m")
                  (re.* (re.range "\x00" "\xff")))))
(assert |IsMatch_/\\x1B\\[\\d+m/_1|)
(assert (= |2 Fill 0| "\x1B"))
(assert (= |2 Fill 1| "["))
(assert (str.in.re |2 Fill 2| (re.++ (re.range "0" "9") (re.* (re.range "0" "9")))))
(assert (= |2 Fill 3| "m"))
(assert (str.in.re |2 Fill 6|
           (re.++ (str.to.re "\x1B[")
                  (re.range "0" "9")
                  (re.* (re.range "0" "9"))
                  (str.to.re "m"))))
(assert (= |2 Fill 6| (str.++ "\x1B[" |2 Fill 2| "m")))
(assert (not |IsMatch_/\\x1B\\[\\d+m/_2|))
(assert (let ((a!1 (>= (+ (str.len |0 Fill 4|) (* (- 1) (str.len Constructed_Argument)))
               0))
      (a!3 (ite (>= (+ (str.len |0 Fill 4|)
                       (str.len |0 Fill 6|)
                       (str.len Constructed_Argument))
                    0)
                (+ (str.len |0 Fill 4|)
                   (str.len |0 Fill 6|)
                   (str.len Constructed_Argument))
                0)))
(let ((a!2 (str.len (str.substr Constructed_Argument
                                0
                                (ite a!1
                                     (str.len Constructed_Argument)
                                     (str.len |0 Fill 4|)))))
      (a!4 (ite (>= (+ (str.len |0 Fill 4|) (str.len |0 Fill 6|)) 0)
                (+ (str.len |0 Fill 4|) (str.len |0 Fill 6|))
                a!3)))
(let ((a!5 (str.len (str.substr Constructed_Argument
                                a!4
                                (+ (str.len Constructed_Argument) (* (- 1) a!4)))))
      (a!8 (* (- 1) (ite (<= (str.len Constructed_Argument) 0) 0 a!2))))
(let ((a!6 (ite (<= (+ (str.len Constructed_Argument) (* (- 1) a!4)) 0) 0 a!5)))
(let ((a!7 (+ (ite (<= (str.len Constructed_Argument) 0) 0 a!2) a!6))
      (a!10 (+ (str.len |1 Fill 4|)
               (str.len |1 Fill 6|)
               (ite (<= (str.len Constructed_Argument) 0) 0 a!2)
               a!6)))
(let ((a!9 (ite (>= (+ (str.len |1 Fill 4|) a!8 (* (- 1) a!6)) 0)
                a!7
                (str.len |1 Fill 4|)))
      (a!11 (ite (>= (+ (str.len |1 Fill 4|) (str.len |1 Fill 6|)) 0)
                 (+ (str.len |1 Fill 4|) (str.len |1 Fill 6|))
                 (ite (>= a!10 0) a!10 0))))
(let ((a!12 (+ (* (- 1) a!11)
               (ite (<= (str.len Constructed_Argument) 0) 0 a!2)
               a!6)))
(let ((a!13 (ite (>= (+ a!11 a!8 (* (- 1) a!6)) 0)
                 ""
                 (str.substr (str.++ |1 Fill 4|
                                     "\x1B["
                                     |1 Fill 2|
                                     "m"
                                     |1 Fill 5|)
                             a!11
                             a!12))))
(let ((a!14 (str.++ (ite (<= a!7 0)
                         ""
                         (str.substr (str.++ |1 Fill 4|
                                             "\x1B["
                                             |1 Fill 2|
                                             "m"
                                             |1 Fill 5|)
                                     0
                                     a!9))
                    a!13)))
(let ((a!15 (str.in.re a!14
                       (re.++ (re.* (re.range "\x00" "\xff"))
                              (str.to.re "\x1B[")
                              (re.range "0" "9")
                              (re.* (re.range "0" "9"))
                              (str.to.re "m")
                              (re.* (re.range "\x00" "\xff"))))))
  (not a!15))))))))))))
(assert (let ((a!1 (>= (+ (str.len |0 Fill 4|) (* (- 1) (str.len Constructed_Argument)))
               0))
      (a!3 (ite (>= (+ (str.len |0 Fill 4|)
                       (str.len |0 Fill 6|)
                       (str.len Constructed_Argument))
                    0)
                (+ (str.len |0 Fill 4|)
                   (str.len |0 Fill 6|)
                   (str.len Constructed_Argument))
                0)))
(let ((a!2 (str.len (str.substr Constructed_Argument
                                0
                                (ite a!1
                                     (str.len Constructed_Argument)
                                     (str.len |0 Fill 4|)))))
      (a!4 (ite (>= (+ (str.len |0 Fill 4|) (str.len |0 Fill 6|)) 0)
                (+ (str.len |0 Fill 4|) (str.len |0 Fill 6|))
                a!3)))
(let ((a!5 (str.len (str.substr Constructed_Argument
                                a!4
                                (+ (str.len Constructed_Argument) (* (- 1) a!4)))))
      (a!9 (* (- 1) (ite (<= (str.len Constructed_Argument) 0) 0 a!2))))
(let ((a!6 (ite (<= (+ (str.len Constructed_Argument) (* (- 1) a!4)) 0) 0 a!5)))
(let ((a!7 (+ (str.len |1 Fill 4|)
              (str.len |1 Fill 6|)
              (ite (<= (str.len Constructed_Argument) 0) 0 a!2)
              a!6))
      (a!12 (+ (ite (<= (str.len Constructed_Argument) 0) 0 a!2) a!6)))
(let ((a!8 (ite (>= (+ (str.len |1 Fill 4|) (str.len |1 Fill 6|)) 0)
                (+ (str.len |1 Fill 4|) (str.len |1 Fill 6|))
                (ite (>= a!7 0) a!7 0)))
      (a!13 (ite (>= (+ (str.len |1 Fill 4|) a!9 (* (- 1) a!6)) 0)
                 a!12
                 (str.len |1 Fill 4|))))
(let ((a!10 (+ (* (- 1) a!8)
               (ite (<= (str.len Constructed_Argument) 0) 0 a!2)
               a!6))
      (a!14 (ite (<= a!12 0)
                 0
                 (str.len (str.substr (str.++ |1 Fill 4|
                                              "\x1B["
                                              |1 Fill 2|
                                              "m"
                                              |1 Fill 5|)
                                      0
                                      a!13)))))
(let ((a!11 (ite (>= (+ a!8 a!9 (* (- 1) a!6)) 0)
                 0
                 (str.len (str.substr (str.++ |1 Fill 4|
                                              "\x1B["
                                              |1 Fill 2|
                                              "m"
                                              |1 Fill 5|)
                                      a!8
                                      a!10)))))
  (not (<= (+ (to_real a!11) (to_real a!14)) 0.0)))))))))))
(assert (not (= Constructed_Argument_2_t "string")))
(assert (not (= Constructed_Argument_2_t "number")))
(assert (not (= Constructed_Argument_2_t "boolean")))
(assert (not (= Constructed_Argument_2_t "object")))
(assert (= Constructed_Argument_2_t "array_number"))
(assert (not (= Constructed_Argument "\xc2\xb8\x1B[5m\x1B[892m")))

(check-sat)