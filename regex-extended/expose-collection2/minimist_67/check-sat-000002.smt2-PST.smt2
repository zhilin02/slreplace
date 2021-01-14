(declare-fun Constructed_Argument_t () String)
(assert (= Constructed_Argument_t (str.++ (seq.unit #x73) (seq.unit #x74) (seq.unit #x72) (seq.unit #x69) (seq.unit #x6e) (seq.unit #x67))))
(check-sat)
