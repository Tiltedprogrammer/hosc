data List a = Nil | Cons a (List a);

x where 

app = \xs ys ->
    case xs of {
      Nil2 -> ys;
      Cons z zs -> Cons z zs;
    };