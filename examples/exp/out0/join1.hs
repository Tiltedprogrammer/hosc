-- generated by hosc0 from examples/exp/join1.hs

data Bool  = True  | False ;
data Nat  = Z  | S Nat;

(letrec
  f=(\u2->
    case  u2  of {
      S x1 ->
        case  x1  of {
          Z  ->
            (letrec g=(\v2-> case  v2  of { Z  -> False; S s1 -> case  s1  of { Z  -> True; S y -> (g y); }; })
            in
              (g n));
          S t1 -> (f t1);
        };
      Z  -> True;
    })
in
  (f n))