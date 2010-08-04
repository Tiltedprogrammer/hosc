-- generated by hosc0 from examples/sc/synapse0.hs

data Action  = RM  | WH ;
data Number  = Z  | S Number;
data State  = State Number Number Number;
data Boolean  = True  | False ;
data List a = Nil  | Cons a (List a);

(letrec
  f=(\r13->
    (\s13->
      case  r13  of {
        Cons z12 x8 ->
          ((f x8)
            case  s13  of {
              State y13 w1 y6 ->
                case  z12  of {
                  RM  -> case  y13  of { S r -> (State ((add r) w1) Z (S y6)); };
                  WH  ->
                    case  y13  of {
                      Z  -> case  y6  of { S u5 -> (State ((add ((add Z) w1)) u5) (S Z) Z); };
                      S z8 ->
                        case  y6  of {
                          Z  -> (State ((add ((add (S z8)) w1)) Z) (S Z) Z);
                          S x7 -> (State ((add ((add (S z8)) w1)) x7) (S Z) Z);
                        };
                    };
                };
            });
        Nil  ->
          case  s13  of {
            State v1 y4 s7 ->
              case  y4  of {
                S w3 -> case  w3  of { S y9 -> False; Z  -> case  s7  of { S p -> False; Z  -> True; }; };
                Z  -> True;
              };
          };
      }))
in
  ((f y) (State (S x) Z Z)))