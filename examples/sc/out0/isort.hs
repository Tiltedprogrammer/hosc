-- generated by hosc0 from examples/sc/isort.hs

data List a = Nil  | Cons a (List a);
data Boolean  = True  | False ;
data Pair a b = P a b;

case 
(letrec
  f=(\r9->
    case  r9  of {
      Nil  -> Nil;
      Cons t8 x1 ->
        (letrec
          g=(\s9->
            case  s9  of {
              Cons w9 r6 -> case  ((leq t8) w9)  of { False  -> (Cons w9 (g r6)); True  -> (Cons t8 (Cons w9 r6)); };
              Nil  -> (Cons t8 Nil);
            })
        in
          (g (f x1)));
    })
in
  (f xs))
 of {
  Cons x s4 ->
    (letrec
      h=(\t9->
        (\x10->
          case  t9  of {
            Cons v9 r1 -> case  ((leq x10) v9)  of { False  -> False; True  -> ((h r1) v9); };
            Nil  -> True;
          }))
    in
      ((h s4) x));
  Nil  -> True;
}