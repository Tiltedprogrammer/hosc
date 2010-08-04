-- generated by hosc1 from examples/sc/regexp.hs

data List a = Nil  | Cons a (List a);
data Boolean  = True  | False ;
data RegExp s = Empty  | Symb s | Seq (RegExp s) (RegExp s) | Alt (RegExp s) (RegExp s) | Rep (RegExp s);

(letrec f=(\v11-> case  v11  of { Nil  -> True; Cons y9 y6 -> case  y9  of { True  -> (f y6); False  -> False; }; })
in
  (f i))