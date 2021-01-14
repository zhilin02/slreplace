(declare-fun ExpandObjSwitcher () Real)
(declare-fun Constructed_Argument_t () String)
(declare-fun Constructed_Argument_2_t () String)
(declare-fun CreateAsClass () Bool)
(declare-fun Constructed_Argument () String)
(declare-fun |0 Fill 0| () String)
(declare-fun |0 Fill 3| () String)
(declare-fun |0 Fill 2| () String)
(declare-fun |0 Fill 1| () String)
(declare-fun IsMatch_/&/_0 () Bool)
(declare-fun |1 Fill 0| () String)
(declare-fun |1 Fill 3| () String)
(declare-fun IsMatch_/&/_1 () Bool)
(declare-fun |2 Fill 0| () String)
(declare-fun |2 Fill 3| () String)
(declare-fun |IsMatch_/\\+/_2| () Bool)
(declare-fun |3 Fill 0| () String)
(declare-fun |3 Fill 3| () String)
(declare-fun |3 Fill 2| () String)
(declare-fun |3 Fill 1| () String)
(declare-fun |IsMatch_/\\+/_3| () Bool)
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
(assert (= ExpandObjSwitcher 0.0))
(assert (= Constructed_Argument_t "string"))
(assert (not (= Constructed_Argument_2_t "string")))
(assert (not (= Constructed_Argument_2_t "number")))
(assert (not (= Constructed_Argument_2_t "boolean")))
(assert (not (= Constructed_Argument_2_t "object")))
(assert (not (= Constructed_Argument_2_t "array_number")))
(assert (not (= Constructed_Argument_2_t "array_string")))
(assert (not (= Constructed_Argument_2_t "array_bool")))
(assert (not (= Constructed_Argument_2_t "null")))
(assert (not CreateAsClass))
(assert (not (= Constructed_Argument "")))
(assert (= |0 Fill 0| "&"))
(assert (= |0 Fill 3| "&"))
(assert (= (ite (<= (str.len Constructed_Argument) 0) "" Constructed_Argument)
   (str.++ |0 Fill 1| "&" |0 Fill 2|)))
(assert (str.in.re (str.++ |0 Fill 1| "&" |0 Fill 2|)
           (re.++ (re.* (re.range "\x00" "\xff"))
                  (str.to.re "&")
                  (re.* (re.range "\x00" "\xff")))))
(assert IsMatch_/&/_0)
(assert (= |1 Fill 0| "&"))
(assert (= |1 Fill 3| "&"))
(assert (not IsMatch_/&/_1))
(assert (let ((a!1 (ite (>= (+ (str.len Constructed_Argument) (str.len |0 Fill 1|))
                    (- 1))
                (+ 1 (str.len Constructed_Argument) (str.len |0 Fill 1|))
                0)))
(let ((a!2 (ite (>= (str.len |0 Fill 1|) (- 1)) (+ 1 (str.len |0 Fill 1|)) a!1)))
(let ((a!3 (ite (<= (+ (str.len Constructed_Argument) (* (- 1) a!2)) 0)
                ""
                (str.substr Constructed_Argument
                            a!2
                            (+ (str.len Constructed_Argument) (* (- 1) a!2))))))
(let ((a!4 (str.in.re a!3
                      (re.++ (re.* (re.range "\x00" "\xff"))
                             (str.to.re "&")
                             (re.* (re.range "\x00" "\xff"))))))
  (not a!4))))))
(assert (let ((a!1 (<= (+ (str.len Constructed_Argument) (* (- 1) (str.len |0 Fill 1|)))
               0)))
(let ((a!2 (ite (<= (str.len Constructed_Argument) 0)
                ""
                (str.substr Constructed_Argument
                            0
                            (ite a!1
                                 (str.len Constructed_Argument)
                                 (str.len |0 Fill 1|))))))
  (= (to_real (str.indexof a!2 "]=" 0)) (- 1.0)))))
(assert (let ((a!1 (<= (+ (str.len Constructed_Argument) (* (- 1) (str.len |0 Fill 1|)))
               0)))
(let ((a!2 (ite (<= (str.len Constructed_Argument) 0)
                ""
                (str.substr Constructed_Argument
                            0
                            (ite a!1
                                 (str.len Constructed_Argument)
                                 (str.len |0 Fill 1|))))))
  (not (= (to_real (str.indexof a!2 "=" 0)) (- 1.0))))))
