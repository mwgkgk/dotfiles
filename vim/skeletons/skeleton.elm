module ${1:`!v expand("%:t:r")`} exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)

main =
    Html.beginnerProgram { model = model
                         , view = view
                         , update = update
                     }



-- MODEL


type alias Model =
    { messages : List String
    }


model : Model
model =
    Model []



-- UPDATE


type Message
    = Change String


update : Message -> Model -> Model
update msg model =
    case msg of
         Change msg ->
            { model | messages = model.messages ++ [msg] }



-- VIEW


view : Model -> Html Message
view model =
    div []
        [ div [ class "messages" ] [ text (toString model.messages) ]
        , input [ type_ "text", placeholder "Message: ", onInput Change ] []
        ]

