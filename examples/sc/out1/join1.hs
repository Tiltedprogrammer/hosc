-- generated by hosc1 from examples/sc/join1.hs

data List a = Nil  | Cons a (List a);

(letrec
  g=(\u11->
    case  u11  of {
      Nil  -> Nil;
      Cons v2 u5 ->
        (letrec
          h=(\v11->
            case  v11  of {
              Nil  -> (g u5);
              Cons r3 x1 ->
                (letrec f1=(\w11-> case  w11  of { Nil  -> (h x1); Cons p9 r6 -> (Cons (f p9) (f1 r6)); }) in (f1 r3));
            })
        in
          (h v2));
    })
in
  (g xs))