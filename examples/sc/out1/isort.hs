-- generated by hosc1 from examples/sc/isort.hs

data List a = Nil  | Cons a (List a);
data Boolean  = True  | False ;
data Pair a b = P a b;

(letrec
  h=(\u7->
    case  u7  of {
      Cons y y5 ->
        case  y5  of {
          Cons z2 z1 -> case  ((leq y) z2)  of { False  -> False; True  -> (h (Cons z2 z1)); };
          Nil  -> True;
        };
      Nil  -> True;
    })
in
  (h
    (letrec
      f=(\y7->
        case  y7  of {
          Nil  -> Nil;
          Cons s x3 ->
            (letrec
              g=(\z7->
                case  z7  of {
                  Cons s1 v4 -> case  ((leq s) s1)  of { False  -> (Cons s1 (g v4)); True  -> (Cons s (Cons s1 v4)); };
                  Nil  -> (Cons s Nil);
                })
            in
              (g (f x3)));
        })
    in
      (f xs))))