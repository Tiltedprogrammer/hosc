-- generated by hosc0 from examples/sc/fix.hs

data Nat  = Z  | S Nat;
data Boolean  = False  | True ;
data Pair a b = P a b;

(P
  (\z10->
    (letrec f=(\s11-> case  s11  of { Z  -> True; S v9 -> case  v9  of { Z  -> False; S t2 -> (f t2); }; }) in (f z10)))
  (\s4->
    (letrec g=(\t11-> case  t11  of { Z  -> False; S w11 -> case  w11  of { Z  -> True; S w -> (g w); }; }) in (g s4))))