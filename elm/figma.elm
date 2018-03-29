-- To decode the JSON data, add this file to your project, run
--
--     elm-package install NoRedInk/elm-decode-pipeline
--
-- add these imports
--
--     import Json.Decode exposing (decodeString)`);
--     import QuickType exposing (node, color, global, user, blendMode, canvas, document, constraint, comment)
--
-- and you're off to the races with
--
--     decodeString node myJsonString
--     decodeString color myJsonString
--     decodeString global myJsonString
--     decodeString user myJsonString
--     decodeString blendMode myJsonString
--     decodeString canvas myJsonString
--     decodeString document myJsonString
--     decodeString constraint myJsonString
--     decodeString comment myJsonString

module QuickType exposing
    ( Node
    , nodeToString
    , node
    , Color
    , colorToString
    , color
    , Global
    , globalToString
    , global
    , User
    , userToString
    , user
    , BlendMode
    , blendModeToString
    , blendMode
    , Canvas
    , canvasToString
    , canvas
    , Document
    , documentToString
    , document
    , Constraint
    , constraintToString
    , constraint
    , Comment
    , commentToString
    , comment
    , NodeColor
    , NodeNode
    , PurpleNode
    , FluffyNode
    , CommentUser
    , NodeType(..)
    , ConstraintType(..)
    )

import Json.Decode as Jdec
import Json.Decode.Pipeline as Jpipe
import Json.Encode as Jenc
import Dict exposing (Dict, map, toList)
import Array exposing (Array, map)

{-| An array of canvases attached to the document

Properties are shared across all nodes

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

See type property for effect of this field

Whether or not the node is visible on the canvas

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

nodeType:
The type of the node

children:
An array of canvases attached to the document

An array of top level layers on the canvas

backgroundColor:
Background color of the canvas
-}
type alias Node =
    { id : String
    , name : String
    , visible : Bool
    , nodeType : NodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe NodeColor
    }

{-| An RGBA color

Background color of the canvas

r:
Red channel value, between 0 and 1

g:
Green channel value, between 0 and 1

b:
Blue channel value, between 0 and 1

a:
Alpha channel value, between 0 and 1
-}
type alias NodeColor =
    { r : Float
    , g : Float
    , b : Float
    , a : Float
    }

{-| An array of canvases attached to the document

Properties are shared across all nodes

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

See type property for effect of this field

Whether or not the node is visible on the canvas

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

An array of top level layers on the canvas

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

nodeType:
The type of the node

children:
An array of canvases attached to the document

An array of top level layers on the canvas

backgroundColor:
Background color of the canvas
-}
type alias NodeNode =
    { id : String
    , name : String
    , visible : Bool
    , nodeType : NodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe NodeColor
    }

{-| The type of the node -}
type NodeType
    = Boolean
    | Component
    | Ellipse
    | Frame
    | Group
    | Instance
    | Line
    | Rectangle
    | RegularPolygon
    | Slice
    | Star
    | Text
    | TypeCANVAS
    | TypeDOCUMENT
    | Vector

{-| An RGBA color

r:
Red channel value, between 0 and 1

g:
Green channel value, between 0 and 1

b:
Blue channel value, between 0 and 1

a:
Alpha channel value, between 0 and 1
-}
type alias Color =
    { r : Float
    , g : Float
    , b : Float
    , a : Float
    }

{-| Properties are shared across all nodes

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

globalType:
The type of the node
-}
type alias Global =
    { id : String
    , name : String
    , visible : Bool
    , globalType : NodeType
    }

{-| A description of a user -}
type alias User =
    { handle : String
    , imgURL : String
    }

{-| Enum describing how layer blends with layers below -}
type BlendMode
    = BlendModeCOLOR
    | ColorBurn
    | ColorDodge
    | Darken
    | Difference
    | Exclusion
    | HardLight
    | Hue
    | Lighten
    | LinearBurn
    | LinearDodge
    | Luminosity
    | Multiply
    | Normal
    | Overlay
    | PassThrough
    | Saturation
    | Screen
    | SoftLight

{-| An array of canvases attached to the document

Properties are shared across all nodes

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

See type property for effect of this field

Whether or not the node is visible on the canvas

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

canvasType:
The type of the node

children:
An array of top level layers on the canvas

backgroundColor:
Background color of the canvas
-}
type alias Canvas =
    { id : String
    , name : String
    , visible : Bool
    , canvasType : NodeType
    , children : Maybe (Array PurpleNode)
    , backgroundColor : Maybe NodeColor
    }

{-| An array of top level layers on the canvas

An array of canvases attached to the document

Properties are shared across all nodes

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

See type property for effect of this field

Whether or not the node is visible on the canvas

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

nodeType:
The type of the node

children:
An array of canvases attached to the document

An array of top level layers on the canvas

backgroundColor:
Background color of the canvas
-}
type alias PurpleNode =
    { id : String
    , name : String
    , visible : Bool
    , nodeType : NodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe NodeColor
    }

{-| An array of canvases attached to the document

Properties are shared across all nodes

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

See type property for effect of this field

Whether or not the node is visible on the canvas

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

documentType:
The type of the node

children:
An array of canvases attached to the document
-}
type alias Document =
    { id : String
    , name : String
    , visible : Bool
    , documentType : NodeType
    , children : Maybe (Array FluffyNode)
    }

{-| An array of canvases attached to the document

Properties are shared across all nodes

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

See type property for effect of this field

Whether or not the node is visible on the canvas

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

nodeType:
The type of the node

children:
An array of canvases attached to the document

An array of top level layers on the canvas

backgroundColor:
Background color of the canvas
-}
type alias FluffyNode =
    { id : String
    , name : String
    , visible : Bool
    , nodeType : NodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe NodeColor
    }

{-| Sizing constraint for exports

constraintType:
Type of constraint to apply; string enum with potential values below

* "SCALE": Scale by value
* "WIDTH": Scale proportionally and set width to value
* "HEIGHT": Scale proportionally and set height to value

value:
See type property for effect of this field
-}
type alias Constraint =
    { constraintType : ConstraintType
    , value : Maybe Float
    }

{-| Type of constraint to apply; string enum with potential values below

* "SCALE": Scale by value
* "WIDTH": Scale proportionally and set width to value
* "HEIGHT": Scale proportionally and set height to value
-}
type ConstraintType
    = Height
    | Scale
    | Width

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

-- decoders and encoders

nodeToString : Node -> String
nodeToString r = Jenc.encode 0 (encodeNode r)

colorToString : Color -> String
colorToString r = Jenc.encode 0 (encodeColor r)

globalToString : Global -> String
globalToString r = Jenc.encode 0 (encodeGlobal r)

userToString : User -> String
userToString r = Jenc.encode 0 (encodeUser r)

blendModeToString : BlendMode -> String
blendModeToString r = Jenc.encode 0 (encodeBlendMode r)

canvasToString : Canvas -> String
canvasToString r = Jenc.encode 0 (encodeCanvas r)

documentToString : Document -> String
documentToString r = Jenc.encode 0 (encodeDocument r)

constraintToString : Constraint -> String
constraintToString r = Jenc.encode 0 (encodeConstraint r)

commentToString : Comment -> String
commentToString r = Jenc.encode 0 (encodeComment r)

node : Jdec.Decoder Node
node =
    Jpipe.decode Node
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" nodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable nodeColor) Nothing

encodeNode : Node -> Jenc.Value
encodeNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeNodeColor x.backgroundColor)
        ]

nodeColor : Jdec.Decoder NodeColor
nodeColor =
    Jpipe.decode NodeColor
        |> Jpipe.required "r" Jdec.float
        |> Jpipe.required "g" Jdec.float
        |> Jpipe.required "b" Jdec.float
        |> Jpipe.required "a" Jdec.float

encodeNodeColor : NodeColor -> Jenc.Value
encodeNodeColor x =
    Jenc.object
        [ ("r", Jenc.float x.r)
        , ("g", Jenc.float x.g)
        , ("b", Jenc.float x.b)
        , ("a", Jenc.float x.a)
        ]

nodeNode : Jdec.Decoder NodeNode
nodeNode =
    Jpipe.decode NodeNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" nodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable nodeColor) Nothing

encodeNodeNode : NodeNode -> Jenc.Value
encodeNodeNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeNodeColor x.backgroundColor)
        ]

nodeType : Jdec.Decoder NodeType
nodeType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "BOOLEAN" -> Jdec.succeed Boolean
                "COMPONENT" -> Jdec.succeed Component
                "ELLIPSE" -> Jdec.succeed Ellipse
                "FRAME" -> Jdec.succeed Frame
                "GROUP" -> Jdec.succeed Group
                "INSTANCE" -> Jdec.succeed Instance
                "LINE" -> Jdec.succeed Line
                "RECTANGLE" -> Jdec.succeed Rectangle
                "REGULAR_POLYGON" -> Jdec.succeed RegularPolygon
                "SLICE" -> Jdec.succeed Slice
                "STAR" -> Jdec.succeed Star
                "TEXT" -> Jdec.succeed Text
                "CANVAS" -> Jdec.succeed TypeCANVAS
                "DOCUMENT" -> Jdec.succeed TypeDOCUMENT
                "VECTOR" -> Jdec.succeed Vector
                somethingElse -> Jdec.fail <| "Invalid NodeType: " ++ somethingElse
        )

encodeNodeType : NodeType -> Jenc.Value
encodeNodeType x = case x of
    Boolean -> Jenc.string "BOOLEAN"
    Component -> Jenc.string "COMPONENT"
    Ellipse -> Jenc.string "ELLIPSE"
    Frame -> Jenc.string "FRAME"
    Group -> Jenc.string "GROUP"
    Instance -> Jenc.string "INSTANCE"
    Line -> Jenc.string "LINE"
    Rectangle -> Jenc.string "RECTANGLE"
    RegularPolygon -> Jenc.string "REGULAR_POLYGON"
    Slice -> Jenc.string "SLICE"
    Star -> Jenc.string "STAR"
    Text -> Jenc.string "TEXT"
    TypeCANVAS -> Jenc.string "CANVAS"
    TypeDOCUMENT -> Jenc.string "DOCUMENT"
    Vector -> Jenc.string "VECTOR"

color : Jdec.Decoder Color
color =
    Jpipe.decode Color
        |> Jpipe.required "r" Jdec.float
        |> Jpipe.required "g" Jdec.float
        |> Jpipe.required "b" Jdec.float
        |> Jpipe.required "a" Jdec.float

encodeColor : Color -> Jenc.Value
encodeColor x =
    Jenc.object
        [ ("r", Jenc.float x.r)
        , ("g", Jenc.float x.g)
        , ("b", Jenc.float x.b)
        , ("a", Jenc.float x.a)
        ]

global : Jdec.Decoder Global
global =
    Jpipe.decode Global
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" nodeType

encodeGlobal : Global -> Jenc.Value
encodeGlobal x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeNodeType x.globalType)
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

blendMode : Jdec.Decoder BlendMode
blendMode =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "COLOR" -> Jdec.succeed BlendModeCOLOR
                "COLOR_BURN" -> Jdec.succeed ColorBurn
                "COLOR_DODGE" -> Jdec.succeed ColorDodge
                "DARKEN" -> Jdec.succeed Darken
                "DIFFERENCE" -> Jdec.succeed Difference
                "EXCLUSION" -> Jdec.succeed Exclusion
                "HARD_LIGHT" -> Jdec.succeed HardLight
                "HUE" -> Jdec.succeed Hue
                "LIGHTEN" -> Jdec.succeed Lighten
                "LINEAR_BURN" -> Jdec.succeed LinearBurn
                "LINEAR_DODGE" -> Jdec.succeed LinearDodge
                "LUMINOSITY" -> Jdec.succeed Luminosity
                "MULTIPLY" -> Jdec.succeed Multiply
                "NORMAL" -> Jdec.succeed Normal
                "OVERLAY" -> Jdec.succeed Overlay
                "PASS_THROUGH" -> Jdec.succeed PassThrough
                "SATURATION" -> Jdec.succeed Saturation
                "SCREEN" -> Jdec.succeed Screen
                "SOFT_LIGHT" -> Jdec.succeed SoftLight
                somethingElse -> Jdec.fail <| "Invalid BlendMode: " ++ somethingElse
        )

encodeBlendMode : BlendMode -> Jenc.Value
encodeBlendMode x = case x of
    BlendModeCOLOR -> Jenc.string "COLOR"
    ColorBurn -> Jenc.string "COLOR_BURN"
    ColorDodge -> Jenc.string "COLOR_DODGE"
    Darken -> Jenc.string "DARKEN"
    Difference -> Jenc.string "DIFFERENCE"
    Exclusion -> Jenc.string "EXCLUSION"
    HardLight -> Jenc.string "HARD_LIGHT"
    Hue -> Jenc.string "HUE"
    Lighten -> Jenc.string "LIGHTEN"
    LinearBurn -> Jenc.string "LINEAR_BURN"
    LinearDodge -> Jenc.string "LINEAR_DODGE"
    Luminosity -> Jenc.string "LUMINOSITY"
    Multiply -> Jenc.string "MULTIPLY"
    Normal -> Jenc.string "NORMAL"
    Overlay -> Jenc.string "OVERLAY"
    PassThrough -> Jenc.string "PASS_THROUGH"
    Saturation -> Jenc.string "SATURATION"
    Screen -> Jenc.string "SCREEN"
    SoftLight -> Jenc.string "SOFT_LIGHT"

canvas : Jdec.Decoder Canvas
canvas =
    Jpipe.decode Canvas
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" nodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array purpleNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable nodeColor) Nothing

encodeCanvas : Canvas -> Jenc.Value
encodeCanvas x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeNodeType x.canvasType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodePurpleNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeNodeColor x.backgroundColor)
        ]

purpleNode : Jdec.Decoder PurpleNode
purpleNode =
    Jpipe.decode PurpleNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" nodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable nodeColor) Nothing

encodePurpleNode : PurpleNode -> Jenc.Value
encodePurpleNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeNodeColor x.backgroundColor)
        ]

document : Jdec.Decoder Document
document =
    Jpipe.decode Document
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" nodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array fluffyNode)) Nothing

encodeDocument : Document -> Jenc.Value
encodeDocument x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeNodeType x.documentType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeFluffyNode) x.children)
        ]

fluffyNode : Jdec.Decoder FluffyNode
fluffyNode =
    Jpipe.decode FluffyNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" nodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable nodeColor) Nothing

encodeFluffyNode : FluffyNode -> Jenc.Value
encodeFluffyNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeNodeColor x.backgroundColor)
        ]

constraint : Jdec.Decoder Constraint
constraint =
    Jpipe.decode Constraint
        |> Jpipe.required "type" constraintType
        |> Jpipe.optional "value" (Jdec.nullable Jdec.float) Nothing

encodeConstraint : Constraint -> Jenc.Value
encodeConstraint x =
    Jenc.object
        [ ("type", encodeConstraintType x.constraintType)
        , ("value", makeNullableEncoder Jenc.float x.value)
        ]

constraintType : Jdec.Decoder ConstraintType
constraintType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "HEIGHT" -> Jdec.succeed Height
                "SCALE" -> Jdec.succeed Scale
                "WIDTH" -> Jdec.succeed Width
                somethingElse -> Jdec.fail <| "Invalid ConstraintType: " ++ somethingElse
        )

encodeConstraintType : ConstraintType -> Jenc.Value
encodeConstraintType x = case x of
    Height -> Jenc.string "HEIGHT"
    Scale -> Jenc.string "SCALE"
    Width -> Jenc.string "WIDTH"

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
