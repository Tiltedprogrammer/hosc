data List a = Nil | Cons a (List a) | Cons a;

x where

app = \xs ys -> 
    case xs of {
      Nil -> ys;
      Cons z zs -> Cons z (app zs xs);
    };