data List a = Nil | Cons a (List a);

app (app x y) z
where

app = \xs ys ->
    case xs of {
      Nil -> ys;
      Cons z zs -> Cons z (app zs ys);
    };