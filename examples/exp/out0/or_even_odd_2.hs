-- generated by hosc0 from examples/exp/or_even_odd_2.hs

data Bool  = True  | False ;
data Nat  = Z  | S Nat;

(letrec
  f=(\p2->
    case  p2  of {
      S v1 ->
        case  v1  of {
          Z  ->
            (letrec g=(\r2-> case  r2  of { Z  -> False; S s -> case  s  of { Z  -> True; S y1 -> (g y1); }; })
            in
              (g v29));
          S p1 -> (f p1);
        };
      Z  -> True;
    })
in
  (f v29))