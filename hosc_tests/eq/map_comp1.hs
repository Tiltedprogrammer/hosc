data List a = Nil | Cons a (List a);

map (compose f g) xs where

compose = \f g x ->  f (g x);

map = \f xs ->
	case xs of {
		Nil -> Nil;
		Cons x1 xs1 -> Cons (f x1) (map f xs1);
	};