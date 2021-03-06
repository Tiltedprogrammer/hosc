data List a = Nil | Cons a (List a);

app x (app y z)
where

app = \xs ys ->
    case xs of {
      Nil -> ys;
      Cons z zs -> Cons z (app zs ys);
    };