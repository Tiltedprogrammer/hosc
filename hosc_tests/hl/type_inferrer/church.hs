data Nat = Z | S Nat;

church where


church = \n -> case n of {
  S n1 -> \f x -> f (church n1 f x);
  Z    -> \f x -> x;
};


//church1 = \a f x -> f (church1 a f x);