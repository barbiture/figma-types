-- To decode the JSON data, add this file to your project, run
--
--     elm-package install NoRedInk/elm-decode-pipeline
--
-- add these imports
--
--     import Json.Decode exposing (decodeString)`);
--     import QuickType exposing (fileResponse)
--
-- and you're off to the races with
--
--     decodeString fileResponse myJsonString

module QuickType exposing
    ( FileResponse
    , fileResponseToString
    , fileResponse
    , Component
    , Rectangle
    , Color
    , PurpleNode
    , NodeNode
    , LayoutConstraint
    , Effect
    , Vector2D
    , ExportSetting
    , Constraint
    , Paint
    , ColorStop
    , LayoutGrid
    , TypeStyle
    , Document
    , FluffyNode
    , BlendMode(..)
    , Horizontal(..)
    , Vertical(..)
    , EffectType(..)
    , ConstraintType(..)
    , Format(..)
    , PaintType(..)
    , ScaleMode(..)
    , Alignment(..)
    , Pattern(..)
    , NodeType(..)
    , StrokeAlign(..)
    , TextAlignHorizontal(..)
    , TextAlignVertical(..)
    )

import Json.Decode as Jdec
import Json.Decode.Pipeline as Jpipe
import Json.Encode as Jenc
import Dict exposing (Dict, map, toList)
import Array exposing (Array, map)

{-| GET /v1/files/:key

Returns the document refered to by :key as a JSON object. The file key can be parsed from
any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
contains a Node of type DOCUMENT.

document:
The root node within the document

components:
A mapping from node IDs to component metadata. This is to help you determine which
components each instance comes from. Currently the only piece of metadata available on
components is the name of the component, but more properties will be forthcoming.
-}
type alias FileResponse =
    { document : Document
    , components : Dict String Component
    , schemaVersion : Float
    }

{-| A mapping from node IDs to component metadata. This is to help you determine which
components each instance comes from. Currently the only piece of metadata available on
components is the name of the component, but more properties will be forthcoming.

A node that can have instances created of it that share the same properties

An array of canvases attached to the document

Properties are shared across all nodes

The root node within the document

A rectangular region of the canvas that can be exported

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

See type property for effect of this field

X coordinate of the vector

Y coordinate of the vector

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Opacity of the node

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the grid currently visible?

Does this node mask sibling nodes in front of it?

Does this node clip content outside of its bounds?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the paint enabled?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

File suffix to append to all filenames

Node ID of node to transition to in prototyping

A group that has a boolean operation applied to it

A text box

Text contained within text box

PostScript font name

Font family of text (standard name)

An instance of a component, changes to the component result in the same changes applied
to the instance

ID of component that this instance came from, refers to components table (see endpoints
section below)

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

componentType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section for more
details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

transitionID:
Node ID of node to transition to in prototyping

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

backgroundColor:
Background color of the node

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

clipsContent:
Does this node clip content outside of its bounds?

exportSettings:
An array of export settings representing images to export from node

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

children:
An array of nodes that are direct children of this node
-}
type alias Component =
    { id : String
    , name : String
    , visible : Bool
    , componentType : NodeType
    , effects : Array Effect
    , layoutGrids : Array LayoutGrid
    , opacity : Float
    , transitionID : Maybe String
    , absoluteBoundingBox : Rectangle
    , blendMode : BlendMode
    , backgroundColor : Color
    , constraints : LayoutConstraint
    , isMask : Bool
    , clipsContent : Bool
    , exportSettings : Array ExportSetting
    , preserveRatio : Bool
    , children : Array PurpleNode
    }

{-| A rectangle that expresses a bounding box in absolute coordinates

Bounding box of the node in absolute space coordinates

An array of canvases attached to the document

x:
X coordinate of top left corner of the rectangle

y:
Y coordinate of top left corner of the rectangle

width:
Width of the rectangle

height:
Height of the rectangle
-}
type alias Rectangle =
    { x : Float
    , y : Float
    , width : Float
    , height : Float
    }

{-| An RGBA color

Background color of the canvas

See type property for effect of this field

Color of the grid

Background color of the node

(For solid paints) Solid color of the paint

Color attached to corresponding position

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

{-| Enum describing how layer blends with layers below

See type property for effect of this field

How this node blends with nodes behind it in the scene (see blend mode section for more
details)
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

An array of canvases attached to the document

The root node within the document

Properties are shared across all nodes

A rectangular region of the canvas that can be exported

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

See type property for effect of this field

X coordinate of the vector

Y coordinate of the vector

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Opacity of the node

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the grid currently visible?

Does this node mask sibling nodes in front of it?

Does this node clip content outside of its bounds?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the paint enabled?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

File suffix to append to all filenames

Node ID of node to transition to in prototyping

A group that has a boolean operation applied to it

A text box

Text contained within text box

PostScript font name

Font family of text (standard name)

An instance of a component, changes to the component result in the same changes applied
to the instance

ID of component that this instance came from, refers to components table (see endpoints
section below)

A logical grouping of nodes

A regular star shape

A straight line

An ellipse

A regular n-sided polygon

A rectangle that expresses a bounding box in absolute coordinates

Bounding box of the node in absolute space coordinates

A node that can have instances created of it that share the same properties

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

An array of nodes that are direct children of this node

An array of nodes that are being boolean operated on

backgroundColor:
Background color of the canvas

Background color of the node

exportSettings:
An array of export settings representing images to export from the canvas

An array of export settings representing images to export from node

A rectangular region of the canvas that can be exported

effects:
An array of effects attached to this node (see effects section for more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section for more
details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

transitionID:
Node ID of node to transition to in prototyping

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

clipsContent:
Does this node clip content outside of its bounds?

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

strokes:
An array of stroke paints applied to the node

x:
X coordinate of top left corner of the rectangle

y:
Y coordinate of top left corner of the rectangle

width:
Width of the rectangle

height:
Height of the rectangle

characters:
Text contained within text box

style:
Style of text including font family and weight (see type style section for more
information)

characterStyleOverrides:
Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

styleOverrideTable:
Map from ID to TypeStyle for looking up style overrides

componentID:
ID of component that this instance came from, refers to components table (see endpoints
section below)
-}
type alias PurpleNode =
    { id : Maybe String
    , name : Maybe String
    , visible : Maybe Bool
    , nodeType : Maybe NodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe Color
    , exportSettings : Maybe (Array ExportSetting)
    , effects : Maybe (Array Effect)
    , layoutGrids : Maybe (Array LayoutGrid)
    , opacity : Maybe Float
    , transitionID : Maybe String
    , absoluteBoundingBox : Maybe Rectangle
    , blendMode : Maybe BlendMode
    , constraints : Maybe LayoutConstraint
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , preserveRatio : Maybe Bool
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array Paint)
    , strokes : Maybe (Array Paint)
    , x : Maybe Float
    , y : Maybe Float
    , width : Maybe Float
    , height : Maybe Float
    , characters : Maybe String
    , style : Maybe TypeStyle
    , characterStyleOverrides : Maybe (Array Float)
    , styleOverrideTable : Maybe (Dict String TypeStyle)
    , componentID : Maybe String
    }

{-| An array of canvases attached to the document

The root node within the document

Properties are shared across all nodes

A rectangular region of the canvas that can be exported

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

See type property for effect of this field

X coordinate of the vector

Y coordinate of the vector

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Opacity of the node

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the grid currently visible?

Does this node mask sibling nodes in front of it?

Does this node clip content outside of its bounds?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the paint enabled?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

File suffix to append to all filenames

Node ID of node to transition to in prototyping

A group that has a boolean operation applied to it

A text box

Text contained within text box

PostScript font name

Font family of text (standard name)

An instance of a component, changes to the component result in the same changes applied
to the instance

ID of component that this instance came from, refers to components table (see endpoints
section below)

A logical grouping of nodes

A regular star shape

A straight line

An ellipse

A regular n-sided polygon

A rectangle that expresses a bounding box in absolute coordinates

Bounding box of the node in absolute space coordinates

A node that can have instances created of it that share the same properties

An array of top level layers on the canvas

An array of nodes that are direct children of this node

An array of nodes that are being boolean operated on

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

An array of nodes that are direct children of this node

An array of nodes that are being boolean operated on

backgroundColor:
Background color of the canvas

Background color of the node

exportSettings:
An array of export settings representing images to export from the canvas

An array of export settings representing images to export from node

A rectangular region of the canvas that can be exported

effects:
An array of effects attached to this node (see effects section for more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section for more
details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

transitionID:
Node ID of node to transition to in prototyping

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

clipsContent:
Does this node clip content outside of its bounds?

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

strokes:
An array of stroke paints applied to the node

x:
X coordinate of top left corner of the rectangle

y:
Y coordinate of top left corner of the rectangle

width:
Width of the rectangle

height:
Height of the rectangle

characters:
Text contained within text box

style:
Style of text including font family and weight (see type style section for more
information)

characterStyleOverrides:
Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

styleOverrideTable:
Map from ID to TypeStyle for looking up style overrides

componentID:
ID of component that this instance came from, refers to components table (see endpoints
section below)
-}
type alias NodeNode =
    { id : Maybe String
    , name : Maybe String
    , visible : Maybe Bool
    , nodeType : Maybe NodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe Color
    , exportSettings : Maybe (Array ExportSetting)
    , effects : Maybe (Array Effect)
    , layoutGrids : Maybe (Array LayoutGrid)
    , opacity : Maybe Float
    , transitionID : Maybe String
    , absoluteBoundingBox : Maybe Rectangle
    , blendMode : Maybe BlendMode
    , constraints : Maybe LayoutConstraint
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , preserveRatio : Maybe Bool
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array Paint)
    , strokes : Maybe (Array Paint)
    , x : Maybe Float
    , y : Maybe Float
    , width : Maybe Float
    , height : Maybe Float
    , characters : Maybe String
    , style : Maybe TypeStyle
    , characterStyleOverrides : Maybe (Array Float)
    , styleOverrideTable : Maybe (Dict String TypeStyle)
    , componentID : Maybe String
    }

{-| Layout constraint relative to containing Frame

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

vertical:
* TOP: Node is laid out relative to top of the containing frame
* BOTTOM: Node is laid out relative to bottom of the containing frame
* CENTER: Node is vertically centered relative to containing frame
* TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
(node stretches with frame)
* SCALE: Node scales vertically with containing frame

horizontal:
* LEFT: Node is laid out relative to left of the containing frame
* RIGHT: Node is laid out relative to right of the containing frame
* CENTER: Node is horizontally centered relative to containing frame
* LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
(node stretches with frame)
* SCALE: Node scales horizontally with containing frame
-}
type alias LayoutConstraint =
    { vertical : Vertical
    , horizontal : Horizontal
    }

{-| * LEFT: Node is laid out relative to left of the containing frame
* RIGHT: Node is laid out relative to right of the containing frame
* CENTER: Node is horizontally centered relative to containing frame
* LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
(node stretches with frame)
* SCALE: Node scales horizontally with containing frame
-}
type Horizontal
    = HorizontalCENTER
    | HorizontalLEFT
    | HorizontalRIGHT
    | HorizontalSCALE
    | LeftRight

{-| * TOP: Node is laid out relative to top of the containing frame
* BOTTOM: Node is laid out relative to bottom of the containing frame
* CENTER: Node is vertically centered relative to containing frame
* TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
(node stretches with frame)
* SCALE: Node scales vertically with containing frame
-}
type Vertical
    = TopBottom
    | VerticalBOTTOM
    | VerticalCENTER
    | VerticalSCALE
    | VerticalTOP

{-| A visual effect such as a shadow or blur

An array of effects attached to this node (see effects section for more details)

effectType:
Type of effect as a string enum

radius:
See type property for effect of this field

visible:
See type property for effect of this field

color:
See type property for effect of this field

blendMode:
See type property for effect of this field

offset:
See type property for effect of this field
-}
type alias Effect =
    { effectType : EffectType
    , radius : Float
    , visible : Bool
    , color : Color
    , blendMode : BlendMode
    , offset : Vector2D
    }

{-| Type of effect as a string enum -}
type EffectType
    = BackgroundBlur
    | DropShadow
    | InnerShadow
    | LayerBlur

{-| A 2d vector

See type property for effect of this field

(For gradient paints) This field contains three vectors, each of which are a position in
normalized object space (normalized object space is if the top left corner of the
bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
corresponds to the start of the gradient (value 0 for the purposes of calculating
gradient stops), the second position is the end of the gradient (value 1), and the third
handle position determines the width of the gradient (only relevant for non-linear
gradients).

x:
X coordinate of the vector

y:
Y coordinate of the vector
-}
type alias Vector2D =
    { x : Float
    , y : Float
    }

{-| Format and size to export an asset at

An array of export settings representing images to export from the canvas

An array of export settings representing images to export from node

A rectangular region of the canvas that can be exported

suffix:
File suffix to append to all filenames

format:
Type of constraint to apply; string enum with potential values below

* "SCALE": Scale by value
* "WIDTH": Scale proportionally and set width to value
* "HEIGHT": Scale proportionally and set height to value

constraint:
Constraint that determines sizing of exported asset
-}
type alias ExportSetting =
    { suffix : String
    , format : Format
    , constraint : Constraint
    }

{-| Sizing constraint for exports

Constraint that determines sizing of exported asset

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
    | TypeSCALE
    | Width

{-| Type of constraint to apply; string enum with potential values below

* "SCALE": Scale by value
* "WIDTH": Scale proportionally and set width to value
* "HEIGHT": Scale proportionally and set height to value
-}
type Format
    = Jpg
    | PNG
    | SVG

{-| A solid color, gradient, or image texture that can be applied as fills or strokes

An array of fill paints applied to the node

An array of stroke paints applied to the node

Paints applied to characters

paintType:
Type of paint as a string enum

visible:
Is the paint enabled?

opacity:
Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

color:
(For solid paints) Solid color of the paint

gradientHandlePositions:
(For gradient paints) This field contains three vectors, each of which are a position in
normalized object space (normalized object space is if the top left corner of the
bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
corresponds to the start of the gradient (value 0 for the purposes of calculating
gradient stops), the second position is the end of the gradient (value 1), and the third
handle position determines the width of the gradient (only relevant for non-linear
gradients).

gradientStops:
(For gradient paints) Positions of key points along the gradient axis with the colors
anchored there. Colors along the gradient are interpolated smoothly between neighboring
gradient stops.

scaleMode:
(For image paints) Image scaling mode
-}
type alias Paint =
    { paintType : PaintType
    , visible : Bool
    , opacity : Float
    , color : Maybe Color
    , gradientHandlePositions : Maybe (Array Vector2D)
    , gradientStops : Maybe (Array ColorStop)
    , scaleMode : Maybe ScaleMode
    }

{-| A position color pair representing a gradient stop

(For gradient paints) Positions of key points along the gradient axis with the colors
anchored there. Colors along the gradient are interpolated smoothly between neighboring
gradient stops.

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

{-| (For image paints) Image scaling mode -}
type ScaleMode
    = Fill
    | Fit
    | Stretch
    | Tile

{-| Guides to align and place objects within a frame

An array of layout grids attached to this node (see layout grids section for more
details). GROUP nodes do not have this attribute

pattern:
* COLUMNS: Vertical grid
* ROWS: Horizontal grid
* GRID: Square grid

sectionSize:
Width of column grid or height of row grid or square grid spacing

visible:
Is the grid currently visible?

color:
Color of the grid

alignment:
Positioning of grid as a string enum

* MIN: Grid starts at the left or top of the frame
* MAX: Grid starts at the right or bottom of the frame
* CENTER: Grid is center aligned

gutterSize:
Spacing in between columns and rows

offset:
Spacing before the first column or row

count:
Number of columns or rows
-}
type alias LayoutGrid =
    { pattern : Pattern
    , sectionSize : Float
    , visible : Bool
    , color : Color
    , alignment : Alignment
    , gutterSize : Float
    , offset : Float
    , count : Float
    }

{-| Positioning of grid as a string enum

* MIN: Grid starts at the left or top of the frame
* MAX: Grid starts at the right or bottom of the frame
* CENTER: Grid is center aligned
-}
type Alignment
    = AlignmentCENTER
    | Max
    | Min

{-| * COLUMNS: Vertical grid
* ROWS: Horizontal grid
* GRID: Square grid
-}
type Pattern
    = Columns
    | Grid
    | Rows

{-| The type of the node -}
type NodeType
    = Boolean
    | Canvas
    | Ellipse
    | Frame
    | Group
    | Instance
    | Line
    | RegularPolygon
    | Slice
    | Star
    | Text
    | TypeCOMPONENT
    | TypeDOCUMENT
    | TypeRECTANGLE
    | Vector

{-| Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary
-}
type StrokeAlign
    = Inside
    | Outside
    | StrokeAlignCENTER

{-| Metadata for character formatting

Style of text including font family and weight (see type style section for more
information)

Map from ID to TypeStyle for looking up style overrides

lineHeightPx:
Line height in px

fontPostScriptName:
PostScript font name

fontWeight:
Numeric font weight

lineHeightPercent:
Line height as a percentage of normal line height

textAlignVertical:
Vertical text alignment as string enum

fontSize:
Font size in px

italic:
Is text italicized?

fills:
Paints applied to characters

fontFamily:
Font family of text (standard name)

textAlignHorizontal:
Horizontal text alignment as string enum

letterSpacing:
Space between characters in px
-}
type alias TypeStyle =
    { lineHeightPx : Float
    , fontPostScriptName : String
    , fontWeight : Float
    , lineHeightPercent : Float
    , textAlignVertical : TextAlignVertical
    , fontSize : Float
    , italic : Bool
    , fills : Array Paint
    , fontFamily : String
    , textAlignHorizontal : TextAlignHorizontal
    , letterSpacing : Float
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

{-| The root node within the document

Properties are shared across all nodes

An array of canvases attached to the document

A rectangular region of the canvas that can be exported

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

See type property for effect of this field

X coordinate of the vector

Y coordinate of the vector

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Opacity of the node

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the grid currently visible?

Does this node mask sibling nodes in front of it?

Does this node clip content outside of its bounds?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the paint enabled?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

File suffix to append to all filenames

Node ID of node to transition to in prototyping

A group that has a boolean operation applied to it

A text box

Text contained within text box

PostScript font name

Font family of text (standard name)

An instance of a component, changes to the component result in the same changes applied
to the instance

ID of component that this instance came from, refers to components table (see endpoints
section below)

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
    , children : Array FluffyNode
    }

{-| An array of canvases attached to the document

The root node within the document

Properties are shared across all nodes

A rectangular region of the canvas that can be exported

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

See type property for effect of this field

X coordinate of the vector

Y coordinate of the vector

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Opacity of the node

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the grid currently visible?

Does this node mask sibling nodes in front of it?

Does this node clip content outside of its bounds?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the paint enabled?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

File suffix to append to all filenames

Node ID of node to transition to in prototyping

A group that has a boolean operation applied to it

A text box

Text contained within text box

PostScript font name

Font family of text (standard name)

An instance of a component, changes to the component result in the same changes applied
to the instance

ID of component that this instance came from, refers to components table (see endpoints
section below)

A logical grouping of nodes

A regular star shape

A straight line

An ellipse

A regular n-sided polygon

A rectangle that expresses a bounding box in absolute coordinates

Bounding box of the node in absolute space coordinates

A node that can have instances created of it that share the same properties

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

An array of nodes that are direct children of this node

An array of nodes that are being boolean operated on

backgroundColor:
Background color of the canvas

Background color of the node

exportSettings:
An array of export settings representing images to export from the canvas

An array of export settings representing images to export from node

A rectangular region of the canvas that can be exported

effects:
An array of effects attached to this node (see effects section for more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section for more
details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

transitionID:
Node ID of node to transition to in prototyping

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

clipsContent:
Does this node clip content outside of its bounds?

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

strokes:
An array of stroke paints applied to the node

x:
X coordinate of top left corner of the rectangle

y:
Y coordinate of top left corner of the rectangle

width:
Width of the rectangle

height:
Height of the rectangle

characters:
Text contained within text box

style:
Style of text including font family and weight (see type style section for more
information)

characterStyleOverrides:
Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

styleOverrideTable:
Map from ID to TypeStyle for looking up style overrides

componentID:
ID of component that this instance came from, refers to components table (see endpoints
section below)
-}
type alias FluffyNode =
    { id : Maybe String
    , name : Maybe String
    , visible : Maybe Bool
    , nodeType : Maybe NodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe Color
    , exportSettings : Maybe (Array ExportSetting)
    , effects : Maybe (Array Effect)
    , layoutGrids : Maybe (Array LayoutGrid)
    , opacity : Maybe Float
    , transitionID : Maybe String
    , absoluteBoundingBox : Maybe Rectangle
    , blendMode : Maybe BlendMode
    , constraints : Maybe LayoutConstraint
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , preserveRatio : Maybe Bool
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array Paint)
    , strokes : Maybe (Array Paint)
    , x : Maybe Float
    , y : Maybe Float
    , width : Maybe Float
    , height : Maybe Float
    , characters : Maybe String
    , style : Maybe TypeStyle
    , characterStyleOverrides : Maybe (Array Float)
    , styleOverrideTable : Maybe (Dict String TypeStyle)
    , componentID : Maybe String
    }

-- decoders and encoders

fileResponseToString : FileResponse -> String
fileResponseToString r = Jenc.encode 0 (encodeFileResponse r)

fileResponse : Jdec.Decoder FileResponse
fileResponse =
    Jpipe.decode FileResponse
        |> Jpipe.required "document" document
        |> Jpipe.required "components" (Jdec.dict component)
        |> Jpipe.required "schemaVersion" Jdec.float

encodeFileResponse : FileResponse -> Jenc.Value
encodeFileResponse x =
    Jenc.object
        [ ("document", encodeDocument x.document)
        , ("components", makeDictEncoder encodeComponent x.components)
        , ("schemaVersion", Jenc.float x.schemaVersion)
        ]

component : Jdec.Decoder Component
component =
    Jpipe.decode Component
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" nodeType
        |> Jpipe.required "effects" (Jdec.array effect)
        |> Jpipe.required "layoutGrids" (Jdec.array layoutGrid)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.optional "transitionID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "absoluteBoundingBox" rectangle
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "backgroundColor" color
        |> Jpipe.required "constraints" layoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "clipsContent" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSetting)
        |> Jpipe.required "preserveRatio" Jdec.bool
        |> Jpipe.required "children" (Jdec.array purpleNode)

encodeComponent : Component -> Jenc.Value
encodeComponent x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeNodeType x.componentType)
        , ("effects", makeArrayEncoder encodeEffect x.effects)
        , ("layoutGrids", makeArrayEncoder encodeLayoutGrid x.layoutGrids)
        , ("opacity", Jenc.float x.opacity)
        , ("transitionID", makeNullableEncoder Jenc.string x.transitionID)
        , ("absoluteBoundingBox", encodeRectangle x.absoluteBoundingBox)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("backgroundColor", encodeColor x.backgroundColor)
        , ("constraints", encodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("clipsContent", Jenc.bool x.clipsContent)
        , ("exportSettings", makeArrayEncoder encodeExportSetting x.exportSettings)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        , ("children", makeArrayEncoder encodePurpleNode x.children)
        ]

rectangle : Jdec.Decoder Rectangle
rectangle =
    Jpipe.decode Rectangle
        |> Jpipe.required "x" Jdec.float
        |> Jpipe.required "y" Jdec.float
        |> Jpipe.required "width" Jdec.float
        |> Jpipe.required "height" Jdec.float

encodeRectangle : Rectangle -> Jenc.Value
encodeRectangle x =
    Jenc.object
        [ ("x", Jenc.float x.x)
        , ("y", Jenc.float x.y)
        , ("width", Jenc.float x.width)
        , ("height", Jenc.float x.height)
        ]

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

purpleNode : Jdec.Decoder PurpleNode
purpleNode =
    Jpipe.decode PurpleNode
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable color) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSetting)) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effect)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGrid)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "transitionID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable rectangle) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable layoutConstraint) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paint)) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paint)) Nothing
        |> Jpipe.optional "x" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "y" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "width" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "height" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "style" (Jdec.nullable typeStyle) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.dict typeStyle)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodePurpleNode : PurpleNode -> Jenc.Value
encodePurpleNode x =
    Jenc.object
        [ ("id", makeNullableEncoder Jenc.string x.id)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("type", makeNullableEncoder encodeNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeColor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSetting) x.exportSettings)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffect) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGrid) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("transitionID", makeNullableEncoder Jenc.string x.transitionID)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRectangle x.absoluteBoundingBox)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeLayoutConstraint x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaint) x.fills)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaint) x.strokes)
        , ("x", makeNullableEncoder Jenc.float x.x)
        , ("y", makeNullableEncoder Jenc.float x.y)
        , ("width", makeNullableEncoder Jenc.float x.width)
        , ("height", makeNullableEncoder Jenc.float x.height)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("style", makeNullableEncoder encodeTypeStyle x.style)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("styleOverrideTable", makeNullableEncoder (makeDictEncoder encodeTypeStyle) x.styleOverrideTable)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
        ]

nodeNode : Jdec.Decoder NodeNode
nodeNode =
    Jpipe.decode NodeNode
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable color) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSetting)) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effect)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGrid)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "transitionID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable rectangle) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable layoutConstraint) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paint)) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paint)) Nothing
        |> Jpipe.optional "x" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "y" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "width" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "height" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "style" (Jdec.nullable typeStyle) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.dict typeStyle)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodeNodeNode : NodeNode -> Jenc.Value
encodeNodeNode x =
    Jenc.object
        [ ("id", makeNullableEncoder Jenc.string x.id)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("type", makeNullableEncoder encodeNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeColor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSetting) x.exportSettings)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffect) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGrid) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("transitionID", makeNullableEncoder Jenc.string x.transitionID)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRectangle x.absoluteBoundingBox)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeLayoutConstraint x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaint) x.fills)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaint) x.strokes)
        , ("x", makeNullableEncoder Jenc.float x.x)
        , ("y", makeNullableEncoder Jenc.float x.y)
        , ("width", makeNullableEncoder Jenc.float x.width)
        , ("height", makeNullableEncoder Jenc.float x.height)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("style", makeNullableEncoder encodeTypeStyle x.style)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("styleOverrideTable", makeNullableEncoder (makeDictEncoder encodeTypeStyle) x.styleOverrideTable)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
        ]

layoutConstraint : Jdec.Decoder LayoutConstraint
layoutConstraint =
    Jpipe.decode LayoutConstraint
        |> Jpipe.required "vertical" vertical
        |> Jpipe.required "horizontal" horizontal

encodeLayoutConstraint : LayoutConstraint -> Jenc.Value
encodeLayoutConstraint x =
    Jenc.object
        [ ("vertical", encodeVertical x.vertical)
        , ("horizontal", encodeHorizontal x.horizontal)
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
        |> Jpipe.required "type" effectType
        |> Jpipe.required "radius" Jdec.float
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "color" color
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "offset" vector2D

encodeEffect : Effect -> Jenc.Value
encodeEffect x =
    Jenc.object
        [ ("type", encodeEffectType x.effectType)
        , ("radius", Jenc.float x.radius)
        , ("visible", Jenc.bool x.visible)
        , ("color", encodeColor x.color)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("offset", encodeVector2D x.offset)
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

vector2D : Jdec.Decoder Vector2D
vector2D =
    Jpipe.decode Vector2D
        |> Jpipe.required "x" Jdec.float
        |> Jpipe.required "y" Jdec.float

encodeVector2D : Vector2D -> Jenc.Value
encodeVector2D x =
    Jenc.object
        [ ("x", Jenc.float x.x)
        , ("y", Jenc.float x.y)
        ]

exportSetting : Jdec.Decoder ExportSetting
exportSetting =
    Jpipe.decode ExportSetting
        |> Jpipe.required "suffix" Jdec.string
        |> Jpipe.required "format" format
        |> Jpipe.required "constraint" constraint

encodeExportSetting : ExportSetting -> Jenc.Value
encodeExportSetting x =
    Jenc.object
        [ ("suffix", Jenc.string x.suffix)
        , ("format", encodeFormat x.format)
        , ("constraint", encodeConstraint x.constraint)
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
        |> Jpipe.required "type" paintType
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.optional "color" (Jdec.nullable color) Nothing
        |> Jpipe.optional "gradientHandlePositions" (Jdec.nullable (Jdec.array vector2D)) Nothing
        |> Jpipe.optional "gradientStops" (Jdec.nullable (Jdec.array colorStop)) Nothing
        |> Jpipe.optional "scaleMode" (Jdec.nullable scaleMode) Nothing

encodePaint : Paint -> Jenc.Value
encodePaint x =
    Jenc.object
        [ ("type", encodePaintType x.paintType)
        , ("visible", Jenc.bool x.visible)
        , ("opacity", Jenc.float x.opacity)
        , ("color", makeNullableEncoder encodeColor x.color)
        , ("gradientHandlePositions", makeNullableEncoder (makeArrayEncoder encodeVector2D) x.gradientHandlePositions)
        , ("gradientStops", makeNullableEncoder (makeArrayEncoder encodeColorStop) x.gradientStops)
        , ("scaleMode", makeNullableEncoder encodeScaleMode x.scaleMode)
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

scaleMode : Jdec.Decoder ScaleMode
scaleMode =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "FILL" -> Jdec.succeed Fill
                "FIT" -> Jdec.succeed Fit
                "STRETCH" -> Jdec.succeed Stretch
                "TILE" -> Jdec.succeed Tile
                somethingElse -> Jdec.fail <| "Invalid ScaleMode: " ++ somethingElse
        )

encodeScaleMode : ScaleMode -> Jenc.Value
encodeScaleMode x = case x of
    Fill -> Jenc.string "FILL"
    Fit -> Jenc.string "FIT"
    Stretch -> Jenc.string "STRETCH"
    Tile -> Jenc.string "TILE"

layoutGrid : Jdec.Decoder LayoutGrid
layoutGrid =
    Jpipe.decode LayoutGrid
        |> Jpipe.required "pattern" pattern
        |> Jpipe.required "sectionSize" Jdec.float
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "color" color
        |> Jpipe.required "alignment" alignment
        |> Jpipe.required "gutterSize" Jdec.float
        |> Jpipe.required "offset" Jdec.float
        |> Jpipe.required "count" Jdec.float

encodeLayoutGrid : LayoutGrid -> Jenc.Value
encodeLayoutGrid x =
    Jenc.object
        [ ("pattern", encodePattern x.pattern)
        , ("sectionSize", Jenc.float x.sectionSize)
        , ("visible", Jenc.bool x.visible)
        , ("color", encodeColor x.color)
        , ("alignment", encodeAlignment x.alignment)
        , ("gutterSize", Jenc.float x.gutterSize)
        , ("offset", Jenc.float x.offset)
        , ("count", Jenc.float x.count)
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
                "REGULAR_POLYGON" -> Jdec.succeed RegularPolygon
                "SLICE" -> Jdec.succeed Slice
                "STAR" -> Jdec.succeed Star
                "TEXT" -> Jdec.succeed Text
                "COMPONENT" -> Jdec.succeed TypeCOMPONENT
                "DOCUMENT" -> Jdec.succeed TypeDOCUMENT
                "RECTANGLE" -> Jdec.succeed TypeRECTANGLE
                "VECTOR" -> Jdec.succeed Vector
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
    RegularPolygon -> Jenc.string "REGULAR_POLYGON"
    Slice -> Jenc.string "SLICE"
    Star -> Jenc.string "STAR"
    Text -> Jenc.string "TEXT"
    TypeCOMPONENT -> Jenc.string "COMPONENT"
    TypeDOCUMENT -> Jenc.string "DOCUMENT"
    TypeRECTANGLE -> Jenc.string "RECTANGLE"
    Vector -> Jenc.string "VECTOR"

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
        |> Jpipe.required "lineHeightPx" Jdec.float
        |> Jpipe.required "fontPostScriptName" Jdec.string
        |> Jpipe.required "fontWeight" Jdec.float
        |> Jpipe.required "lineHeightPercent" Jdec.float
        |> Jpipe.required "textAlignVertical" textAlignVertical
        |> Jpipe.required "fontSize" Jdec.float
        |> Jpipe.required "italic" Jdec.bool
        |> Jpipe.required "fills" (Jdec.array paint)
        |> Jpipe.required "fontFamily" Jdec.string
        |> Jpipe.required "textAlignHorizontal" textAlignHorizontal
        |> Jpipe.required "letterSpacing" Jdec.float

encodeTypeStyle : TypeStyle -> Jenc.Value
encodeTypeStyle x =
    Jenc.object
        [ ("lineHeightPx", Jenc.float x.lineHeightPx)
        , ("fontPostScriptName", Jenc.string x.fontPostScriptName)
        , ("fontWeight", Jenc.float x.fontWeight)
        , ("lineHeightPercent", Jenc.float x.lineHeightPercent)
        , ("textAlignVertical", encodeTextAlignVertical x.textAlignVertical)
        , ("fontSize", Jenc.float x.fontSize)
        , ("italic", Jenc.bool x.italic)
        , ("fills", makeArrayEncoder encodePaint x.fills)
        , ("fontFamily", Jenc.string x.fontFamily)
        , ("textAlignHorizontal", encodeTextAlignHorizontal x.textAlignHorizontal)
        , ("letterSpacing", Jenc.float x.letterSpacing)
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

document : Jdec.Decoder Document
document =
    Jpipe.decode Document
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" nodeType
        |> Jpipe.required "children" (Jdec.array fluffyNode)

encodeDocument : Document -> Jenc.Value
encodeDocument x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeNodeType x.documentType)
        , ("children", makeArrayEncoder encodeFluffyNode x.children)
        ]

fluffyNode : Jdec.Decoder FluffyNode
fluffyNode =
    Jpipe.decode FluffyNode
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable color) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSetting)) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effect)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGrid)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "transitionID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable rectangle) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable layoutConstraint) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paint)) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paint)) Nothing
        |> Jpipe.optional "x" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "y" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "width" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "height" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "style" (Jdec.nullable typeStyle) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.dict typeStyle)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodeFluffyNode : FluffyNode -> Jenc.Value
encodeFluffyNode x =
    Jenc.object
        [ ("id", makeNullableEncoder Jenc.string x.id)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("type", makeNullableEncoder encodeNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeColor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSetting) x.exportSettings)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffect) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGrid) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("transitionID", makeNullableEncoder Jenc.string x.transitionID)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRectangle x.absoluteBoundingBox)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeLayoutConstraint x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaint) x.fills)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaint) x.strokes)
        , ("x", makeNullableEncoder Jenc.float x.x)
        , ("y", makeNullableEncoder Jenc.float x.y)
        , ("width", makeNullableEncoder Jenc.float x.width)
        , ("height", makeNullableEncoder Jenc.float x.height)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("style", makeNullableEncoder encodeTypeStyle x.style)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("styleOverrideTable", makeNullableEncoder (makeDictEncoder encodeTypeStyle) x.styleOverrideTable)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
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
