-- generated by hosc0 from examples/mc/ltl4.hs

data List a = Cons a (List a);
data Bool  = True  | False ;

((p
    (\y3->
      (letrec
        f=(\t5->
          (\x6->
            case  t5  of { True  -> True; False  -> case  x6  of { Cons y u4 -> ((p (\z4-> ((f z4) u4))) u4); }; }))
      in
        ((f y3) states))))
  states)