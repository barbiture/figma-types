-- To decode the JSON data, add this file to your project, run
--
--     elm-package install NoRedInk/elm-decode-pipeline
--
-- add these imports
--
--     import Json.Decode exposing (decodeString)`);
--     import QuickType exposing (figma)
--
-- and you're off to the races with
--
--     decodeString figma myJsonString

module QuickType exposing
    ( Figma
    , figmaToString
    , figma
    )

import Json.Decode as Jdec
import Json.Decode.Pipeline as Jpipe
import Json.Encode as Jenc
import Dict exposing (Dict, map, toList)
import Array exposing (Array, map)

{-| A geographical coordinate -}
type alias Figma =
    { latitude : Maybe Float
    , longitude : Maybe Float
    }

-- decoders and encoders

figmaToString : Figma -> String
figmaToString r = Jenc.encode 0 (encodeFigma r)

figma : Jdec.Decoder Figma
figma =
    Jpipe.decode Figma
        |> Jpipe.optional "latitude" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "longitude" (Jdec.nullable Jdec.float) Nothing

encodeFigma : Figma -> Jenc.Value
encodeFigma x =
    Jenc.object
        [ ("latitude", makeNullableEncoder Jenc.float x.latitude)
        , ("longitude", makeNullableEncoder Jenc.float x.longitude)
        ]

--- encoder helpers

makeArrayEncoder : (a -> Jenc.Value) -> Array a -> Jenc.Value
makeArrayEncoder f arr =
    Jenc.array (Array.map f arr)

makeDictEncoder : (a -> Jenc.Value) -> Dict String a -> Jenc.Value
makeDictEncoder f dict =
    Jenc.object (toList (Dict.map (\k -> f) dict))

makeNullableEncoder : (a -> Jenc.Value) -> Maybe a -> Jenc.Value
makeNullableEncoder f m =
    case m of
    Just x -> f x
    Nothing -> Jenc.null
