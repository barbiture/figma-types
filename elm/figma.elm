-- To decode the JSON data, add this file to your project, run
--
--     elm-package install NoRedInk/elm-decode-pipeline
--
-- add these imports
--
--     import Json.Decode exposing (decodeString)`);
--     import QuickType exposing (comment, user)
--
-- and you're off to the races with
--
--     decodeString comment myJsonString
--     decodeString user myJsonString

module QuickType exposing
    ( Comment
    , commentToString
    , comment
    , User
    , userToString
    , user
    , CommentUser
    )

import Json.Decode as Jdec
import Json.Decode.Pipeline as Jpipe
import Json.Encode as Jenc
import Dict exposing (Dict, map, toList)
import Array exposing (Array, map)

{-| A comment or reply left by a user

id:
Unique identifier for comment

fileKey:
The file in which the comment lives

parentID:
If present, the id of the comment to which this is the reply

user:
The user who left the comment
-}
type alias Comment =
    { id : String
    , fileKey : String
    , parentID : Maybe String
    , user : CommentUser
    }

{-| A description of a user

The user who left the comment
-}
type alias CommentUser =
    { handle : String
    , imgURL : String
    }

{-| A description of a user -}
type alias User =
    { handle : String
    , imgURL : String
    }

-- decoders and encoders

commentToString : Comment -> String
commentToString r = Jenc.encode 0 (encodeComment r)

userToString : User -> String
userToString r = Jenc.encode 0 (encodeUser r)

comment : Jdec.Decoder Comment
comment =
    Jpipe.decode Comment
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "file_key" Jdec.string
        |> Jpipe.optional "parent_id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "user" commentUser

encodeComment : Comment -> Jenc.Value
encodeComment x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("file_key", Jenc.string x.fileKey)
        , ("parent_id", makeNullableEncoder Jenc.string x.parentID)
        , ("user", encodeCommentUser x.user)
        ]

commentUser : Jdec.Decoder CommentUser
commentUser =
    Jpipe.decode CommentUser
        |> Jpipe.required "handle" Jdec.string
        |> Jpipe.required "img_url" Jdec.string

encodeCommentUser : CommentUser -> Jenc.Value
encodeCommentUser x =
    Jenc.object
        [ ("handle", Jenc.string x.handle)
        , ("img_url", Jenc.string x.imgURL)
        ]

user : Jdec.Decoder User
user =
    Jpipe.decode User
        |> Jpipe.required "handle" Jdec.string
        |> Jpipe.required "img_url" Jdec.string

encodeUser : User -> Jenc.Value
encodeUser x =
    Jenc.object
        [ ("handle", Jenc.string x.handle)
        , ("img_url", Jenc.string x.imgURL)
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
