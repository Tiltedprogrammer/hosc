-- generated by hosc1 from examples/sc/even1.hs

data Number  = Z  | S Number;
data Boolean  = True  | False ;

(letrec
  g=(\v2->
    (\w2->
      case  v2  of {
        Z  ->
          (letrec h=(\p2-> case  p2  of { S r1 -> case  r1  of { S s -> (h s); Z  -> False; }; Z  -> True; })
          in
            (h w2));
        S p1 -> ((g p1) (S (S w2)));
      }))
in
  ((g n) Z))