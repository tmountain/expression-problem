module Expression2 exposing (..)

import Html exposing (text)


type Expr
    = Val Float
    | Add Expr Expr
    | Sub Expr Expr
    | Mul Expr Expr
    | Div Expr Expr


eval : Expr -> Float
eval aExpr =
    case aExpr of
        Val x ->
            x

        Add l r ->
            eval l + eval r

        Sub l r ->
            eval l - eval r

        Mul l r ->
            eval l * eval r

        Div l r ->
            eval l / eval r


display : Expr -> String
display aExpr =
    case aExpr of
        Val x ->
            toString x

        Add l r ->
            "(" ++ display l ++ "+" ++ display r ++ ")"

        Sub l r ->
            "(" ++ display l ++ "-" ++ display r ++ ")"

        Mul l r ->
            "(" ++ display l ++ "*" ++ display r ++ ")"

        Div l r ->
            "(" ++ display l ++ "/" ++ display r ++ ")"



-- building an expression for ((3+5)*2)


aExpr : Expr
aExpr =
    (Mul (Add (Val 3) (Val 5)) (Val 2))


main =
    text
        ("display aExpr : "
            ++ (display aExpr)
            ++ "eval aExpr : "
            ++ (toString (eval aExpr))
        )
