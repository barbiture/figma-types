-- To decode the JSON data, add this file to your project, run
--
--     elm-package install NoRedInk/elm-decode-pipeline
--
-- add these imports
--
--     import Json.Decode exposing (decodeString)`);
--     import QuickType exposing (fileResponse, commentsResponse, commentRequest, projectsResponse, projectFilesResponse)
--
-- and you're off to the races with
--
--     decodeString fileResponse myJsonString
--     decodeString commentsResponse myJsonString
--     decodeString commentRequest myJsonString
--     decodeString projectsResponse myJsonString
--     decodeString projectFilesResponse myJsonString

module QuickType exposing
    ( FileResponse
    , fileResponseToString
    , fileResponse
    , CommentsResponse
    , commentsResponseToString
    , commentsResponse
    , CommentRequest
    , commentRequestToString
    , commentRequest
    , ProjectsResponse
    , projectsResponseToString
    , projectsResponse
    , ProjectFilesResponse
    , projectFilesResponseToString
    , projectFilesResponse
    , Component
    , Rect
    , Color
    , Vector
    , LayoutConstraint
    , Effect
    , Vector2
    , ExportSetting
    , Constraint
    , Paint
    , ColorStop
    , LayoutGrid
    , TypeStyle
    , Document
    , Comment
    , ClientMeta
    , User
    , Project
    , File
    , BlendMode(..)
    , Horizontal(..)
    , Vertical(..)
    , EffectType(..)
    , ConstraintType(..)
    , Format(..)
    , PaintType(..)
    , Alignment(..)
    , Pattern(..)
    , StrokeAlign(..)
    , TextAlignHorizontal(..)
    , TextAlignVertical(..)
    , NodeType(..)
    )

import Json.Decode as Jdec
import Json.Decode.Pipeline as Jpipe
import Json.Encode as Jenc
import Dict exposing (Dict, map, toList)
import Array exposing (Array, map)

{-| GET /v1/files/:key

> Description

Returns the document refered to by :key as a JSON object. The file key can be parsed from
any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
contains a Node of type DOCUMENT.

The "components" key contains a mapping from node IDs to component metadata. This is to
help you determine which components each instance comes from. Currently the only piece of
metadata available on components is the name of the component, but more properties will
be forthcoming.

> Path parameters

key String
File to export JSON from

components:
A mapping from node IDs to component metadata. This is to help you determine which
components each instance comes from. Currently the only piece of metadata available on
components is the name of the component, but more properties will be forthcoming.

document:
The root node within the document
-}
type alias FileResponse =
    { components : Dict String Component
    , document : Document
    , schemaVersion : Float
    }

{-| A node that can have instances created of it that share the same properties
A description of a master component. Helps you identify which component
instances are attached to

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

backgroundColor:
Background color of the node

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

children:
An array of nodes that are direct children of this node

clipsContent:
Does this node clip content outside of its bounds?

constraints:
Horizontal and vertical layout constraints for node

description:
The description of the component as entered in the editor

effects:
An array of effects attached to this node
(see effects section for more details)

exportSettings:
An array of export settings representing images to export from node

id:
a string uniquely identifying this node within the document

isMask:
Does this node mask sibling nodes in front of it?

layoutGrids:
An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

name:
The name of the component

opacity:
Opacity of the node

preserveRatio:
Keep height and width constrained to same ratio

transitionNodeID:
Node ID of node to transition to in prototyping

componentType:
the type of the node, refer to table below for details

visible:
whether or not the node is visible on the canvas
-}
type alias Component =
    { absoluteBoundingBox : Rect
    , backgroundColor : Color
    , blendMode : BlendMode
    , children : Array Vector
    , clipsContent : Bool
    , constraints : LayoutConstraint
    , description : String
    , effects : Array Effect
    , exportSettings : Array ExportSetting
    , id : String
    , isMask : Bool
    , layoutGrids : Array LayoutGrid
    , name : String
    , opacity : Float
    , preserveRatio : Bool
    , transitionNodeID : Maybe String
    , componentType : NodeType
    , visible : Bool
    }

{-| Bounding box of the node in absolute space coordinates

A rectangle that expresses a bounding box in absolute coordinates

height:
Height of the rectangle

width:
Width of the rectangle

x:
X coordinate of top left corner of the rectangle

y:
Y coordinate of top left corner of the rectangle
-}
type alias Rect =
    { height : Float
    , width : Float
    , x : Float
    , y : Float
    }

{-| Background color of the node

An RGBA color

Solid color of the paint

Background color of the canvas

Color attached to corresponding position

Color of the grid

a:
Alpha channel value, between 0 and 1

b:
Blue channel value, between 0 and 1

g:
Green channel value, between 0 and 1

r:
Red channel value, between 0 and 1
-}
type alias Color =
    { a : Float
    , b : Float
    , g : Float
    , r : Float
    }

{-| How this node blends with nodes behind it in the scene
(see blend mode section for more details)

Enum describing how layer blends with layers below
This type is a string enum with the following possible values
-}
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

{-| An array of nodes that are direct children of this node

An array of nodes that are being boolean operated on

An array of top level layers on the canvas

An array of canvases attached to the document

The root node within the document

Node Properties
The root node

Represents a single page

A node of fixed size containing other nodes

A logical grouping of nodes

A vector network, consisting of vertices and edges

A group that has a boolean operation applied to it

A regular star shape

A straight line

An ellipse

A regular n-sided polygon

A rectangle

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties
A description of a master component. Helps you identify which component
instances are attached to

An instance of a component, changes to the component result in the same
changes applied to the instance

children:
An array of canvases attached to the document

An array of top level layers on the canvas

An array of nodes that are direct children of this node

An array of nodes that are being boolean operated on

id:
a string uniquely identifying this node within the document

name:
the name given to the node by the user in the tool.

The name of the component

vectorType:
the type of the node, refer to table below for details

visible:
whether or not the node is visible on the canvas

backgroundColor:
Background color of the canvas

Background color of the node

exportSettings:
An array of export settings representing images to export from the canvas

An array of export settings representing images to export from node

An array of export settings representing images to export from this node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

clipsContent:
Does this node clip content outside of its bounds?

constraints:
Horizontal and vertical layout constraints for node

effects:
An array of effects attached to this node
(see effects section for more details)

isMask:
Does this node mask sibling nodes in front of it?

layoutGrids:
An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

preserveRatio:
Keep height and width constrained to same ratio

transitionNodeID:
Node ID of node to transition to in prototyping

fills:
An array of fill paints applied to the node

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokes:
An array of stroke paints applied to the node

strokeWeight:
The weight of strokes on the node

cornerRadius:
Radius of each corner of the rectangle

characters:
Text contained within text box

characterStyleOverrides:
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style

style:
Style of text including font family and weight (see type style
section for more information)

styleOverrideTable:
Map from ID to TypeStyle for looking up style overrides

description:
The description of the component as entered in the editor

componentID:
ID of component that this instance came from, refers to components
table (see endpoints section below)
-}
type alias Vector =
    { children : Maybe (Array Vector)
    , id : String
    , name : String
    , vectorType : NodeType
    , visible : Bool
    , backgroundColor : Maybe Color
    , exportSettings : Maybe (Array ExportSetting)
    , absoluteBoundingBox : Maybe Rect
    , blendMode : Maybe BlendMode
    , clipsContent : Maybe Bool
    , constraints : Maybe LayoutConstraint
    , effects : Maybe (Array Effect)
    , isMask : Maybe Bool
    , layoutGrids : Maybe (Array LayoutGrid)
    , opacity : Maybe Float
    , preserveRatio : Maybe Bool
    , transitionNodeID : Maybe String
    , fills : Maybe (Array Paint)
    , strokeAlign : Maybe StrokeAlign
    , strokes : Maybe (Array Paint)
    , strokeWeight : Maybe Float
    , cornerRadius : Maybe Float
    , characters : Maybe String
    , characterStyleOverrides : Maybe (Array Float)
    , style : Maybe TypeStyle
    , styleOverrideTable : Maybe (Array TypeStyle)
    , description : Maybe String
    , componentID : Maybe String
    }

{-| Horizontal and vertical layout constraints for node

Layout constraint relative to containing Frame

horizontal:
Horizontal constraint as an enum
"LEFT": Node is laid out relative to left of the containing frame
"RIGHT": Node is laid out relative to right of the containing frame
"CENTER": Node is horizontally centered relative to containing frame
"LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
(node stretches with frame)
"SCALE": Node scales horizontally with containing frame

vertical:
Vertical constraint as an enum
"TOP": Node is laid out relative to top of the containing frame
"BOTTOM": Node is laid out relative to bottom of the containing frame
"CENTER": Node is vertically centered relative to containing frame
"TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
(node stretches with frame)
"SCALE": Node scales vertically with containing frame
-}
type alias LayoutConstraint =
    { horizontal : Horizontal
    , vertical : Vertical
    }

{-| Horizontal constraint as an enum
"LEFT": Node is laid out relative to left of the containing frame
"RIGHT": Node is laid out relative to right of the containing frame
"CENTER": Node is horizontally centered relative to containing frame
"LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
(node stretches with frame)
"SCALE": Node scales horizontally with containing frame
-}
type Horizontal
    = HorizontalCENTER
    | HorizontalLEFT
    | HorizontalRIGHT
    | HorizontalSCALE
    | LeftRight

{-| Vertical constraint as an enum
"TOP": Node is laid out relative to top of the containing frame
"BOTTOM": Node is laid out relative to bottom of the containing frame
"CENTER": Node is vertically centered relative to containing frame
"TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
(node stretches with frame)
"SCALE": Node scales vertically with containing frame
-}
type Vertical
    = TopBottom
    | VerticalBOTTOM
    | VerticalCENTER
    | VerticalSCALE
    | VerticalTOP

{-| An array of effects attached to this node
(see effects section for more details)

A visual effect such as a shadow or blur

blendMode:
Enum describing how layer blends with layers below
This type is a string enum with the following possible values

color:
An RGBA color

offset:
A 2d vector

radius:
Radius of the blur effect (applies to shadows as well)

effectType:
Type of effect as a string enum

visible:
Is the effect active?
-}
type alias Effect =
    { blendMode : Maybe BlendMode
    , color : Maybe Color
    , offset : Maybe Vector2
    , radius : Float
    , effectType : EffectType
    , visible : Bool
    }

{-| Type of effect as a string enum -}
type EffectType
    = BackgroundBlur
    | DropShadow
    | InnerShadow
    | LayerBlur

{-| A 2d vector

This field contains three vectors, each of which are a position in
normalized object space (normalized object space is if the top left
corner of the bounding box of the object is (0, 0) and the bottom
right is (1,1)). The first position corresponds to the start of the
gradient (value 0 for the purposes of calculating gradient stops),
the second position is the end of the gradient (value 1), and the
third handle position determines the width of the gradient (only
relevant for non-linear gradients).

2d vector offset within the frame.

x:
X coordinate of the vector

y:
Y coordinate of the vector
-}
type alias Vector2 =
    { x : Float
    , y : Float
    }

{-| An array of export settings representing images to export from node

Format and size to export an asset at

An array of export settings representing images to export from the canvas

An array of export settings representing images to export from this node

constraint:
Constraint that determines sizing of exported asset

format:
Image type, string enum

suffix:
File suffix to append to all filenames
-}
type alias ExportSetting =
    { constraint : Constraint
    , format : Format
    , suffix : String
    }

{-| Constraint that determines sizing of exported asset

Sizing constraint for exports

constraintType:
Type of constraint to apply; string enum with potential values below
"SCALE": Scale by value
"WIDTH": Scale proportionally and set width to value
"HEIGHT": Scale proportionally and set height to value

value:
See type property for effect of this field
-}
type alias Constraint =
    { constraintType : ConstraintType
    , value : Float
    }

{-| Type of constraint to apply; string enum with potential values below
"SCALE": Scale by value
"WIDTH": Scale proportionally and set width to value
"HEIGHT": Scale proportionally and set height to value
-}
type ConstraintType
    = Height
    | TypeSCALE
    | Width

{-| Image type, string enum -}
type Format
    = Jpg
    | PNG
    | SVG

{-| An array of fill paints applied to the node

A solid color, gradient, or image texture that can be applied as fills or strokes

An array of stroke paints applied to the node

Paints applied to characters

color:
Solid color of the paint

gradientHandlePositions:
This field contains three vectors, each of which are a position in
normalized object space (normalized object space is if the top left
corner of the bounding box of the object is (0, 0) and the bottom
right is (1,1)). The first position corresponds to the start of the
gradient (value 0 for the purposes of calculating gradient stops),
the second position is the end of the gradient (value 1), and the
third handle position determines the width of the gradient (only
relevant for non-linear gradients).

gradientStops:
Positions of key points along the gradient axis with the colors
anchored there. Colors along the gradient are interpolated smoothly
between neighboring gradient stops.

opacity:
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)

scaleMode:
Image scaling mode

paintType:
Type of paint as a string enum

visible:
Is the paint enabled?
-}
type alias Paint =
    { color : Maybe Color
    , gradientHandlePositions : Maybe (Array Vector2)
    , gradientStops : Maybe (Array ColorStop)
    , opacity : Float
    , scaleMode : Maybe String
    , paintType : PaintType
    , visible : Bool
    }

{-| Positions of key points along the gradient axis with the colors
anchored there. Colors along the gradient are interpolated smoothly
between neighboring gradient stops.

A position color pair representing a gradient stop

color:
Color attached to corresponding position

position:
Value between 0 and 1 representing position along gradient axis
-}
type alias ColorStop =
    { color : Color
    , position : Float
    }

{-| Type of paint as a string enum -}
type PaintType
    = Emoji
    | GradientAngular
    | GradientDiamond
    | GradientLinear
    | GradientRadial
    | Image
    | Solid

{-| An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

Guides to align and place objects within a frame

alignment:
Positioning of grid as a string enum
"MIN": Grid starts at the left or top of the frame
"MAX": Grid starts at the right or bottom of the frame
"CENTER": Grid is center aligned

color:
Color of the grid

count:
Number of columns or rows

gutterSize:
Spacing in between columns and rows

offset:
Spacing before the first column or row

pattern:
Orientation of the grid as a string enum
"COLUMNS": Vertical grid
"ROWS": Horizontal grid
"GRID": Square grid

sectionSize:
Width of column grid or height of row grid or square grid spacing

visible:
Is the grid currently visible?
-}
type alias LayoutGrid =
    { alignment : Alignment
    , color : Color
    , count : Float
    , gutterSize : Float
    , offset : Float
    , pattern : Pattern
    , sectionSize : Float
    , visible : Bool
    }

{-| Positioning of grid as a string enum
"MIN": Grid starts at the left or top of the frame
"MAX": Grid starts at the right or bottom of the frame
"CENTER": Grid is center aligned
-}
type Alignment
    = AlignmentCENTER
    | Max
    | Min

{-| Orientation of the grid as a string enum
"COLUMNS": Vertical grid
"ROWS": Horizontal grid
"GRID": Square grid
-}
type Pattern
    = Columns
    | Grid
    | Rows

{-| Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary
-}
type StrokeAlign
    = Inside
    | Outside
    | StrokeAlignCENTER

{-| Map from ID to TypeStyle for looking up style overrides

Metadata for character formatting

Style of text including font family and weight (see type style
section for more information)

fills:
Paints applied to characters

fontFamily:
Font family of text (standard name)

fontPostScriptName:
PostScript font name

fontSize:
Font size in px

fontWeight:
Numeric font weight

italic:
Is text italicized?

letterSpacing:
Space between characters in px

lineHeightPercent:
Line height as a percentage of normal line height

lineHeightPx:
Line height in px

textAlignHorizontal:
Horizontal text alignment as string enum

textAlignVertical:
Vertical text alignment as string enum
-}
type alias TypeStyle =
    { fills : Array Paint
    , fontFamily : String
    , fontPostScriptName : String
    , fontSize : Float
    , fontWeight : Float
    , italic : Bool
    , letterSpacing : Float
    , lineHeightPercent : Float
    , lineHeightPx : Float
    , textAlignHorizontal : TextAlignHorizontal
    , textAlignVertical : TextAlignVertical
    }

{-| Horizontal text alignment as string enum -}
type TextAlignHorizontal
    = Justified
    | TextAlignHorizontalCENTER
    | TextAlignHorizontalLEFT
    | TextAlignHorizontalRIGHT

{-| Vertical text alignment as string enum -}
type TextAlignVertical
    = TextAlignVerticalBOTTOM
    | TextAlignVerticalCENTER
    | TextAlignVerticalTOP

{-| the type of the node, refer to table below for details -}
type NodeType
    = Boolean
    | Canvas
    | Ellipse
    | Frame
    | Group
    | Instance
    | Line
    | NodeTypeCOMPONENT
    | NodeTypeDOCUMENT
    | NodeTypeVECTOR
    | Rectangle
    | RegularPolygon
    | Slice
    | Star
    | Text

{-| The root node within the document

Node Properties
The root node

children:
An array of canvases attached to the document

id:
a string uniquely identifying this node within the document

name:
the name given to the node by the user in the tool.

documentType:
the type of the node, refer to table below for details

visible:
whether or not the node is visible on the canvas
-}
type alias Document =
    { children : Array Vector
    , id : String
    , name : String
    , documentType : NodeType
    , visible : Bool
    }

{-| GET /v1/files/:key/comments

> Description
A list of comments left on the file.

> Path parameters
key String
File to get comments from
-}
type alias CommentsResponse =
    { comments : Array Comment
    }

{-| A comment or reply left by a user

createdAt:
The time at which the comment was left

fileKey:
The file in which the comment lives

id:
Unique identifier for comment

message:
(MISSING IN DOCS)
The content of the comment

orderID:
Only set for top level comments. The number displayed with the
comment in the UI

parentID:
If present, the id of the comment to which this is the reply

resolvedAt:
If set, when the comment was resolved

user:
The user who left the comment
-}
type alias Comment =
    { clientMeta : ClientMeta
    , createdAt : String
    , fileKey : String
    , id : String
    , message : String
    , orderID : Float
    , parentID : String
    , resolvedAt : Maybe String
    , user : User
    }

{-| A 2d vector

This field contains three vectors, each of which are a position in
normalized object space (normalized object space is if the top left
corner of the bounding box of the object is (0, 0) and the bottom
right is (1,1)). The first position corresponds to the start of the
gradient (value 0 for the purposes of calculating gradient stops),
the second position is the end of the gradient (value 1), and the
third handle position determines the width of the gradient (only
relevant for non-linear gradients).

2d vector offset within the frame.

A relative offset within a frame

x:
X coordinate of the vector

y:
Y coordinate of the vector

nodeID:
Unique id specifying the frame.

nodeOffset:
2d vector offset within the frame.
-}
type alias ClientMeta =
    { x : Maybe Float
    , y : Maybe Float
    , nodeID : Maybe (Array String)
    , nodeOffset : Maybe Vector2
    }

{-| The user who left the comment

A description of a user
-}
type alias User =
    { handle : String
    , imgURL : String
    }

{-| POST /v1/files/:key/comments

> Description
Posts a new comment on the file.

> Path parameters
key String
File to get comments from

> Body parameters
message String
The text contents of the comment to post

client_meta Vector2 | FrameOffset
The position of where to place the comment. This can either be an absolute canvas
position or the relative position within a frame.

> Return value
The Comment that was successfully posted

> Error codes
404 The specified file was not found
-}
type alias CommentRequest =
    { clientMeta : ClientMeta
    , message : String
    }

{-| GET /v1/teams/:team_id/projects

> Description
Lists the projects for a specified team. Note that this will only return projects visible
to the authenticated user or owner of the developer token.

> Path parameters
team_id String
Id of the team to list projects from
-}
type alias ProjectsResponse =
    { projects : Array Project
    }

type alias Project =
    { id : Float
    , name : String
    }

{-| GET /v1/projects/:project_id/files

> Description
List the files in a given project.

> Path parameters
project_id String
Id of the project to list files from
-}
type alias ProjectFilesResponse =
    { files : Array File
    }

{-| lastModified:
utc date in iso8601
-}
type alias File =
    { key : String
    , lastModified : String
    , name : String
    , thumbnailURL : String
    }

-- decoders and encoders

fileResponseToString : FileResponse -> String
fileResponseToString r = Jenc.encode 0 (encodeFileResponse r)

commentsResponseToString : CommentsResponse -> String
commentsResponseToString r = Jenc.encode 0 (encodeCommentsResponse r)

commentRequestToString : CommentRequest -> String
commentRequestToString r = Jenc.encode 0 (encodeCommentRequest r)

projectsResponseToString : ProjectsResponse -> String
projectsResponseToString r = Jenc.encode 0 (encodeProjectsResponse r)

projectFilesResponseToString : ProjectFilesResponse -> String
projectFilesResponseToString r = Jenc.encode 0 (encodeProjectFilesResponse r)

fileResponse : Jdec.Decoder FileResponse
fileResponse =
    Jpipe.decode FileResponse
        |> Jpipe.required "components" (Jdec.dict component)
        |> Jpipe.required "document" document
        |> Jpipe.required "schemaVersion" Jdec.float

encodeFileResponse : FileResponse -> Jenc.Value
encodeFileResponse x =
    Jenc.object
        [ ("components", makeDictEncoder encodeComponent x.components)
        , ("document", encodeDocument x.document)
        , ("schemaVersion", Jenc.float x.schemaVersion)
        ]

component : Jdec.Decoder Component
component =
    Jpipe.decode Component
        |> Jpipe.required "absoluteBoundingBox" rect
        |> Jpipe.required "backgroundColor" color
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "children" (Jdec.array vector)
        |> Jpipe.required "clipsContent" Jdec.bool
        |> Jpipe.required "constraints" layoutConstraint
        |> Jpipe.required "description" Jdec.string
        |> Jpipe.required "effects" (Jdec.array effect)
        |> Jpipe.required "exportSettings" (Jdec.array exportSetting)
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "layoutGrids" (Jdec.array layoutGrid)
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "preserveRatio" Jdec.bool
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "type" nodeType
        |> Jpipe.required "visible" Jdec.bool

encodeComponent : Component -> Jenc.Value
encodeComponent x =
    Jenc.object
        [ ("absoluteBoundingBox", encodeRect x.absoluteBoundingBox)
        , ("backgroundColor", encodeColor x.backgroundColor)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("children", makeArrayEncoder encodeVector x.children)
        , ("clipsContent", Jenc.bool x.clipsContent)
        , ("constraints", encodeLayoutConstraint x.constraints)
        , ("description", Jenc.string x.description)
        , ("effects", makeArrayEncoder encodeEffect x.effects)
        , ("exportSettings", makeArrayEncoder encodeExportSetting x.exportSettings)
        , ("id", Jenc.string x.id)
        , ("isMask", Jenc.bool x.isMask)
        , ("layoutGrids", makeArrayEncoder encodeLayoutGrid x.layoutGrids)
        , ("name", Jenc.string x.name)
        , ("opacity", Jenc.float x.opacity)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("type", encodeNodeType x.componentType)
        , ("visible", Jenc.bool x.visible)
        ]

rect : Jdec.Decoder Rect
rect =
    Jpipe.decode Rect
        |> Jpipe.required "height" Jdec.float
        |> Jpipe.required "width" Jdec.float
        |> Jpipe.required "x" Jdec.float
        |> Jpipe.required "y" Jdec.float

encodeRect : Rect -> Jenc.Value
encodeRect x =
    Jenc.object
        [ ("height", Jenc.float x.height)
        , ("width", Jenc.float x.width)
        , ("x", Jenc.float x.x)
        , ("y", Jenc.float x.y)
        ]

color : Jdec.Decoder Color
color =
    Jpipe.decode Color
        |> Jpipe.required "a" Jdec.float
        |> Jpipe.required "b" Jdec.float
        |> Jpipe.required "g" Jdec.float
        |> Jpipe.required "r" Jdec.float

encodeColor : Color -> Jenc.Value
encodeColor x =
    Jenc.object
        [ ("a", Jenc.float x.a)
        , ("b", Jenc.float x.b)
        , ("g", Jenc.float x.g)
        , ("r", Jenc.float x.r)
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

vector : Jdec.Decoder Vector
vector =
    Jpipe.decode Vector
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array vector)) Nothing
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "type" nodeType
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.optional "backgroundColor" (Jdec.nullable color) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSetting)) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable rect) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable layoutConstraint) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effect)) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGrid)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paint)) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paint)) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "style" (Jdec.nullable typeStyle) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.array typeStyle)) Nothing
        |> Jpipe.optional "description" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodeVector : Vector -> Jenc.Value
encodeVector x =
    Jenc.object
        [ ("children", makeNullableEncoder (makeArrayEncoder encodeVector) x.children)
        , ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("type", encodeNodeType x.vectorType)
        , ("visible", Jenc.bool x.visible)
        , ("backgroundColor", makeNullableEncoder encodeColor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSetting) x.exportSettings)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRect x.absoluteBoundingBox)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("constraints", makeNullableEncoder encodeLayoutConstraint x.constraints)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffect) x.effects)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGrid) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaint) x.fills)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaint) x.strokes)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("style", makeNullableEncoder encodeTypeStyle x.style)
        , ("styleOverrideTable", makeNullableEncoder (makeArrayEncoder encodeTypeStyle) x.styleOverrideTable)
        , ("description", makeNullableEncoder Jenc.string x.description)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
        ]

layoutConstraint : Jdec.Decoder LayoutConstraint
layoutConstraint =
    Jpipe.decode LayoutConstraint
        |> Jpipe.required "horizontal" horizontal
        |> Jpipe.required "vertical" vertical

encodeLayoutConstraint : LayoutConstraint -> Jenc.Value
encodeLayoutConstraint x =
    Jenc.object
        [ ("horizontal", encodeHorizontal x.horizontal)
        , ("vertical", encodeVertical x.vertical)
        ]

horizontal : Jdec.Decoder Horizontal
horizontal =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "CENTER" -> Jdec.succeed HorizontalCENTER
                "LEFT" -> Jdec.succeed HorizontalLEFT
                "RIGHT" -> Jdec.succeed HorizontalRIGHT
                "SCALE" -> Jdec.succeed HorizontalSCALE
                "LEFT_RIGHT" -> Jdec.succeed LeftRight
                somethingElse -> Jdec.fail <| "Invalid Horizontal: " ++ somethingElse
        )

encodeHorizontal : Horizontal -> Jenc.Value
encodeHorizontal x = case x of
    HorizontalCENTER -> Jenc.string "CENTER"
    HorizontalLEFT -> Jenc.string "LEFT"
    HorizontalRIGHT -> Jenc.string "RIGHT"
    HorizontalSCALE -> Jenc.string "SCALE"
    LeftRight -> Jenc.string "LEFT_RIGHT"

vertical : Jdec.Decoder Vertical
vertical =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "TOP_BOTTOM" -> Jdec.succeed TopBottom
                "BOTTOM" -> Jdec.succeed VerticalBOTTOM
                "CENTER" -> Jdec.succeed VerticalCENTER
                "SCALE" -> Jdec.succeed VerticalSCALE
                "TOP" -> Jdec.succeed VerticalTOP
                somethingElse -> Jdec.fail <| "Invalid Vertical: " ++ somethingElse
        )

encodeVertical : Vertical -> Jenc.Value
encodeVertical x = case x of
    TopBottom -> Jenc.string "TOP_BOTTOM"
    VerticalBOTTOM -> Jenc.string "BOTTOM"
    VerticalCENTER -> Jenc.string "CENTER"
    VerticalSCALE -> Jenc.string "SCALE"
    VerticalTOP -> Jenc.string "TOP"

effect : Jdec.Decoder Effect
effect =
    Jpipe.decode Effect
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "color" (Jdec.nullable color) Nothing
        |> Jpipe.optional "offset" (Jdec.nullable vector2) Nothing
        |> Jpipe.required "radius" Jdec.float
        |> Jpipe.required "type" effectType
        |> Jpipe.required "visible" Jdec.bool

encodeEffect : Effect -> Jenc.Value
encodeEffect x =
    Jenc.object
        [ ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("color", makeNullableEncoder encodeColor x.color)
        , ("offset", makeNullableEncoder encodeVector2 x.offset)
        , ("radius", Jenc.float x.radius)
        , ("type", encodeEffectType x.effectType)
        , ("visible", Jenc.bool x.visible)
        ]

effectType : Jdec.Decoder EffectType
effectType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "BACKGROUND_BLUR" -> Jdec.succeed BackgroundBlur
                "DROP_SHADOW" -> Jdec.succeed DropShadow
                "INNER_SHADOW" -> Jdec.succeed InnerShadow
                "LAYER_BLUR" -> Jdec.succeed LayerBlur
                somethingElse -> Jdec.fail <| "Invalid EffectType: " ++ somethingElse
        )

encodeEffectType : EffectType -> Jenc.Value
encodeEffectType x = case x of
    BackgroundBlur -> Jenc.string "BACKGROUND_BLUR"
    DropShadow -> Jenc.string "DROP_SHADOW"
    InnerShadow -> Jenc.string "INNER_SHADOW"
    LayerBlur -> Jenc.string "LAYER_BLUR"

vector2 : Jdec.Decoder Vector2
vector2 =
    Jpipe.decode Vector2
        |> Jpipe.required "x" Jdec.float
        |> Jpipe.required "y" Jdec.float

encodeVector2 : Vector2 -> Jenc.Value
encodeVector2 x =
    Jenc.object
        [ ("x", Jenc.float x.x)
        , ("y", Jenc.float x.y)
        ]

exportSetting : Jdec.Decoder ExportSetting
exportSetting =
    Jpipe.decode ExportSetting
        |> Jpipe.required "constraint" constraint
        |> Jpipe.required "format" format
        |> Jpipe.required "suffix" Jdec.string

encodeExportSetting : ExportSetting -> Jenc.Value
encodeExportSetting x =
    Jenc.object
        [ ("constraint", encodeConstraint x.constraint)
        , ("format", encodeFormat x.format)
        , ("suffix", Jenc.string x.suffix)
        ]

constraint : Jdec.Decoder Constraint
constraint =
    Jpipe.decode Constraint
        |> Jpipe.required "type" constraintType
        |> Jpipe.required "value" Jdec.float

encodeConstraint : Constraint -> Jenc.Value
encodeConstraint x =
    Jenc.object
        [ ("type", encodeConstraintType x.constraintType)
        , ("value", Jenc.float x.value)
        ]

constraintType : Jdec.Decoder ConstraintType
constraintType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "HEIGHT" -> Jdec.succeed Height
                "SCALE" -> Jdec.succeed TypeSCALE
                "WIDTH" -> Jdec.succeed Width
                somethingElse -> Jdec.fail <| "Invalid ConstraintType: " ++ somethingElse
        )

encodeConstraintType : ConstraintType -> Jenc.Value
encodeConstraintType x = case x of
    Height -> Jenc.string "HEIGHT"
    TypeSCALE -> Jenc.string "SCALE"
    Width -> Jenc.string "WIDTH"

format : Jdec.Decoder Format
format =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "JPG" -> Jdec.succeed Jpg
                "PNG" -> Jdec.succeed PNG
                "SVG" -> Jdec.succeed SVG
                somethingElse -> Jdec.fail <| "Invalid Format: " ++ somethingElse
        )

encodeFormat : Format -> Jenc.Value
encodeFormat x = case x of
    Jpg -> Jenc.string "JPG"
    PNG -> Jenc.string "PNG"
    SVG -> Jenc.string "SVG"

paint : Jdec.Decoder Paint
paint =
    Jpipe.decode Paint
        |> Jpipe.optional "color" (Jdec.nullable color) Nothing
        |> Jpipe.optional "gradientHandlePositions" (Jdec.nullable (Jdec.array vector2)) Nothing
        |> Jpipe.optional "gradientStops" (Jdec.nullable (Jdec.array colorStop)) Nothing
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.optional "scaleMode" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "type" paintType
        |> Jpipe.required "visible" Jdec.bool

encodePaint : Paint -> Jenc.Value
encodePaint x =
    Jenc.object
        [ ("color", makeNullableEncoder encodeColor x.color)
        , ("gradientHandlePositions", makeNullableEncoder (makeArrayEncoder encodeVector2) x.gradientHandlePositions)
        , ("gradientStops", makeNullableEncoder (makeArrayEncoder encodeColorStop) x.gradientStops)
        , ("opacity", Jenc.float x.opacity)
        , ("scaleMode", makeNullableEncoder Jenc.string x.scaleMode)
        , ("type", encodePaintType x.paintType)
        , ("visible", Jenc.bool x.visible)
        ]

colorStop : Jdec.Decoder ColorStop
colorStop =
    Jpipe.decode ColorStop
        |> Jpipe.required "color" color
        |> Jpipe.required "position" Jdec.float

encodeColorStop : ColorStop -> Jenc.Value
encodeColorStop x =
    Jenc.object
        [ ("color", encodeColor x.color)
        , ("position", Jenc.float x.position)
        ]

paintType : Jdec.Decoder PaintType
paintType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "EMOJI" -> Jdec.succeed Emoji
                "GRADIENT_ANGULAR" -> Jdec.succeed GradientAngular
                "GRADIENT_DIAMOND" -> Jdec.succeed GradientDiamond
                "GRADIENT_LINEAR" -> Jdec.succeed GradientLinear
                "GRADIENT_RADIAL" -> Jdec.succeed GradientRadial
                "IMAGE" -> Jdec.succeed Image
                "SOLID" -> Jdec.succeed Solid
                somethingElse -> Jdec.fail <| "Invalid PaintType: " ++ somethingElse
        )

encodePaintType : PaintType -> Jenc.Value
encodePaintType x = case x of
    Emoji -> Jenc.string "EMOJI"
    GradientAngular -> Jenc.string "GRADIENT_ANGULAR"
    GradientDiamond -> Jenc.string "GRADIENT_DIAMOND"
    GradientLinear -> Jenc.string "GRADIENT_LINEAR"
    GradientRadial -> Jenc.string "GRADIENT_RADIAL"
    Image -> Jenc.string "IMAGE"
    Solid -> Jenc.string "SOLID"

layoutGrid : Jdec.Decoder LayoutGrid
layoutGrid =
    Jpipe.decode LayoutGrid
        |> Jpipe.required "alignment" alignment
        |> Jpipe.required "color" color
        |> Jpipe.required "count" Jdec.float
        |> Jpipe.required "gutterSize" Jdec.float
        |> Jpipe.required "offset" Jdec.float
        |> Jpipe.required "pattern" pattern
        |> Jpipe.required "sectionSize" Jdec.float
        |> Jpipe.required "visible" Jdec.bool

encodeLayoutGrid : LayoutGrid -> Jenc.Value
encodeLayoutGrid x =
    Jenc.object
        [ ("alignment", encodeAlignment x.alignment)
        , ("color", encodeColor x.color)
        , ("count", Jenc.float x.count)
        , ("gutterSize", Jenc.float x.gutterSize)
        , ("offset", Jenc.float x.offset)
        , ("pattern", encodePattern x.pattern)
        , ("sectionSize", Jenc.float x.sectionSize)
        , ("visible", Jenc.bool x.visible)
        ]

alignment : Jdec.Decoder Alignment
alignment =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "CENTER" -> Jdec.succeed AlignmentCENTER
                "MAX" -> Jdec.succeed Max
                "MIN" -> Jdec.succeed Min
                somethingElse -> Jdec.fail <| "Invalid Alignment: " ++ somethingElse
        )

encodeAlignment : Alignment -> Jenc.Value
encodeAlignment x = case x of
    AlignmentCENTER -> Jenc.string "CENTER"
    Max -> Jenc.string "MAX"
    Min -> Jenc.string "MIN"

pattern : Jdec.Decoder Pattern
pattern =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "COLUMNS" -> Jdec.succeed Columns
                "GRID" -> Jdec.succeed Grid
                "ROWS" -> Jdec.succeed Rows
                somethingElse -> Jdec.fail <| "Invalid Pattern: " ++ somethingElse
        )

encodePattern : Pattern -> Jenc.Value
encodePattern x = case x of
    Columns -> Jenc.string "COLUMNS"
    Grid -> Jenc.string "GRID"
    Rows -> Jenc.string "ROWS"

strokeAlign : Jdec.Decoder StrokeAlign
strokeAlign =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "INSIDE" -> Jdec.succeed Inside
                "OUTSIDE" -> Jdec.succeed Outside
                "CENTER" -> Jdec.succeed StrokeAlignCENTER
                somethingElse -> Jdec.fail <| "Invalid StrokeAlign: " ++ somethingElse
        )

encodeStrokeAlign : StrokeAlign -> Jenc.Value
encodeStrokeAlign x = case x of
    Inside -> Jenc.string "INSIDE"
    Outside -> Jenc.string "OUTSIDE"
    StrokeAlignCENTER -> Jenc.string "CENTER"

typeStyle : Jdec.Decoder TypeStyle
typeStyle =
    Jpipe.decode TypeStyle
        |> Jpipe.required "fills" (Jdec.array paint)
        |> Jpipe.required "fontFamily" Jdec.string
        |> Jpipe.required "fontPostScriptName" Jdec.string
        |> Jpipe.required "fontSize" Jdec.float
        |> Jpipe.required "fontWeight" Jdec.float
        |> Jpipe.required "italic" Jdec.bool
        |> Jpipe.required "letterSpacing" Jdec.float
        |> Jpipe.required "lineHeightPercent" Jdec.float
        |> Jpipe.required "lineHeightPx" Jdec.float
        |> Jpipe.required "textAlignHorizontal" textAlignHorizontal
        |> Jpipe.required "textAlignVertical" textAlignVertical

encodeTypeStyle : TypeStyle -> Jenc.Value
encodeTypeStyle x =
    Jenc.object
        [ ("fills", makeArrayEncoder encodePaint x.fills)
        , ("fontFamily", Jenc.string x.fontFamily)
        , ("fontPostScriptName", Jenc.string x.fontPostScriptName)
        , ("fontSize", Jenc.float x.fontSize)
        , ("fontWeight", Jenc.float x.fontWeight)
        , ("italic", Jenc.bool x.italic)
        , ("letterSpacing", Jenc.float x.letterSpacing)
        , ("lineHeightPercent", Jenc.float x.lineHeightPercent)
        , ("lineHeightPx", Jenc.float x.lineHeightPx)
        , ("textAlignHorizontal", encodeTextAlignHorizontal x.textAlignHorizontal)
        , ("textAlignVertical", encodeTextAlignVertical x.textAlignVertical)
        ]

textAlignHorizontal : Jdec.Decoder TextAlignHorizontal
textAlignHorizontal =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "JUSTIFIED" -> Jdec.succeed Justified
                "CENTER" -> Jdec.succeed TextAlignHorizontalCENTER
                "LEFT" -> Jdec.succeed TextAlignHorizontalLEFT
                "RIGHT" -> Jdec.succeed TextAlignHorizontalRIGHT
                somethingElse -> Jdec.fail <| "Invalid TextAlignHorizontal: " ++ somethingElse
        )

encodeTextAlignHorizontal : TextAlignHorizontal -> Jenc.Value
encodeTextAlignHorizontal x = case x of
    Justified -> Jenc.string "JUSTIFIED"
    TextAlignHorizontalCENTER -> Jenc.string "CENTER"
    TextAlignHorizontalLEFT -> Jenc.string "LEFT"
    TextAlignHorizontalRIGHT -> Jenc.string "RIGHT"

textAlignVertical : Jdec.Decoder TextAlignVertical
textAlignVertical =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "BOTTOM" -> Jdec.succeed TextAlignVerticalBOTTOM
                "CENTER" -> Jdec.succeed TextAlignVerticalCENTER
                "TOP" -> Jdec.succeed TextAlignVerticalTOP
                somethingElse -> Jdec.fail <| "Invalid TextAlignVertical: " ++ somethingElse
        )

encodeTextAlignVertical : TextAlignVertical -> Jenc.Value
encodeTextAlignVertical x = case x of
    TextAlignVerticalBOTTOM -> Jenc.string "BOTTOM"
    TextAlignVerticalCENTER -> Jenc.string "CENTER"
    TextAlignVerticalTOP -> Jenc.string "TOP"

nodeType : Jdec.Decoder NodeType
nodeType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "BOOLEAN" -> Jdec.succeed Boolean
                "CANVAS" -> Jdec.succeed Canvas
                "ELLIPSE" -> Jdec.succeed Ellipse
                "FRAME" -> Jdec.succeed Frame
                "GROUP" -> Jdec.succeed Group
                "INSTANCE" -> Jdec.succeed Instance
                "LINE" -> Jdec.succeed Line
                "COMPONENT" -> Jdec.succeed NodeTypeCOMPONENT
                "DOCUMENT" -> Jdec.succeed NodeTypeDOCUMENT
                "VECTOR" -> Jdec.succeed NodeTypeVECTOR
                "RECTANGLE" -> Jdec.succeed Rectangle
                "REGULAR_POLYGON" -> Jdec.succeed RegularPolygon
                "SLICE" -> Jdec.succeed Slice
                "STAR" -> Jdec.succeed Star
                "TEXT" -> Jdec.succeed Text
                somethingElse -> Jdec.fail <| "Invalid NodeType: " ++ somethingElse
        )

encodeNodeType : NodeType -> Jenc.Value
encodeNodeType x = case x of
    Boolean -> Jenc.string "BOOLEAN"
    Canvas -> Jenc.string "CANVAS"
    Ellipse -> Jenc.string "ELLIPSE"
    Frame -> Jenc.string "FRAME"
    Group -> Jenc.string "GROUP"
    Instance -> Jenc.string "INSTANCE"
    Line -> Jenc.string "LINE"
    NodeTypeCOMPONENT -> Jenc.string "COMPONENT"
    NodeTypeDOCUMENT -> Jenc.string "DOCUMENT"
    NodeTypeVECTOR -> Jenc.string "VECTOR"
    Rectangle -> Jenc.string "RECTANGLE"
    RegularPolygon -> Jenc.string "REGULAR_POLYGON"
    Slice -> Jenc.string "SLICE"
    Star -> Jenc.string "STAR"
    Text -> Jenc.string "TEXT"

document : Jdec.Decoder Document
document =
    Jpipe.decode Document
        |> Jpipe.required "children" (Jdec.array vector)
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "type" nodeType
        |> Jpipe.required "visible" Jdec.bool

encodeDocument : Document -> Jenc.Value
encodeDocument x =
    Jenc.object
        [ ("children", makeArrayEncoder encodeVector x.children)
        , ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("type", encodeNodeType x.documentType)
        , ("visible", Jenc.bool x.visible)
        ]

commentsResponse : Jdec.Decoder CommentsResponse
commentsResponse =
    Jpipe.decode CommentsResponse
        |> Jpipe.required "comments" (Jdec.array comment)

encodeCommentsResponse : CommentsResponse -> Jenc.Value
encodeCommentsResponse x =
    Jenc.object
        [ ("comments", makeArrayEncoder encodeComment x.comments)
        ]

comment : Jdec.Decoder Comment
comment =
    Jpipe.decode Comment
        |> Jpipe.required "client_meta" clientMeta
        |> Jpipe.required "created_at" Jdec.string
        |> Jpipe.required "file_key" Jdec.string
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "message" Jdec.string
        |> Jpipe.required "order_id" Jdec.float
        |> Jpipe.required "parent_id" Jdec.string
        |> Jpipe.optional "resolved_at" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "user" user

encodeComment : Comment -> Jenc.Value
encodeComment x =
    Jenc.object
        [ ("client_meta", encodeClientMeta x.clientMeta)
        , ("created_at", Jenc.string x.createdAt)
        , ("file_key", Jenc.string x.fileKey)
        , ("id", Jenc.string x.id)
        , ("message", Jenc.string x.message)
        , ("order_id", Jenc.float x.orderID)
        , ("parent_id", Jenc.string x.parentID)
        , ("resolved_at", makeNullableEncoder Jenc.string x.resolvedAt)
        , ("user", encodeUser x.user)
        ]

clientMeta : Jdec.Decoder ClientMeta
clientMeta =
    Jpipe.decode ClientMeta
        |> Jpipe.optional "x" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "y" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "node_id" (Jdec.nullable (Jdec.array Jdec.string)) Nothing
        |> Jpipe.optional "node_offset" (Jdec.nullable vector2) Nothing

encodeClientMeta : ClientMeta -> Jenc.Value
encodeClientMeta x =
    Jenc.object
        [ ("x", makeNullableEncoder Jenc.float x.x)
        , ("y", makeNullableEncoder Jenc.float x.y)
        , ("node_id", makeNullableEncoder (makeArrayEncoder Jenc.string) x.nodeID)
        , ("node_offset", makeNullableEncoder encodeVector2 x.nodeOffset)
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

commentRequest : Jdec.Decoder CommentRequest
commentRequest =
    Jpipe.decode CommentRequest
        |> Jpipe.required "client_meta" clientMeta
        |> Jpipe.required "message" Jdec.string

encodeCommentRequest : CommentRequest -> Jenc.Value
encodeCommentRequest x =
    Jenc.object
        [ ("client_meta", encodeClientMeta x.clientMeta)
        , ("message", Jenc.string x.message)
        ]

projectsResponse : Jdec.Decoder ProjectsResponse
projectsResponse =
    Jpipe.decode ProjectsResponse
        |> Jpipe.required "projects" (Jdec.array project)

encodeProjectsResponse : ProjectsResponse -> Jenc.Value
encodeProjectsResponse x =
    Jenc.object
        [ ("projects", makeArrayEncoder encodeProject x.projects)
        ]

project : Jdec.Decoder Project
project =
    Jpipe.decode Project
        |> Jpipe.required "id" Jdec.float
        |> Jpipe.required "name" Jdec.string

encodeProject : Project -> Jenc.Value
encodeProject x =
    Jenc.object
        [ ("id", Jenc.float x.id)
        , ("name", Jenc.string x.name)
        ]

projectFilesResponse : Jdec.Decoder ProjectFilesResponse
projectFilesResponse =
    Jpipe.decode ProjectFilesResponse
        |> Jpipe.required "files" (Jdec.array file)

encodeProjectFilesResponse : ProjectFilesResponse -> Jenc.Value
encodeProjectFilesResponse x =
    Jenc.object
        [ ("files", makeArrayEncoder encodeFile x.files)
        ]

file : Jdec.Decoder File
file =
    Jpipe.decode File
        |> Jpipe.required "key" Jdec.string
        |> Jpipe.required "last_modified" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "thumbnail_url" Jdec.string

encodeFile : File -> Jenc.Value
encodeFile x =
    Jenc.object
        [ ("key", Jenc.string x.key)
        , ("last_modified", Jenc.string x.lastModified)
        , ("name", Jenc.string x.name)
        , ("thumbnail_url", Jenc.string x.thumbnailURL)
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
