-- generated by hosc0 from examples/spec/russel3.in.hs

data Bool  = True  | False ;
data U  = MkU (U->Bool) Nat;
data Nat  = Z  | S Nat;

(letrec f=(\r-> (f (S r))) in (f Z))