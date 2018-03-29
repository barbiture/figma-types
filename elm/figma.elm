-- To decode the JSON data, add this file to your project, run
--
--     elm-package install NoRedInk/elm-decode-pipeline
--
-- add these imports
--
--     import Json.Decode exposing (decodeString)`);
--     import QuickType exposing (regularPolygonNode, ellipseNode, groupNode, node, vector, color, global, colorStop, vectorNode, layoutConstraint, booleanNode, user, textNode, frameNode, rectangle, layoutGrid, effect, rectangleNode, blendMode, sliceNode, starNode, lineNode, instanceNode, typeStyle, canvasNode, exportSetting, documentNode, constraint, paint, componentNode, comment)
--
-- and you're off to the races with
--
--     decodeString regularPolygonNode myJsonString
--     decodeString ellipseNode myJsonString
--     decodeString groupNode myJsonString
--     decodeString node myJsonString
--     decodeString vector myJsonString
--     decodeString color myJsonString
--     decodeString global myJsonString
--     decodeString colorStop myJsonString
--     decodeString vectorNode myJsonString
--     decodeString layoutConstraint myJsonString
--     decodeString booleanNode myJsonString
--     decodeString user myJsonString
--     decodeString textNode myJsonString
--     decodeString frameNode myJsonString
--     decodeString rectangle myJsonString
--     decodeString layoutGrid myJsonString
--     decodeString effect myJsonString
--     decodeString rectangleNode myJsonString
--     decodeString blendMode myJsonString
--     decodeString sliceNode myJsonString
--     decodeString starNode myJsonString
--     decodeString lineNode myJsonString
--     decodeString instanceNode myJsonString
--     decodeString typeStyle myJsonString
--     decodeString canvasNode myJsonString
--     decodeString exportSetting myJsonString
--     decodeString documentNode myJsonString
--     decodeString constraint myJsonString
--     decodeString paint myJsonString
--     decodeString componentNode myJsonString
--     decodeString comment myJsonString

module QuickType exposing
    ( RegularPolygonNode
    , regularPolygonNodeToString
    , regularPolygonNode
    , EllipseNode
    , ellipseNodeToString
    , ellipseNode
    , GroupNode
    , groupNodeToString
    , groupNode
    , Node
    , nodeToString
    , node
    , Vector
    , vectorToString
    , vector
    , Color
    , colorToString
    , color
    , Global
    , globalToString
    , global
    , ColorStop
    , colorStopToString
    , colorStop
    , VectorNode
    , vectorNodeToString
    , vectorNode
    , LayoutConstraint
    , layoutConstraintToString
    , layoutConstraint
    , BooleanNode
    , booleanNodeToString
    , booleanNode
    , User
    , userToString
    , user
    , TextNode
    , textNodeToString
    , textNode
    , FrameNode
    , frameNodeToString
    , frameNode
    , Rectangle
    , rectangleToString
    , rectangle
    , LayoutGrid
    , layoutGridToString
    , layoutGrid
    , Effect
    , effectToString
    , effect
    , RectangleNode
    , rectangleNodeToString
    , rectangleNode
    , BlendMode
    , blendModeToString
    , blendMode
    , SliceNode
    , sliceNodeToString
    , sliceNode
    , StarNode
    , starNodeToString
    , starNode
    , LineNode
    , lineNodeToString
    , lineNode
    , InstanceNode
    , instanceNodeToString
    , instanceNode
    , TypeStyle
    , typeStyleToString
    , typeStyle
    , CanvasNode
    , canvasNodeToString
    , canvasNode
    , ExportSetting
    , exportSettingToString
    , exportSetting
    , DocumentNode
    , documentNodeToString
    , documentNode
    , Constraint
    , constraintToString
    , constraint
    , Paint
    , paintToString
    , paint
    , ComponentNode
    , componentNodeToString
    , componentNode
    , Comment
    , commentToString
    , comment
    , RegularPolygonNodeRectangle
    , RegularPolygonNodeLayoutConstraint
    , EffectElement
    , EffectColor
    , EffectVector
    , ExportSettingElement
    , ExportSettingConstraint
    , PaintElement
    , ColorStopElement
    , PurpleNode
    , NodeNode
    , LayoutGridElement
    , NodeTypeStyle
    , FluffyNode
    , FrameNodeNode
    , TentacledNode
    , StickyNode
    , CommentUser
    , Horizontal(..)
    , Vertical(..)
    , EffectType(..)
    , ConstraintType(..)
    , Format(..)
    , PaintType(..)
    , ScaleMode(..)
    , RegularPolygonNodeType(..)
    , StrokeAlign(..)
    , Alignment(..)
    , Pattern(..)
    , TextAlignHorizontal(..)
    , TextAlignVertical(..)
    )

import Json.Decode as Jdec
import Json.Decode.Pipeline as Jpipe
import Json.Encode as Jenc
import Dict exposing (Dict, map, toList)
import Array exposing (Array, map)

{-| A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

regularPolygonNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

opacity:
Opacity of the node

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

strokes:
An array of stroke paints applied to the node

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)
-}
type alias RegularPolygonNode =
    { id : String
    , name : String
    , visible : Bool
    , regularPolygonNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , opacity : Float
    , strokeAlign : StrokeAlign
    , strokeWeight : Float
    , fills : Array PaintElement
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , exportSettings : Array ExportSettingElement
    , strokes : Array PaintElement
    , preserveRatio : Bool
    }

{-| A rectangle that expresses a bounding box in absolute coordinates

Bounding box of the node in absolute space coordinates

x:
X coordinate of top left corner of the rectangle

y:
Y coordinate of top left corner of the rectangle

width:
Width of the rectangle

height:
Height of the rectangle
-}
type alias RegularPolygonNodeRectangle =
    { x : Float
    , y : Float
    , width : Float
    , height : Float
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
type alias RegularPolygonNodeLayoutConstraint =
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
type alias EffectElement =
    { effectType : EffectType
    , radius : Float
    , visible : Bool
    , color : EffectColor
    , blendMode : BlendMode
    , offset : EffectVector
    }

{-| An RGBA color

See type property for effect of this field

(For solid paints) Solid color of the paint

Color attached to corresponding position

Color of the grid

Background color of the node

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
type alias EffectColor =
    { r : Float
    , g : Float
    , b : Float
    , a : Float
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
type alias EffectVector =
    { x : Float
    , y : Float
    }

{-| Format and size to export an asset at

An array of export settings representing images to export from node

An array of export settings representing images to export from the canvas

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
type alias ExportSettingElement =
    { suffix : String
    , format : Format
    , constraint : ExportSettingConstraint
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
type alias ExportSettingConstraint =
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
type alias PaintElement =
    { paintType : PaintType
    , visible : Bool
    , opacity : Float
    , color : Maybe EffectColor
    , gradientHandlePositions : Maybe (Array EffectVector)
    , gradientStops : Maybe (Array ColorStopElement)
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
type alias ColorStopElement =
    { color : EffectColor
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

{-| The type of the node -}
type RegularPolygonNodeType
    = Boolean
    | Canvas
    | Component
    | Document
    | Ellipse
    | Frame
    | Group
    | Instance
    | Line
    | RegularPolygon
    | Slice
    | Star
    | Text
    | TypeRECTANGLE
    | TypeVECTOR

{-| Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary
-}
type StrokeAlign
    = Inside
    | Outside
    | StrokeAlignCENTER

{-| An ellipse

A regular n-sided polygon

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

ellipseNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

opacity:
Opacity of the node

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

strokes:
An array of stroke paints applied to the node

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)
-}
type alias EllipseNode =
    { id : String
    , name : String
    , visible : Bool
    , ellipseNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , opacity : Float
    , strokeAlign : StrokeAlign
    , strokeWeight : Float
    , fills : Array PaintElement
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , exportSettings : Array ExportSettingElement
    , strokes : Array PaintElement
    , preserveRatio : Bool
    }

{-| A logical grouping of nodes

A regular n-sided polygon

An ellipse

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

groupNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section for more
details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

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
type alias GroupNode =
    { id : String
    , name : String
    , visible : Bool
    , groupNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , layoutGrids : Array LayoutGridElement
    , opacity : Float
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , backgroundColor : EffectColor
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , clipsContent : Bool
    , exportSettings : Array ExportSettingElement
    , preserveRatio : Bool
    , children : Array PurpleNode
    }

{-| An array of nodes that are direct children of this node

A regular n-sided polygon

An ellipse

A logical grouping of nodes

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

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

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

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

cornerRadius:
Radius of each corner of the rectangle

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
    { id : String
    , name : String
    , visible : Bool
    , nodeType : RegularPolygonNodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe EffectColor
    , exportSettings : Maybe (Array ExportSettingElement)
    , effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , absoluteBoundingBox : Maybe RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : Maybe BlendMode
    , constraints : Maybe RegularPolygonNodeLayoutConstraint
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , preserveRatio : Maybe Bool
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , strokes : Maybe (Array PaintElement)
    , cornerRadius : Maybe Float
    , characters : Maybe String
    , style : Maybe NodeTypeStyle
    , characterStyleOverrides : Maybe (Array Float)
    , styleOverrideTable : Maybe (Dict String NodeTypeStyle)
    , componentID : Maybe String
    }

{-| An array of canvases attached to the document

An array of nodes that are direct children of this node

A regular n-sided polygon

An ellipse

A logical grouping of nodes

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

An array of top level layers on the canvas

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

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

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

cornerRadius:
Radius of each corner of the rectangle

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
    { id : String
    , name : String
    , visible : Bool
    , nodeType : RegularPolygonNodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe EffectColor
    , exportSettings : Maybe (Array ExportSettingElement)
    , effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , absoluteBoundingBox : Maybe RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : Maybe BlendMode
    , constraints : Maybe RegularPolygonNodeLayoutConstraint
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , preserveRatio : Maybe Bool
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , strokes : Maybe (Array PaintElement)
    , cornerRadius : Maybe Float
    , characters : Maybe String
    , style : Maybe NodeTypeStyle
    , characterStyleOverrides : Maybe (Array Float)
    , styleOverrideTable : Maybe (Dict String NodeTypeStyle)
    , componentID : Maybe String
    }

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
type alias LayoutGridElement =
    { pattern : Pattern
    , sectionSize : Float
    , visible : Bool
    , color : EffectColor
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
type alias NodeTypeStyle =
    { lineHeightPx : Float
    , fontPostScriptName : String
    , fontWeight : Float
    , lineHeightPercent : Float
    , textAlignVertical : TextAlignVertical
    , fontSize : Float
    , italic : Bool
    , fills : Array PaintElement
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

{-| A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

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

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

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

cornerRadius:
Radius of each corner of the rectangle

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
type alias Node =
    { id : String
    , name : String
    , visible : Bool
    , nodeType : RegularPolygonNodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe EffectColor
    , exportSettings : Maybe (Array ExportSettingElement)
    , effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , absoluteBoundingBox : Maybe RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : Maybe BlendMode
    , constraints : Maybe RegularPolygonNodeLayoutConstraint
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , preserveRatio : Maybe Bool
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , strokes : Maybe (Array PaintElement)
    , cornerRadius : Maybe Float
    , characters : Maybe String
    , style : Maybe NodeTypeStyle
    , characterStyleOverrides : Maybe (Array Float)
    , styleOverrideTable : Maybe (Dict String NodeTypeStyle)
    , componentID : Maybe String
    }

{-| A 2d vector

x:
X coordinate of the vector

y:
Y coordinate of the vector
-}
type alias Vector =
    { x : Float
    , y : Float
    }

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
    , globalType : RegularPolygonNodeType
    }

{-| A position color pair representing a gradient stop

color:
Color attached to corresponding position

position:
Value between 0 and 1 representing position along gradient axis
-}
type alias ColorStop =
    { color : EffectColor
    , position : Float
    }

{-| A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

vectorNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

opacity:
Opacity of the node

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

strokes:
An array of stroke paints applied to the node

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)
-}
type alias VectorNode =
    { id : String
    , name : String
    , visible : Bool
    , vectorNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , opacity : Float
    , strokeAlign : StrokeAlign
    , strokeWeight : Float
    , fills : Array PaintElement
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , exportSettings : Array ExportSettingElement
    , strokes : Array PaintElement
    , preserveRatio : Bool
    }

{-| Layout constraint relative to containing Frame

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

{-| A group that has a boolean operation applied to it

A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

booleanNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

opacity:
Opacity of the node

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

strokes:
An array of stroke paints applied to the node

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

children:
An array of nodes that are being boolean operated on
-}
type alias BooleanNode =
    { id : String
    , name : String
    , visible : Bool
    , booleanNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , opacity : Float
    , strokeAlign : StrokeAlign
    , strokeWeight : Float
    , fills : Array PaintElement
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , exportSettings : Array ExportSettingElement
    , strokes : Array PaintElement
    , preserveRatio : Bool
    , children : Array FluffyNode
    }

{-| An array of nodes that are being boolean operated on

An array of nodes that are direct children of this node

A regular n-sided polygon

An ellipse

A logical grouping of nodes

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

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

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

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

cornerRadius:
Radius of each corner of the rectangle

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
    { id : String
    , name : String
    , visible : Bool
    , nodeType : RegularPolygonNodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe EffectColor
    , exportSettings : Maybe (Array ExportSettingElement)
    , effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , absoluteBoundingBox : Maybe RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : Maybe BlendMode
    , constraints : Maybe RegularPolygonNodeLayoutConstraint
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , preserveRatio : Maybe Bool
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , strokes : Maybe (Array PaintElement)
    , cornerRadius : Maybe Float
    , characters : Maybe String
    , style : Maybe NodeTypeStyle
    , characterStyleOverrides : Maybe (Array Float)
    , styleOverrideTable : Maybe (Dict String NodeTypeStyle)
    , componentID : Maybe String
    }

{-| A description of a user -}
type alias User =
    { handle : String
    , imgURL : String
    }

{-| A text box

A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

textNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

opacity:
Opacity of the node

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

strokes:
An array of stroke paints applied to the node

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

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
-}
type alias TextNode =
    { id : String
    , name : String
    , visible : Bool
    , textNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , opacity : Float
    , strokeAlign : StrokeAlign
    , strokeWeight : Float
    , fills : Array PaintElement
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , exportSettings : Array ExportSettingElement
    , strokes : Array PaintElement
    , preserveRatio : Bool
    , characters : String
    , style : NodeTypeStyle
    , characterStyleOverrides : Array Float
    , styleOverrideTable : Dict String NodeTypeStyle
    }

{-| A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

frameNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section for more
details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

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
type alias FrameNode =
    { id : String
    , name : String
    , visible : Bool
    , frameNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , layoutGrids : Array LayoutGridElement
    , opacity : Float
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , backgroundColor : EffectColor
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , clipsContent : Bool
    , exportSettings : Array ExportSettingElement
    , preserveRatio : Bool
    , children : Array FrameNodeNode
    }

{-| An array of nodes that are direct children of this node

A regular n-sided polygon

An ellipse

A logical grouping of nodes

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

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

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

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

cornerRadius:
Radius of each corner of the rectangle

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
type alias FrameNodeNode =
    { id : String
    , name : String
    , visible : Bool
    , nodeType : RegularPolygonNodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe EffectColor
    , exportSettings : Maybe (Array ExportSettingElement)
    , effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , absoluteBoundingBox : Maybe RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : Maybe BlendMode
    , constraints : Maybe RegularPolygonNodeLayoutConstraint
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , preserveRatio : Maybe Bool
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , strokes : Maybe (Array PaintElement)
    , cornerRadius : Maybe Float
    , characters : Maybe String
    , style : Maybe NodeTypeStyle
    , characterStyleOverrides : Maybe (Array Float)
    , styleOverrideTable : Maybe (Dict String NodeTypeStyle)
    , componentID : Maybe String
    }

{-| A rectangle that expresses a bounding box in absolute coordinates

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

{-| Guides to align and place objects within a frame

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
    , color : EffectColor
    , alignment : Alignment
    , gutterSize : Float
    , offset : Float
    , count : Float
    }

{-| A visual effect such as a shadow or blur

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
    , color : EffectColor
    , blendMode : BlendMode
    , offset : EffectVector
    }

{-| A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

rectangleNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

opacity:
Opacity of the node

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

strokes:
An array of stroke paints applied to the node

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

cornerRadius:
Radius of each corner of the rectangle
-}
type alias RectangleNode =
    { id : String
    , name : String
    , visible : Bool
    , rectangleNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , opacity : Float
    , strokeAlign : StrokeAlign
    , strokeWeight : Float
    , fills : Array PaintElement
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , exportSettings : Array ExportSettingElement
    , strokes : Array PaintElement
    , preserveRatio : Bool
    , cornerRadius : Float
    }

{-| A rectangular region of the canvas that can be exported

A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

sliceNodeType:
The type of the node

exportSettings:
A rectangular region of the canvas that can be exported

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates
-}
type alias SliceNode =
    { id : String
    , name : String
    , visible : Bool
    , sliceNodeType : RegularPolygonNodeType
    , exportSettings : Array ExportSettingElement
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    }

{-| A regular star shape

A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

starNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

opacity:
Opacity of the node

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

strokes:
An array of stroke paints applied to the node

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)
-}
type alias StarNode =
    { id : String
    , name : String
    , visible : Bool
    , starNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , opacity : Float
    , strokeAlign : StrokeAlign
    , strokeWeight : Float
    , fills : Array PaintElement
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , exportSettings : Array ExportSettingElement
    , strokes : Array PaintElement
    , preserveRatio : Bool
    }

{-| A straight line

A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

lineNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

opacity:
Opacity of the node

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum

* INSIDE: draw stroke inside the shape boundary
* OUTSIDE: draw stroke outside the shape boundary
* CENTER: draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

blendMode:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

constraints:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

strokes:
An array of stroke paints applied to the node

preserveRatio:
How this node blends with nodes behind it in the scene (see blend mode section for more
details)
-}
type alias LineNode =
    { id : String
    , name : String
    , visible : Bool
    , lineNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , opacity : Float
    , strokeAlign : StrokeAlign
    , strokeWeight : Float
    , fills : Array PaintElement
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , exportSettings : Array ExportSettingElement
    , strokes : Array PaintElement
    , preserveRatio : Bool
    }

{-| An instance of a component, changes to the component result in the same changes applied
to the instance

A logical grouping of nodes

A regular n-sided polygon

An ellipse

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

instanceNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section for more
details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

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

componentID:
ID of component that this instance came from, refers to components table (see endpoints
section below)
-}
type alias InstanceNode =
    { id : String
    , name : String
    , visible : Bool
    , instanceNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , layoutGrids : Array LayoutGridElement
    , opacity : Float
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , backgroundColor : EffectColor
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , clipsContent : Bool
    , exportSettings : Array ExportSettingElement
    , preserveRatio : Bool
    , children : Array PurpleNode
    , componentID : String
    }

{-| Metadata for character formatting

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
    , fills : Array PaintElement
    , fontFamily : String
    , textAlignHorizontal : TextAlignHorizontal
    , letterSpacing : Float
    }

{-| A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

canvasNodeType:
The type of the node

children:
An array of top level layers on the canvas

backgroundColor:
Background color of the canvas

exportSettings:
An array of export settings representing images to export from the canvas
-}
type alias CanvasNode =
    { id : String
    , name : String
    , visible : Bool
    , canvasNodeType : RegularPolygonNodeType
    , children : Array TentacledNode
    , backgroundColor : EffectColor
    , exportSettings : Array ExportSettingElement
    }

{-| An array of top level layers on the canvas

An array of nodes that are direct children of this node

A regular n-sided polygon

An ellipse

A logical grouping of nodes

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

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

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

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

cornerRadius:
Radius of each corner of the rectangle

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
type alias TentacledNode =
    { id : String
    , name : String
    , visible : Bool
    , nodeType : RegularPolygonNodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe EffectColor
    , exportSettings : Maybe (Array ExportSettingElement)
    , effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , absoluteBoundingBox : Maybe RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : Maybe BlendMode
    , constraints : Maybe RegularPolygonNodeLayoutConstraint
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , preserveRatio : Maybe Bool
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , strokes : Maybe (Array PaintElement)
    , cornerRadius : Maybe Float
    , characters : Maybe String
    , style : Maybe NodeTypeStyle
    , characterStyleOverrides : Maybe (Array Float)
    , styleOverrideTable : Maybe (Dict String NodeTypeStyle)
    , componentID : Maybe String
    }

{-| Format and size to export an asset at

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
    , constraint : ExportSettingConstraint
    }

{-| A regular n-sided polygon

An ellipse

A logical grouping of nodes

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

documentNodeType:
The type of the node

children:
An array of canvases attached to the document
-}
type alias DocumentNode =
    { id : String
    , name : String
    , visible : Bool
    , documentNodeType : RegularPolygonNodeType
    , children : Array StickyNode
    }

{-| An array of canvases attached to the document

An array of nodes that are direct children of this node

A regular n-sided polygon

An ellipse

A logical grouping of nodes

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

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

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

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

cornerRadius:
Radius of each corner of the rectangle

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
type alias StickyNode =
    { id : String
    , name : String
    , visible : Bool
    , nodeType : RegularPolygonNodeType
    , children : Maybe (Array NodeNode)
    , backgroundColor : Maybe EffectColor
    , exportSettings : Maybe (Array ExportSettingElement)
    , effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , absoluteBoundingBox : Maybe RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : Maybe BlendMode
    , constraints : Maybe RegularPolygonNodeLayoutConstraint
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , preserveRatio : Maybe Bool
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , strokes : Maybe (Array PaintElement)
    , cornerRadius : Maybe Float
    , characters : Maybe String
    , style : Maybe NodeTypeStyle
    , characterStyleOverrides : Maybe (Array Float)
    , styleOverrideTable : Maybe (Dict String NodeTypeStyle)
    , componentID : Maybe String
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

{-| A solid color, gradient, or image texture that can be applied as fills or strokes

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
    , color : Maybe EffectColor
    , gradientHandlePositions : Maybe (Array EffectVector)
    , gradientStops : Maybe (Array ColorStopElement)
    , scaleMode : Maybe ScaleMode
    }

{-| A node that can have instances created of it that share the same properties

A logical grouping of nodes

A regular n-sided polygon

An ellipse

An array of nodes that are direct children of this node

A group that has a boolean operation applied to it

A regular star shape

A straight line

A text box

A rectangular region of the canvas that can be exported

An instance of a component, changes to the component result in the same changes applied
to the instance

Properties are shared across all nodes

See type property for effect of this field

Red channel value, between 0 and 1

Green channel value, between 0 and 1

Blue channel value, between 0 and 1

Alpha channel value, between 0 and 1

X coordinate of the vector

Y coordinate of the vector

Opacity of the node

The weight of strokes on the node

Overall opacity of paint (colors within the paint can also have opacity values which
would blend with this)

Value between 0 and 1 representing position along gradient axis

X coordinate of top left corner of the rectangle

Y coordinate of top left corner of the rectangle

Width of the rectangle

Height of the rectangle

Width of column grid or height of row grid or square grid spacing

Spacing in between columns and rows

Spacing before the first column or row

Number of columns or rows

Radius of each corner of the rectangle

Line height in px

Numeric font weight

Line height as a percentage of normal line height

Font size in px

Space between characters in px

Array with same number of elements as characeters in text box, each element is a
reference to the styleOverrideTable defined below and maps to the corresponding character
in the characters field. Elements with value 0 have the default type style

Whether or not the node is visible on the canvas

Is the paint enabled?

Does this node mask sibling nodes in front of it?

How this node blends with nodes behind it in the scene (see blend mode section for more
details)

Is the grid currently visible?

Does this node clip content outside of its bounds?

Is text italicized?

A string uniquely identifying this node within the document

The name given to the node by the user in the tool

Node ID of node to transition to in prototyping

File suffix to append to all filenames

Text contained within text box

PostScript font name

Font family of text (standard name)

ID of component that this instance came from, refers to components table (see endpoints
section below)

Unique identifier for comment

The file in which the comment lives

If present, the id of the comment to which this is the reply

id:
A string uniquely identifying this node within the document

name:
The name given to the node by the user in the tool

visible:
Whether or not the node is visible on the canvas

componentNodeType:
The type of the node

effects:
An array of effects attached to this node (see effects section for more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section for more
details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

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
type alias ComponentNode =
    { id : String
    , name : String
    , visible : Bool
    , componentNodeType : RegularPolygonNodeType
    , effects : Array EffectElement
    , layoutGrids : Array LayoutGridElement
    , opacity : Float
    , absoluteBoundingBox : RegularPolygonNodeRectangle
    , transitionNodeID : Maybe String
    , blendMode : BlendMode
    , backgroundColor : EffectColor
    , constraints : RegularPolygonNodeLayoutConstraint
    , isMask : Bool
    , clipsContent : Bool
    , exportSettings : Array ExportSettingElement
    , preserveRatio : Bool
    , children : Array PurpleNode
    }

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

regularPolygonNodeToString : RegularPolygonNode -> String
regularPolygonNodeToString r = Jenc.encode 0 (encodeRegularPolygonNode r)

ellipseNodeToString : EllipseNode -> String
ellipseNodeToString r = Jenc.encode 0 (encodeEllipseNode r)

groupNodeToString : GroupNode -> String
groupNodeToString r = Jenc.encode 0 (encodeGroupNode r)

nodeToString : Node -> String
nodeToString r = Jenc.encode 0 (encodeNode r)

vectorToString : Vector -> String
vectorToString r = Jenc.encode 0 (encodeVector r)

colorToString : Color -> String
colorToString r = Jenc.encode 0 (encodeColor r)

globalToString : Global -> String
globalToString r = Jenc.encode 0 (encodeGlobal r)

colorStopToString : ColorStop -> String
colorStopToString r = Jenc.encode 0 (encodeColorStop r)

vectorNodeToString : VectorNode -> String
vectorNodeToString r = Jenc.encode 0 (encodeVectorNode r)

layoutConstraintToString : LayoutConstraint -> String
layoutConstraintToString r = Jenc.encode 0 (encodeLayoutConstraint r)

booleanNodeToString : BooleanNode -> String
booleanNodeToString r = Jenc.encode 0 (encodeBooleanNode r)

userToString : User -> String
userToString r = Jenc.encode 0 (encodeUser r)

textNodeToString : TextNode -> String
textNodeToString r = Jenc.encode 0 (encodeTextNode r)

frameNodeToString : FrameNode -> String
frameNodeToString r = Jenc.encode 0 (encodeFrameNode r)

rectangleToString : Rectangle -> String
rectangleToString r = Jenc.encode 0 (encodeRectangle r)

layoutGridToString : LayoutGrid -> String
layoutGridToString r = Jenc.encode 0 (encodeLayoutGrid r)

effectToString : Effect -> String
effectToString r = Jenc.encode 0 (encodeEffect r)

rectangleNodeToString : RectangleNode -> String
rectangleNodeToString r = Jenc.encode 0 (encodeRectangleNode r)

blendModeToString : BlendMode -> String
blendModeToString r = Jenc.encode 0 (encodeBlendMode r)

sliceNodeToString : SliceNode -> String
sliceNodeToString r = Jenc.encode 0 (encodeSliceNode r)

starNodeToString : StarNode -> String
starNodeToString r = Jenc.encode 0 (encodeStarNode r)

lineNodeToString : LineNode -> String
lineNodeToString r = Jenc.encode 0 (encodeLineNode r)

instanceNodeToString : InstanceNode -> String
instanceNodeToString r = Jenc.encode 0 (encodeInstanceNode r)

typeStyleToString : TypeStyle -> String
typeStyleToString r = Jenc.encode 0 (encodeTypeStyle r)

canvasNodeToString : CanvasNode -> String
canvasNodeToString r = Jenc.encode 0 (encodeCanvasNode r)

exportSettingToString : ExportSetting -> String
exportSettingToString r = Jenc.encode 0 (encodeExportSetting r)

documentNodeToString : DocumentNode -> String
documentNodeToString r = Jenc.encode 0 (encodeDocumentNode r)

constraintToString : Constraint -> String
constraintToString r = Jenc.encode 0 (encodeConstraint r)

paintToString : Paint -> String
paintToString r = Jenc.encode 0 (encodePaint r)

componentNodeToString : ComponentNode -> String
componentNodeToString r = Jenc.encode 0 (encodeComponentNode r)

commentToString : Comment -> String
commentToString r = Jenc.encode 0 (encodeComment r)

regularPolygonNode : Jdec.Decoder RegularPolygonNode
regularPolygonNode =
    Jpipe.decode RegularPolygonNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "strokeAlign" strokeAlign
        |> Jpipe.required "strokeWeight" Jdec.float
        |> Jpipe.required "fills" (Jdec.array paintElement)
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "strokes" (Jdec.array paintElement)
        |> Jpipe.required "preserveRatio" Jdec.bool

encodeRegularPolygonNode : RegularPolygonNode -> Jenc.Value
encodeRegularPolygonNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.regularPolygonNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("opacity", Jenc.float x.opacity)
        , ("strokeAlign", encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", Jenc.float x.strokeWeight)
        , ("fills", makeArrayEncoder encodePaintElement x.fills)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("strokes", makeArrayEncoder encodePaintElement x.strokes)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        ]

regularPolygonNodeRectangle : Jdec.Decoder RegularPolygonNodeRectangle
regularPolygonNodeRectangle =
    Jpipe.decode RegularPolygonNodeRectangle
        |> Jpipe.required "x" Jdec.float
        |> Jpipe.required "y" Jdec.float
        |> Jpipe.required "width" Jdec.float
        |> Jpipe.required "height" Jdec.float

encodeRegularPolygonNodeRectangle : RegularPolygonNodeRectangle -> Jenc.Value
encodeRegularPolygonNodeRectangle x =
    Jenc.object
        [ ("x", Jenc.float x.x)
        , ("y", Jenc.float x.y)
        , ("width", Jenc.float x.width)
        , ("height", Jenc.float x.height)
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

regularPolygonNodeLayoutConstraint : Jdec.Decoder RegularPolygonNodeLayoutConstraint
regularPolygonNodeLayoutConstraint =
    Jpipe.decode RegularPolygonNodeLayoutConstraint
        |> Jpipe.required "vertical" vertical
        |> Jpipe.required "horizontal" horizontal

encodeRegularPolygonNodeLayoutConstraint : RegularPolygonNodeLayoutConstraint -> Jenc.Value
encodeRegularPolygonNodeLayoutConstraint x =
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

effectElement : Jdec.Decoder EffectElement
effectElement =
    Jpipe.decode EffectElement
        |> Jpipe.required "type" effectType
        |> Jpipe.required "radius" Jdec.float
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "color" effectColor
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "offset" effectVector

encodeEffectElement : EffectElement -> Jenc.Value
encodeEffectElement x =
    Jenc.object
        [ ("type", encodeEffectType x.effectType)
        , ("radius", Jenc.float x.radius)
        , ("visible", Jenc.bool x.visible)
        , ("color", encodeEffectColor x.color)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("offset", encodeEffectVector x.offset)
        ]

effectColor : Jdec.Decoder EffectColor
effectColor =
    Jpipe.decode EffectColor
        |> Jpipe.required "r" Jdec.float
        |> Jpipe.required "g" Jdec.float
        |> Jpipe.required "b" Jdec.float
        |> Jpipe.required "a" Jdec.float

encodeEffectColor : EffectColor -> Jenc.Value
encodeEffectColor x =
    Jenc.object
        [ ("r", Jenc.float x.r)
        , ("g", Jenc.float x.g)
        , ("b", Jenc.float x.b)
        , ("a", Jenc.float x.a)
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

effectVector : Jdec.Decoder EffectVector
effectVector =
    Jpipe.decode EffectVector
        |> Jpipe.required "x" Jdec.float
        |> Jpipe.required "y" Jdec.float

encodeEffectVector : EffectVector -> Jenc.Value
encodeEffectVector x =
    Jenc.object
        [ ("x", Jenc.float x.x)
        , ("y", Jenc.float x.y)
        ]

exportSettingElement : Jdec.Decoder ExportSettingElement
exportSettingElement =
    Jpipe.decode ExportSettingElement
        |> Jpipe.required "suffix" Jdec.string
        |> Jpipe.required "format" format
        |> Jpipe.required "constraint" exportSettingConstraint

encodeExportSettingElement : ExportSettingElement -> Jenc.Value
encodeExportSettingElement x =
    Jenc.object
        [ ("suffix", Jenc.string x.suffix)
        , ("format", encodeFormat x.format)
        , ("constraint", encodeExportSettingConstraint x.constraint)
        ]

exportSettingConstraint : Jdec.Decoder ExportSettingConstraint
exportSettingConstraint =
    Jpipe.decode ExportSettingConstraint
        |> Jpipe.required "type" constraintType
        |> Jpipe.optional "value" (Jdec.nullable Jdec.float) Nothing

encodeExportSettingConstraint : ExportSettingConstraint -> Jenc.Value
encodeExportSettingConstraint x =
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

paintElement : Jdec.Decoder PaintElement
paintElement =
    Jpipe.decode PaintElement
        |> Jpipe.required "type" paintType
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.optional "color" (Jdec.nullable effectColor) Nothing
        |> Jpipe.optional "gradientHandlePositions" (Jdec.nullable (Jdec.array effectVector)) Nothing
        |> Jpipe.optional "gradientStops" (Jdec.nullable (Jdec.array colorStopElement)) Nothing
        |> Jpipe.optional "scaleMode" (Jdec.nullable scaleMode) Nothing

encodePaintElement : PaintElement -> Jenc.Value
encodePaintElement x =
    Jenc.object
        [ ("type", encodePaintType x.paintType)
        , ("visible", Jenc.bool x.visible)
        , ("opacity", Jenc.float x.opacity)
        , ("color", makeNullableEncoder encodeEffectColor x.color)
        , ("gradientHandlePositions", makeNullableEncoder (makeArrayEncoder encodeEffectVector) x.gradientHandlePositions)
        , ("gradientStops", makeNullableEncoder (makeArrayEncoder encodeColorStopElement) x.gradientStops)
        , ("scaleMode", makeNullableEncoder encodeScaleMode x.scaleMode)
        ]

colorStopElement : Jdec.Decoder ColorStopElement
colorStopElement =
    Jpipe.decode ColorStopElement
        |> Jpipe.required "color" effectColor
        |> Jpipe.required "position" Jdec.float

encodeColorStopElement : ColorStopElement -> Jenc.Value
encodeColorStopElement x =
    Jenc.object
        [ ("color", encodeEffectColor x.color)
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

regularPolygonNodeType : Jdec.Decoder RegularPolygonNodeType
regularPolygonNodeType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "BOOLEAN" -> Jdec.succeed Boolean
                "CANVAS" -> Jdec.succeed Canvas
                "COMPONENT" -> Jdec.succeed Component
                "DOCUMENT" -> Jdec.succeed Document
                "ELLIPSE" -> Jdec.succeed Ellipse
                "FRAME" -> Jdec.succeed Frame
                "GROUP" -> Jdec.succeed Group
                "INSTANCE" -> Jdec.succeed Instance
                "LINE" -> Jdec.succeed Line
                "REGULAR_POLYGON" -> Jdec.succeed RegularPolygon
                "SLICE" -> Jdec.succeed Slice
                "STAR" -> Jdec.succeed Star
                "TEXT" -> Jdec.succeed Text
                "RECTANGLE" -> Jdec.succeed TypeRECTANGLE
                "VECTOR" -> Jdec.succeed TypeVECTOR
                somethingElse -> Jdec.fail <| "Invalid RegularPolygonNodeType: " ++ somethingElse
        )

encodeRegularPolygonNodeType : RegularPolygonNodeType -> Jenc.Value
encodeRegularPolygonNodeType x = case x of
    Boolean -> Jenc.string "BOOLEAN"
    Canvas -> Jenc.string "CANVAS"
    Component -> Jenc.string "COMPONENT"
    Document -> Jenc.string "DOCUMENT"
    Ellipse -> Jenc.string "ELLIPSE"
    Frame -> Jenc.string "FRAME"
    Group -> Jenc.string "GROUP"
    Instance -> Jenc.string "INSTANCE"
    Line -> Jenc.string "LINE"
    RegularPolygon -> Jenc.string "REGULAR_POLYGON"
    Slice -> Jenc.string "SLICE"
    Star -> Jenc.string "STAR"
    Text -> Jenc.string "TEXT"
    TypeRECTANGLE -> Jenc.string "RECTANGLE"
    TypeVECTOR -> Jenc.string "VECTOR"

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

ellipseNode : Jdec.Decoder EllipseNode
ellipseNode =
    Jpipe.decode EllipseNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "strokeAlign" strokeAlign
        |> Jpipe.required "strokeWeight" Jdec.float
        |> Jpipe.required "fills" (Jdec.array paintElement)
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "strokes" (Jdec.array paintElement)
        |> Jpipe.required "preserveRatio" Jdec.bool

encodeEllipseNode : EllipseNode -> Jenc.Value
encodeEllipseNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.ellipseNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("opacity", Jenc.float x.opacity)
        , ("strokeAlign", encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", Jenc.float x.strokeWeight)
        , ("fills", makeArrayEncoder encodePaintElement x.fills)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("strokes", makeArrayEncoder encodePaintElement x.strokes)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        ]

groupNode : Jdec.Decoder GroupNode
groupNode =
    Jpipe.decode GroupNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "layoutGrids" (Jdec.array layoutGridElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "backgroundColor" effectColor
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "clipsContent" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "preserveRatio" Jdec.bool
        |> Jpipe.required "children" (Jdec.array purpleNode)

encodeGroupNode : GroupNode -> Jenc.Value
encodeGroupNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.groupNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("layoutGrids", makeArrayEncoder encodeLayoutGridElement x.layoutGrids)
        , ("opacity", Jenc.float x.opacity)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("backgroundColor", encodeEffectColor x.backgroundColor)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("clipsContent", Jenc.bool x.clipsContent)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        , ("children", makeArrayEncoder encodePurpleNode x.children)
        ]

purpleNode : Jdec.Decoder PurpleNode
purpleNode =
    Jpipe.decode PurpleNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable effectColor) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable regularPolygonNodeRectangle) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable regularPolygonNodeLayoutConstraint) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "style" (Jdec.nullable nodeTypeStyle) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.dict nodeTypeStyle)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodePurpleNode : PurpleNode -> Jenc.Value
encodePurpleNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeEffectColor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("style", makeNullableEncoder encodeNodeTypeStyle x.style)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("styleOverrideTable", makeNullableEncoder (makeDictEncoder encodeNodeTypeStyle) x.styleOverrideTable)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
        ]

nodeNode : Jdec.Decoder NodeNode
nodeNode =
    Jpipe.decode NodeNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable effectColor) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable regularPolygonNodeRectangle) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable regularPolygonNodeLayoutConstraint) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "style" (Jdec.nullable nodeTypeStyle) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.dict nodeTypeStyle)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodeNodeNode : NodeNode -> Jenc.Value
encodeNodeNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeEffectColor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("style", makeNullableEncoder encodeNodeTypeStyle x.style)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("styleOverrideTable", makeNullableEncoder (makeDictEncoder encodeNodeTypeStyle) x.styleOverrideTable)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
        ]

layoutGridElement : Jdec.Decoder LayoutGridElement
layoutGridElement =
    Jpipe.decode LayoutGridElement
        |> Jpipe.required "pattern" pattern
        |> Jpipe.required "sectionSize" Jdec.float
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "color" effectColor
        |> Jpipe.required "alignment" alignment
        |> Jpipe.required "gutterSize" Jdec.float
        |> Jpipe.required "offset" Jdec.float
        |> Jpipe.required "count" Jdec.float

encodeLayoutGridElement : LayoutGridElement -> Jenc.Value
encodeLayoutGridElement x =
    Jenc.object
        [ ("pattern", encodePattern x.pattern)
        , ("sectionSize", Jenc.float x.sectionSize)
        , ("visible", Jenc.bool x.visible)
        , ("color", encodeEffectColor x.color)
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

nodeTypeStyle : Jdec.Decoder NodeTypeStyle
nodeTypeStyle =
    Jpipe.decode NodeTypeStyle
        |> Jpipe.required "lineHeightPx" Jdec.float
        |> Jpipe.required "fontPostScriptName" Jdec.string
        |> Jpipe.required "fontWeight" Jdec.float
        |> Jpipe.required "lineHeightPercent" Jdec.float
        |> Jpipe.required "textAlignVertical" textAlignVertical
        |> Jpipe.required "fontSize" Jdec.float
        |> Jpipe.required "italic" Jdec.bool
        |> Jpipe.required "fills" (Jdec.array paintElement)
        |> Jpipe.required "fontFamily" Jdec.string
        |> Jpipe.required "textAlignHorizontal" textAlignHorizontal
        |> Jpipe.required "letterSpacing" Jdec.float

encodeNodeTypeStyle : NodeTypeStyle -> Jenc.Value
encodeNodeTypeStyle x =
    Jenc.object
        [ ("lineHeightPx", Jenc.float x.lineHeightPx)
        , ("fontPostScriptName", Jenc.string x.fontPostScriptName)
        , ("fontWeight", Jenc.float x.fontWeight)
        , ("lineHeightPercent", Jenc.float x.lineHeightPercent)
        , ("textAlignVertical", encodeTextAlignVertical x.textAlignVertical)
        , ("fontSize", Jenc.float x.fontSize)
        , ("italic", Jenc.bool x.italic)
        , ("fills", makeArrayEncoder encodePaintElement x.fills)
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

node : Jdec.Decoder Node
node =
    Jpipe.decode Node
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable effectColor) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable regularPolygonNodeRectangle) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable regularPolygonNodeLayoutConstraint) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "style" (Jdec.nullable nodeTypeStyle) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.dict nodeTypeStyle)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodeNode : Node -> Jenc.Value
encodeNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeEffectColor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("style", makeNullableEncoder encodeNodeTypeStyle x.style)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("styleOverrideTable", makeNullableEncoder (makeDictEncoder encodeNodeTypeStyle) x.styleOverrideTable)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
        ]

vector : Jdec.Decoder Vector
vector =
    Jpipe.decode Vector
        |> Jpipe.required "x" Jdec.float
        |> Jpipe.required "y" Jdec.float

encodeVector : Vector -> Jenc.Value
encodeVector x =
    Jenc.object
        [ ("x", Jenc.float x.x)
        , ("y", Jenc.float x.y)
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

global : Jdec.Decoder Global
global =
    Jpipe.decode Global
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType

encodeGlobal : Global -> Jenc.Value
encodeGlobal x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.globalType)
        ]

colorStop : Jdec.Decoder ColorStop
colorStop =
    Jpipe.decode ColorStop
        |> Jpipe.required "color" effectColor
        |> Jpipe.required "position" Jdec.float

encodeColorStop : ColorStop -> Jenc.Value
encodeColorStop x =
    Jenc.object
        [ ("color", encodeEffectColor x.color)
        , ("position", Jenc.float x.position)
        ]

vectorNode : Jdec.Decoder VectorNode
vectorNode =
    Jpipe.decode VectorNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "strokeAlign" strokeAlign
        |> Jpipe.required "strokeWeight" Jdec.float
        |> Jpipe.required "fills" (Jdec.array paintElement)
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "strokes" (Jdec.array paintElement)
        |> Jpipe.required "preserveRatio" Jdec.bool

encodeVectorNode : VectorNode -> Jenc.Value
encodeVectorNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.vectorNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("opacity", Jenc.float x.opacity)
        , ("strokeAlign", encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", Jenc.float x.strokeWeight)
        , ("fills", makeArrayEncoder encodePaintElement x.fills)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("strokes", makeArrayEncoder encodePaintElement x.strokes)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
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

booleanNode : Jdec.Decoder BooleanNode
booleanNode =
    Jpipe.decode BooleanNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "strokeAlign" strokeAlign
        |> Jpipe.required "strokeWeight" Jdec.float
        |> Jpipe.required "fills" (Jdec.array paintElement)
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "strokes" (Jdec.array paintElement)
        |> Jpipe.required "preserveRatio" Jdec.bool
        |> Jpipe.required "children" (Jdec.array fluffyNode)

encodeBooleanNode : BooleanNode -> Jenc.Value
encodeBooleanNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.booleanNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("opacity", Jenc.float x.opacity)
        , ("strokeAlign", encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", Jenc.float x.strokeWeight)
        , ("fills", makeArrayEncoder encodePaintElement x.fills)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("strokes", makeArrayEncoder encodePaintElement x.strokes)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        , ("children", makeArrayEncoder encodeFluffyNode x.children)
        ]

fluffyNode : Jdec.Decoder FluffyNode
fluffyNode =
    Jpipe.decode FluffyNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable effectColor) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable regularPolygonNodeRectangle) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable regularPolygonNodeLayoutConstraint) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "style" (Jdec.nullable nodeTypeStyle) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.dict nodeTypeStyle)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodeFluffyNode : FluffyNode -> Jenc.Value
encodeFluffyNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeEffectColor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("style", makeNullableEncoder encodeNodeTypeStyle x.style)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("styleOverrideTable", makeNullableEncoder (makeDictEncoder encodeNodeTypeStyle) x.styleOverrideTable)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
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

textNode : Jdec.Decoder TextNode
textNode =
    Jpipe.decode TextNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "strokeAlign" strokeAlign
        |> Jpipe.required "strokeWeight" Jdec.float
        |> Jpipe.required "fills" (Jdec.array paintElement)
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "strokes" (Jdec.array paintElement)
        |> Jpipe.required "preserveRatio" Jdec.bool
        |> Jpipe.required "characters" Jdec.string
        |> Jpipe.required "style" nodeTypeStyle
        |> Jpipe.required "characterStyleOverrides" (Jdec.array Jdec.float)
        |> Jpipe.required "styleOverrideTable" (Jdec.dict nodeTypeStyle)

encodeTextNode : TextNode -> Jenc.Value
encodeTextNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.textNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("opacity", Jenc.float x.opacity)
        , ("strokeAlign", encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", Jenc.float x.strokeWeight)
        , ("fills", makeArrayEncoder encodePaintElement x.fills)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("strokes", makeArrayEncoder encodePaintElement x.strokes)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        , ("characters", Jenc.string x.characters)
        , ("style", encodeNodeTypeStyle x.style)
        , ("characterStyleOverrides", makeArrayEncoder Jenc.float x.characterStyleOverrides)
        , ("styleOverrideTable", makeDictEncoder encodeNodeTypeStyle x.styleOverrideTable)
        ]

frameNode : Jdec.Decoder FrameNode
frameNode =
    Jpipe.decode FrameNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "layoutGrids" (Jdec.array layoutGridElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "backgroundColor" effectColor
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "clipsContent" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "preserveRatio" Jdec.bool
        |> Jpipe.required "children" (Jdec.array frameNodeNode)

encodeFrameNode : FrameNode -> Jenc.Value
encodeFrameNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.frameNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("layoutGrids", makeArrayEncoder encodeLayoutGridElement x.layoutGrids)
        , ("opacity", Jenc.float x.opacity)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("backgroundColor", encodeEffectColor x.backgroundColor)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("clipsContent", Jenc.bool x.clipsContent)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        , ("children", makeArrayEncoder encodeFrameNodeNode x.children)
        ]

frameNodeNode : Jdec.Decoder FrameNodeNode
frameNodeNode =
    Jpipe.decode FrameNodeNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable effectColor) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable regularPolygonNodeRectangle) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable regularPolygonNodeLayoutConstraint) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "style" (Jdec.nullable nodeTypeStyle) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.dict nodeTypeStyle)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodeFrameNodeNode : FrameNodeNode -> Jenc.Value
encodeFrameNodeNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeEffectColor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("style", makeNullableEncoder encodeNodeTypeStyle x.style)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("styleOverrideTable", makeNullableEncoder (makeDictEncoder encodeNodeTypeStyle) x.styleOverrideTable)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
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

layoutGrid : Jdec.Decoder LayoutGrid
layoutGrid =
    Jpipe.decode LayoutGrid
        |> Jpipe.required "pattern" pattern
        |> Jpipe.required "sectionSize" Jdec.float
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "color" effectColor
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
        , ("color", encodeEffectColor x.color)
        , ("alignment", encodeAlignment x.alignment)
        , ("gutterSize", Jenc.float x.gutterSize)
        , ("offset", Jenc.float x.offset)
        , ("count", Jenc.float x.count)
        ]

effect : Jdec.Decoder Effect
effect =
    Jpipe.decode Effect
        |> Jpipe.required "type" effectType
        |> Jpipe.required "radius" Jdec.float
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "color" effectColor
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "offset" effectVector

encodeEffect : Effect -> Jenc.Value
encodeEffect x =
    Jenc.object
        [ ("type", encodeEffectType x.effectType)
        , ("radius", Jenc.float x.radius)
        , ("visible", Jenc.bool x.visible)
        , ("color", encodeEffectColor x.color)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("offset", encodeEffectVector x.offset)
        ]

rectangleNode : Jdec.Decoder RectangleNode
rectangleNode =
    Jpipe.decode RectangleNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "strokeAlign" strokeAlign
        |> Jpipe.required "strokeWeight" Jdec.float
        |> Jpipe.required "fills" (Jdec.array paintElement)
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "strokes" (Jdec.array paintElement)
        |> Jpipe.required "preserveRatio" Jdec.bool
        |> Jpipe.required "cornerRadius" Jdec.float

encodeRectangleNode : RectangleNode -> Jenc.Value
encodeRectangleNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.rectangleNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("opacity", Jenc.float x.opacity)
        , ("strokeAlign", encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", Jenc.float x.strokeWeight)
        , ("fills", makeArrayEncoder encodePaintElement x.fills)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("strokes", makeArrayEncoder encodePaintElement x.strokes)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        , ("cornerRadius", Jenc.float x.cornerRadius)
        ]

sliceNode : Jdec.Decoder SliceNode
sliceNode =
    Jpipe.decode SliceNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle

encodeSliceNode : SliceNode -> Jenc.Value
encodeSliceNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.sliceNodeType)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        ]

starNode : Jdec.Decoder StarNode
starNode =
    Jpipe.decode StarNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "strokeAlign" strokeAlign
        |> Jpipe.required "strokeWeight" Jdec.float
        |> Jpipe.required "fills" (Jdec.array paintElement)
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "strokes" (Jdec.array paintElement)
        |> Jpipe.required "preserveRatio" Jdec.bool

encodeStarNode : StarNode -> Jenc.Value
encodeStarNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.starNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("opacity", Jenc.float x.opacity)
        , ("strokeAlign", encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", Jenc.float x.strokeWeight)
        , ("fills", makeArrayEncoder encodePaintElement x.fills)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("strokes", makeArrayEncoder encodePaintElement x.strokes)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        ]

lineNode : Jdec.Decoder LineNode
lineNode =
    Jpipe.decode LineNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "strokeAlign" strokeAlign
        |> Jpipe.required "strokeWeight" Jdec.float
        |> Jpipe.required "fills" (Jdec.array paintElement)
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "strokes" (Jdec.array paintElement)
        |> Jpipe.required "preserveRatio" Jdec.bool

encodeLineNode : LineNode -> Jenc.Value
encodeLineNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.lineNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("opacity", Jenc.float x.opacity)
        , ("strokeAlign", encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", Jenc.float x.strokeWeight)
        , ("fills", makeArrayEncoder encodePaintElement x.fills)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("strokes", makeArrayEncoder encodePaintElement x.strokes)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        ]

instanceNode : Jdec.Decoder InstanceNode
instanceNode =
    Jpipe.decode InstanceNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "layoutGrids" (Jdec.array layoutGridElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "backgroundColor" effectColor
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "clipsContent" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "preserveRatio" Jdec.bool
        |> Jpipe.required "children" (Jdec.array purpleNode)
        |> Jpipe.required "componentId" Jdec.string

encodeInstanceNode : InstanceNode -> Jenc.Value
encodeInstanceNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.instanceNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("layoutGrids", makeArrayEncoder encodeLayoutGridElement x.layoutGrids)
        , ("opacity", Jenc.float x.opacity)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("backgroundColor", encodeEffectColor x.backgroundColor)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("clipsContent", Jenc.bool x.clipsContent)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        , ("children", makeArrayEncoder encodePurpleNode x.children)
        , ("componentId", Jenc.string x.componentID)
        ]

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
        |> Jpipe.required "fills" (Jdec.array paintElement)
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
        , ("fills", makeArrayEncoder encodePaintElement x.fills)
        , ("fontFamily", Jenc.string x.fontFamily)
        , ("textAlignHorizontal", encodeTextAlignHorizontal x.textAlignHorizontal)
        , ("letterSpacing", Jenc.float x.letterSpacing)
        ]

canvasNode : Jdec.Decoder CanvasNode
canvasNode =
    Jpipe.decode CanvasNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "children" (Jdec.array tentacledNode)
        |> Jpipe.required "backgroundColor" effectColor
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)

encodeCanvasNode : CanvasNode -> Jenc.Value
encodeCanvasNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.canvasNodeType)
        , ("children", makeArrayEncoder encodeTentacledNode x.children)
        , ("backgroundColor", encodeEffectColor x.backgroundColor)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        ]

tentacledNode : Jdec.Decoder TentacledNode
tentacledNode =
    Jpipe.decode TentacledNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable effectColor) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable regularPolygonNodeRectangle) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable regularPolygonNodeLayoutConstraint) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "style" (Jdec.nullable nodeTypeStyle) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.dict nodeTypeStyle)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodeTentacledNode : TentacledNode -> Jenc.Value
encodeTentacledNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeEffectColor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("style", makeNullableEncoder encodeNodeTypeStyle x.style)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("styleOverrideTable", makeNullableEncoder (makeDictEncoder encodeNodeTypeStyle) x.styleOverrideTable)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
        ]

exportSetting : Jdec.Decoder ExportSetting
exportSetting =
    Jpipe.decode ExportSetting
        |> Jpipe.required "suffix" Jdec.string
        |> Jpipe.required "format" format
        |> Jpipe.required "constraint" exportSettingConstraint

encodeExportSetting : ExportSetting -> Jenc.Value
encodeExportSetting x =
    Jenc.object
        [ ("suffix", Jenc.string x.suffix)
        , ("format", encodeFormat x.format)
        , ("constraint", encodeExportSettingConstraint x.constraint)
        ]

documentNode : Jdec.Decoder DocumentNode
documentNode =
    Jpipe.decode DocumentNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "children" (Jdec.array stickyNode)

encodeDocumentNode : DocumentNode -> Jenc.Value
encodeDocumentNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.documentNodeType)
        , ("children", makeArrayEncoder encodeStickyNode x.children)
        ]

stickyNode : Jdec.Decoder StickyNode
stickyNode =
    Jpipe.decode StickyNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array nodeNode)) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable effectColor) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable regularPolygonNodeRectangle) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable regularPolygonNodeLayoutConstraint) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "style" (Jdec.nullable nodeTypeStyle) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.dict nodeTypeStyle)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodeStickyNode : StickyNode -> Jenc.Value
encodeStickyNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.nodeType)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNodeNode) x.children)
        , ("backgroundColor", makeNullableEncoder encodeEffectColor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("style", makeNullableEncoder encodeNodeTypeStyle x.style)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("styleOverrideTable", makeNullableEncoder (makeDictEncoder encodeNodeTypeStyle) x.styleOverrideTable)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
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

paint : Jdec.Decoder Paint
paint =
    Jpipe.decode Paint
        |> Jpipe.required "type" paintType
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.optional "color" (Jdec.nullable effectColor) Nothing
        |> Jpipe.optional "gradientHandlePositions" (Jdec.nullable (Jdec.array effectVector)) Nothing
        |> Jpipe.optional "gradientStops" (Jdec.nullable (Jdec.array colorStopElement)) Nothing
        |> Jpipe.optional "scaleMode" (Jdec.nullable scaleMode) Nothing

encodePaint : Paint -> Jenc.Value
encodePaint x =
    Jenc.object
        [ ("type", encodePaintType x.paintType)
        , ("visible", Jenc.bool x.visible)
        , ("opacity", Jenc.float x.opacity)
        , ("color", makeNullableEncoder encodeEffectColor x.color)
        , ("gradientHandlePositions", makeNullableEncoder (makeArrayEncoder encodeEffectVector) x.gradientHandlePositions)
        , ("gradientStops", makeNullableEncoder (makeArrayEncoder encodeColorStopElement) x.gradientStops)
        , ("scaleMode", makeNullableEncoder encodeScaleMode x.scaleMode)
        ]

componentNode : Jdec.Decoder ComponentNode
componentNode =
    Jpipe.decode ComponentNode
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" regularPolygonNodeType
        |> Jpipe.required "effects" (Jdec.array effectElement)
        |> Jpipe.required "layoutGrids" (Jdec.array layoutGridElement)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "absoluteBoundingBox" regularPolygonNodeRectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "backgroundColor" effectColor
        |> Jpipe.required "constraints" regularPolygonNodeLayoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "clipsContent" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSettingElement)
        |> Jpipe.required "preserveRatio" Jdec.bool
        |> Jpipe.required "children" (Jdec.array purpleNode)

encodeComponentNode : ComponentNode -> Jenc.Value
encodeComponentNode x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeRegularPolygonNodeType x.componentNodeType)
        , ("effects", makeArrayEncoder encodeEffectElement x.effects)
        , ("layoutGrids", makeArrayEncoder encodeLayoutGridElement x.layoutGrids)
        , ("opacity", Jenc.float x.opacity)
        , ("absoluteBoundingBox", encodeRegularPolygonNodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("backgroundColor", encodeEffectColor x.backgroundColor)
        , ("constraints", encodeRegularPolygonNodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("clipsContent", Jenc.bool x.clipsContent)
        , ("exportSettings", makeArrayEncoder encodeExportSettingElement x.exportSettings)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        , ("children", makeArrayEncoder encodePurpleNode x.children)
        ]

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
