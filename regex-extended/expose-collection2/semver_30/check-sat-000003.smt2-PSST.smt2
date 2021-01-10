(declare-fun Constructed_Argument_t () String)
(assert (not (= Constructed_Argument_t (str.++ (seq.unit #x73) (seq.unit #x74) (seq.unit #x72) (seq.unit #x69) (seq.unit #x6e) (seq.unit #x67)))))
(assert (= Constructed_Argument_t (str.++ (seq.unit #x6e) (seq.unit #x75) (seq.unit #x6d) (seq.unit #x62) (seq.unit #x65) (seq.unit #x72))))
(check-sat)
