-- generated by hosc1 from examples/sc/zip1.hs

data List a = Nil  | Cons a (List a);
data Pair a b = P a b;

(letrec
  f=(\r5->
    (\s5->
      case  r5  of {
        Nil  -> Nil;
        Cons u5 u -> case  s5  of { Nil  -> Nil; Cons p v2 -> (Cons (P (f1 u5) (f2 p)) ((f u) v2)); };
      }))
in
  ((f l1) l2))