data List a = Nil | Cons a (List a);
data Number = Z | S Number | Unknown;

take (S (S Z)) (from Z)

where

from = \n -> Cons n (from (S n));

take = \n xs ->
    case n of {
      Z -> Nil;
      Unknown -> Nil;
      S x -> Cons (head xs) (take x (tail xs));
    };

head = \list -> 
  case list of {
    Nil -> Unknown;
    Cons x xs -> x;
  };

tail = \list ->
  case list of {
    Nil -> Nil;
    Cons x xs -> xs;
  };