module Expression exposing (..)

import Html exposing (text)


type Expr
    = Constant Float
    | BinaryPlus Expr Expr


stringify : Expr -> String
stringify expr =
    case expr of
        Constant expr ->
            toString expr

        BinaryPlus lhs rhs ->
            stringify lhs ++ " " ++ stringify rhs


evaluate : Expr -> Float
evaluate expr =
    case expr of
        Constant expr ->
            expr

        BinaryPlus lhs rhs ->
            evaluate lhs + evaluate rhs


main =
    text "Hello, World!"