(assert (= |2 Fill 0| "+"))
(assert (= |2 Fill 3| "+"))
(assert (not |IsMatch_/\\+/_2|))
(assert (let ((a!1 (<= (+ (str.len Constructed_Argument) (* (- 1) (str.len |0 Fill 1|)))
               0)))
(let ((a!2 (ite (<= (str.len Constructed_Argument) 0)
                ""
                (str.substr Constructed_Argument
                            0
                            (ite a!1
                                 (str.len Constructed_Argument)
                                 (str.len |0 Fill 1|)))))
      (a!3 (str.len (str.substr Constructed_Argument
                                0
                                (ite a!1
                                     (str.len Constructed_Argument)
                                     (str.len |0 Fill 1|))))))
(let ((a!4 (+ (ite (<= (str.len Constructed_Argument) 0) 0 a!3)
              (str.indexof a!2 "=" 0))))
(let ((a!5 (str.substr a!2
                       0
                       (ite (>= (str.indexof a!2 "=" 0) 0)
                            (str.indexof a!2 "=" 0)
                            a!4))))
(let ((a!6 (str.in.re a!5
                      (re.++ (re.* (re.range "\x00" "\xff"))
                             (str.to.re "+")
                             (re.* (re.range "\x00" "\xff"))))))
  (not a!6)))))))
(assert (let ((a!1 (<= (+ (str.len Constructed_Argument) (* (- 1) (str.len |0 Fill 1|)))
               0)))
(let ((a!2 (ite (<= (str.len Constructed_Argument) 0)
                ""
                (str.substr Constructed_Argument
                            0
                            (ite a!1
                                 (str.len Constructed_Argument)
                                 (str.len |0 Fill 1|)))))
      (a!3 (str.len (str.substr Constructed_Argument
                                0
                                (ite a!1
                                     (str.len Constructed_Argument)
                                     (str.len |0 Fill 1|))))))
(let ((a!4 (to_real (ite (<= (str.len Constructed_Argument) 0) 0 a!3))))
(let ((a!5 (ite (>= (to_real (str.indexof a!2 "=" 0)) (- 1.0))
                (+ 1.0 (to_real (str.indexof a!2 "=" 0)))
                (+ 1.0 (to_real (str.indexof a!2 "=" 0)) a!4))))
(let ((a!6 (+ (ite (<= (str.len Constructed_Argument) 0) 0 a!3)
              (to_int (* (- 1.0) a!5)))))
  (not (= (str.substr a!2 (to_int a!5) a!6) ""))))))))
(assert (= |3 Fill 0| "+"))
(assert (= |3 Fill 3| "+"))
(assert (let ((a!1 (<= (+ (str.len Constructed_Argument) (* (- 1) (str.len |0 Fill 1|)))
               0)))
(let ((a!2 (ite (<= (str.len Constructed_Argument) 0)
                ""
                (str.substr Constructed_Argument
                            0
                            (ite a!1
                                 (str.len Constructed_Argument)
                                 (str.len |0 Fill 1|))))))
(let ((a!3 (ite (>= (to_real (str.indexof a!2 "=" 0)) (- 1.0))
                (+ 1.0 (to_real (str.indexof a!2 "=" 0)))
                (+ 1.0
                   (to_real (str.indexof a!2 "=" 0))
                   (to_real (str.len a!2))))))
(let ((a!4 (str.substr a!2
                       (to_int a!3)
                       (+ (str.len a!2) (to_int (* (- 1.0) a!3))))))
(let ((a!5 (str.in.re a!4
                      (re.++ (re.* (re.range "\x00" "\xff"))
                             (str.to.re "+")
                             (re.* (re.range "\x00" "\xff"))))))
  (or (not a!5) (= a!4 (str.++ |3 Fill 1| "+" |3 Fill 2|)))))))))
(assert (let ((a!1 (<= (+ (str.len Constructed_Argument) (* (- 1) (str.len |0 Fill 1|)))
               0)))
(let ((a!2 (ite (<= (str.len Constructed_Argument) 0)
                ""
                (str.substr Constructed_Argument
                            0
                            (ite a!1
                                 (str.len Constructed_Argument)
                                 (str.len |0 Fill 1|))))))
(let ((a!3 (ite (>= (to_real (str.indexof a!2 "=" 0)) (- 1.0))
                (+ 1.0 (to_real (str.indexof a!2 "=" 0)))
                (+ 1.0
                   (to_real (str.indexof a!2 "=" 0))
                   (to_real (str.len a!2))))))
(let ((a!4 (str.substr a!2
                       (to_int a!3)
                       (+ (str.len a!2) (to_int (* (- 1.0) a!3))))))
(let ((a!5 (str.in.re a!4
                      (re.++ (re.* (re.range "\x00" "\xff"))
                             (str.to.re "+")
                             (re.* (re.range "\x00" "\xff"))))))
  (= a!5 |IsMatch_/\\+/_3|)))))))
(assert (not |IsMatch_/\\+/_3|))
(assert (let ((a!1 (<= (+ (str.len Constructed_Argument) (* (- 1) (str.len |0 Fill 1|)))
               0)))
(let ((a!2 (ite (<= (str.len Constructed_Argument) 0)
                ""
                (str.substr Constructed_Argument
                            0
                            (ite a!1
                                 (str.len Constructed_Argument)
                                 (str.len |0 Fill 1|))))))
  (not (<= (to_real (str.indexof a!2 "[]=" 0)) (- 1.0))))))

(check-sat)
