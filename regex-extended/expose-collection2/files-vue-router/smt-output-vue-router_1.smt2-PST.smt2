(declare-fun Constructed_Argument_t () String)
(assert (not (= Constructed_Argument_t "string")))
(assert (= Constructed_Argument_t "number"))
(check-sat)
