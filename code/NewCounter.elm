import Html exposing (div, button, text, Html)
import Html.App exposing (beginnerProgram)
import Html.Events exposing (onClick)

main =
  beginnerProgram 
    { model = 0, view = view, update = update }

view : Int -> Html Msg
view model =
  let
    clickHandler =
      if model <= 0
        then []
        else [ onClick Decrement ]
  in
    div []
      [ button clickHandler [ text "-" ]
      , div [] [ text (toString model) ]
      , button [onClick Increment ] [ text "+" ]
      ]

type Msg = Increment | Decrement

update : Msg -> Int -> Int
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1
