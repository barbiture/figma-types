-- To decode the JSON data, add this file to your project, run
--
--     elm-package install NoRedInk/elm-decode-pipeline
--
-- add these imports
--
--     import Json.Decode exposing (decodeString)`);
--     import QuickType exposing (vector, color, colorStop, layoutConstraint, text, frame, rectangle, layoutGrid, effect, slice, star, line, blendMode, instance, vector2D, typeStyle, booleanGroup, canvas, document, nodeType, exportSetting, component, fileResponse, constraint, paint, regularPolygon, ellipse, group)
--
-- and you're off to the races with
--
--     decodeString vector myJsonString
--     decodeString color myJsonString
--     decodeString colorStop myJsonString
--     decodeString layoutConstraint myJsonString
--     decodeString text myJsonString
--     decodeString frame myJsonString
--     decodeString rectangle myJsonString
--     decodeString layoutGrid myJsonString
--     decodeString effect myJsonString
--     decodeString slice myJsonString
--     decodeString star myJsonString
--     decodeString line myJsonString
--     decodeString blendMode myJsonString
--     decodeString instance myJsonString
--     decodeString vector2D myJsonString
--     decodeString typeStyle myJsonString
--     decodeString booleanGroup myJsonString
--     decodeString canvas myJsonString
--     decodeString document myJsonString
--     decodeString nodeType myJsonString
--     decodeString exportSetting myJsonString
--     decodeString component myJsonString
--     decodeString fileResponse myJsonString
--     decodeString constraint myJsonString
--     decodeString paint myJsonString
--     decodeString regularPolygon myJsonString
--     decodeString ellipse myJsonString
--     decodeString group myJsonString

module QuickType exposing
    ( Vector
    , vectorToString
    , vector
    , Color
    , colorToString
    , color
    , ColorStop
    , colorStopToString
    , colorStop
    , LayoutConstraint
    , layoutConstraintToString
    , layoutConstraint
    , Text
    , textToString
    , text
    , Frame
    , frameToString
    , frame
    , Rectangle
    , rectangleToString
    , rectangle
    , LayoutGrid
    , layoutGridToString
    , layoutGrid
    , Effect
    , effectToString
    , effect
    , Slice
    , sliceToString
    , slice
    , Star
    , starToString
    , star
    , Line
    , lineToString
    , line
    , BlendMode
    , blendModeToString
    , blendMode
    , Instance
    , instanceToString
    , instance
    , Vector2D
    , vector2DToString
    , vector2D
    , TypeStyle
    , typeStyleToString
    , typeStyle
    , BooleanGroup
    , booleanGroupToString
    , booleanGroup
    , Canvas
    , canvasToString
    , canvas
    , Document
    , documentToString
    , document
    , NodeType
    , nodeTypeToString
    , nodeType
    , ExportSetting
    , exportSettingToString
    , exportSetting
    , Component
    , componentToString
    , component
    , FileResponse
    , fileResponseToString
    , fileResponse
    , Constraint
    , constraintToString
    , constraint
    , Paint
    , paintToString
    , paint
    , RegularPolygon
    , regularPolygonToString
    , regularPolygon
    , Ellipse
    , ellipseToString
    , ellipse
    , Group
    , groupToString
    , group
    , AbsoluteBoundingBox
    , Constraints
    , EffectElement
    , Olor
    , Offset
    , ExportSettingElement
    , ExportSettingConstraint
    , PaintElement
    , ColorStopElement
    , Tyle
    , DocumentElement
    , LayoutGridElement
    , ComponentValue
    , Ocument
    , Horizontal(..)
    , Vertical(..)
    , EffectType(..)
    , ConstraintType(..)
    , Format(..)
    , Suffix(..)
    , PaintType(..)
    , StrokeAlign(..)
    , TextAlignHorizontal(..)
    , TextAlignVertical(..)
    , Alignment(..)
    , Pattern(..)
    )

import Json.Decode as Jdec
import Json.Decode.Pipeline as Jpipe
import Json.Encode as Jenc
import Dict exposing (Dict, map, toList)
import Array exposing (Array, map)

{-| A vector network, consisting of vertices and edges

effects:
An array of effects attached to this node
(see effects sectionfor more details)

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

vectorType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

strokes:
An array of stroke paints applied to the node

preserveRatio:
Keep height and width constrained to same ratio
-}
type alias Vector =
    { effects : Maybe (Array EffectElement)
    , opacity : Maybe Float
    , name : Maybe String
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , vectorType : Maybe NodeType
    , id : Maybe String
    , strokes : Maybe (Array PaintElement)
    , preserveRatio : Maybe Bool
    }

{-| A rectangle

Bounding box of the node in absolute space coordinates

An array of nodes that are being boolean operated on

An array of nodes that are direct children of this node

An array of top level layers on the canvas

An array of canvases attached to the document

effects:
An array of effects attached to this node
(see effects sectionfor more details)

cornerRadius:
Radius of each corner of the rectangle

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

absoluteBoundingBoxType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

strokes:
An array of stroke paints applied to the node

preserveRatio:
Keep height and width constrained to same ratio
-}
type alias AbsoluteBoundingBox =
    { effects : Maybe (Array EffectElement)
    , cornerRadius : Maybe Float
    , opacity : Maybe Float
    , name : Maybe String
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , absoluteBoundingBoxType : Maybe NodeType
    , id : Maybe String
    , strokes : Maybe (Array PaintElement)
    , preserveRatio : Maybe Bool
    }

{-| the type of the node, refer to table below for details -}
type NodeType
    = Boolean
    | YpeCANVAS
    | YpeCOMPONENT
    | YpeDOCUMENT
    | YpeELLIPSE
    | YpeFRAME
    | YpeGROUP
    | YpeINSTANCE
    | YpeLINE
    | YpeRECTANGLE
    | YpeREGULARPOLYGON
    | YpeSLICE
    | YpeSTAR
    | YpeTEXT
    | YpeVECTOR

{-| How this node blends with nodes behind it in the scene
(see blend mode section for more details)
-}
type BlendMode
    = ColorBurn
    | ColorDodge
    | Darken
    | Difference
    | Exclusion
    | HardLight
    | Hue
    | LendModeCOLOR
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

Horizontal and vertical layout constraints for node

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
type alias Constraints =
    { horizontal : Maybe Horizontal
    , vertical : Maybe Vertical
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

{-| A visual effect such as a shadow or blur

An array of effects attached to this node
(see effects sectionfor more details)

radius:
Radius of the blur effect (applies to shadows as well)

effectType:
Type of effect as a string enum

visible:
Is the effect active?
-}
type alias EffectElement =
    { blendMode : Maybe BlendMode
    , color : Maybe Olor
    , offset : Maybe Offset
    , radius : Maybe Float
    , effectType : Maybe EffectType
    , visible : Maybe Bool
    }

{-| An RGBA color

Solid color of the paint

Color attached to corresponding position

Color of the grid

Background color of the node

Background color of the canvas

a:
Alpha channel value, between 0 and 1

b:
Blue channel value, between 0 and 1

g:
Green channel value, between 0 and 1

r:
Red channel value, between 0 and 1
-}
type alias Olor =
    { a : Maybe Float
    , b : Maybe Float
    , g : Maybe Float
    , r : Maybe Float
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

x:
X coordinate of the vector

y:
Y coordinate of the vector
-}
type alias Offset =
    { x : Maybe Float
    , y : Maybe Float
    }

{-| Format and size to export an asset at

An array of export settings representing images to export from node

An array of export settings representing images to export from this node

An array of export settings representing images to export from the canvas

constraint:
Constraint that determines sizing of exported asset

format:
Image type, string enum

suffix:
File suffix to append to all filenames
-}
type alias ExportSettingElement =
    { constraint : Maybe ExportSettingConstraint
    , format : Maybe Format
    , suffix : Maybe Suffix
    }

{-| Sizing constraint for exports

Constraint that determines sizing of exported asset

constraintType:
Type of constraint to apply; string enum with potential values below
"SCALE": Scale by value
"WIDTH": Scale proportionally and set width to value
"HEIGHT": Scale proportionally and set height to value

value:
See type property for effect of this field
-}
type alias ExportSettingConstraint =
    { constraintType : Maybe ConstraintType
    , value : Maybe Float
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

{-| File suffix to append to all filenames -}
type Suffix
    = SuffixString

{-| A solid color, gradient, or image texture that can be applied as fills or strokes

An array of fill paints applied to the node

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
type alias PaintElement =
    { color : Maybe Olor
    , gradientHandlePositions : Maybe (Array Offset)
    , gradientStops : Maybe (Array ColorStopElement)
    , opacity : Maybe Float
    , scaleMode : Maybe String
    , paintType : Maybe PaintType
    , visible : Maybe Bool
    }

{-| A position color pair representing a gradient stop

Positions of key points along the gradient axis with the colors
anchored there. Colors along the gradient are interpolated smoothly
between neighboring gradient stops.

color:
Color attached to corresponding position

position:
Value between 0 and 1 representing position along gradient axis
-}
type alias ColorStopElement =
    { color : Maybe Olor
    , position : Maybe Float
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

{-| Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary
-}
type StrokeAlign
    = Inside
    | Outside
    | StrokeAlignCENTER

{-| An RGBA color

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
    { a : Maybe Float
    , b : Maybe Float
    , g : Maybe Float
    , r : Maybe Float
    }

{-| A position color pair representing a gradient stop

color:
Color attached to corresponding position

position:
Value between 0 and 1 representing position along gradient axis
-}
type alias ColorStop =
    { color : Maybe Olor
    , position : Maybe Float
    }

{-| Layout constraint relative to containing Frame

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
    { horizontal : Maybe Horizontal
    , vertical : Maybe Vertical
    }

{-| A text box

effects:
An array of effects attached to this node
(see effects sectionfor more details)

characters:
Text contained within text box

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

styleOverrideTable:
Map from ID to TypeStyle for looking up style overrides

style:
Style of text including font family and weight (see type style
section for more information)

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

textType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

strokes:
An array of stroke paints applied to the node

preserveRatio:
Keep height and width constrained to same ratio

characterStyleOverrides:
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
-}
type alias Text =
    { effects : Maybe (Array EffectElement)
    , characters : Maybe String
    , opacity : Maybe Float
    , name : Maybe String
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , styleOverrideTable : Maybe (Array Tyle)
    , style : Maybe Tyle
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , textType : Maybe NodeType
    , id : Maybe String
    , strokes : Maybe (Array PaintElement)
    , preserveRatio : Maybe Bool
    , characterStyleOverrides : Maybe (Array Float)
    }

{-| Metadata for character formatting

Map from ID to TypeStyle for looking up style overrides

Style of text including font family and weight (see type style
section for more information)

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
type alias Tyle =
    { lineHeightPx : Maybe Float
    , fontPostScriptName : Maybe String
    , fontWeight : Maybe Float
    , lineHeightPercent : Maybe Float
    , textAlignVertical : Maybe TextAlignVertical
    , fontSize : Maybe Float
    , italic : Maybe Bool
    , fills : Maybe (Array PaintElement)
    , fontFamily : Maybe String
    , textAlignHorizontal : Maybe TextAlignHorizontal
    , letterSpacing : Maybe Float
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

{-| A node of fixed size containing other nodes

effects:
An array of effects attached to this node
(see effects sectionfor more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

backgroundColor:
Background color of the node

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

clipsContent:
Does this node clip content outside of its bounds?

exportSettings:
An array of export settings representing images to export from node

frameType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

preserveRatio:
Keep height and width constrained to same ratio

children:
An array of nodes that are direct children of this node
-}
type alias Frame =
    { effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , name : Maybe String
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , backgroundColor : Maybe Olor
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , frameType : Maybe NodeType
    , id : Maybe String
    , preserveRatio : Maybe Bool
    , children : Maybe (Array DocumentElement)
    }

{-| An array of nodes that are direct children of this node

An array of nodes that are being boolean operated on

An array of top level layers on the canvas

An array of canvases attached to the document

Node Properties
The root node

The root node within the document

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

Bounding box of the node in absolute space coordinates

A text box

A rectangular region of the canvas that can be exported

A node that can have instances created of it that share the same properties

A mapping from node IDs to component metadata. This is to help you determine which
components each instance comes from. Currently the only piece of metadata available on
components is the name of the component, but more properties will be forthcoming.

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

documentType:
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

effects:
An array of effects attached to this node
(see effects sectionfor more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

clipsContent:
Does this node clip content outside of its bounds?

preserveRatio:
Keep height and width constrained to same ratio

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

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

styleOverrideTable:
Map from ID to TypeStyle for looking up style overrides

style:
Style of text including font family and weight (see type style
section for more information)

characterStyleOverrides:
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style

componentID:
ID of component that this instance came from, refers to components
table (see endpoints section below)
-}
type alias DocumentElement =
    { children : Maybe (Array DocumentElement)
    , id : Maybe String
    , name : Maybe String
    , documentType : Maybe NodeType
    , visible : Maybe Bool
    , backgroundColor : Maybe Olor
    , exportSettings : Maybe (Array ExportSettingElement)
    , effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , blendMode : Maybe BlendMode
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , preserveRatio : Maybe Bool
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , strokes : Maybe (Array PaintElement)
    , cornerRadius : Maybe Float
    , characters : Maybe String
    , styleOverrideTable : Maybe (Array Tyle)
    , style : Maybe Tyle
    , characterStyleOverrides : Maybe (Array Float)
    , componentID : Maybe String
    }

{-| Guides to align and place objects within a frame

An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

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
type alias LayoutGridElement =
    { alignment : Maybe Alignment
    , color : Maybe Olor
    , count : Maybe Float
    , gutterSize : Maybe Float
    , offset : Maybe Float
    , pattern : Maybe Pattern
    , sectionSize : Maybe Float
    , visible : Maybe Bool
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

{-| A rectangle

effects:
An array of effects attached to this node
(see effects sectionfor more details)

cornerRadius:
Radius of each corner of the rectangle

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

rectangleType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

strokes:
An array of stroke paints applied to the node

preserveRatio:
Keep height and width constrained to same ratio
-}
type alias Rectangle =
    { effects : Maybe (Array EffectElement)
    , cornerRadius : Maybe Float
    , opacity : Maybe Float
    , name : Maybe String
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , rectangleType : Maybe NodeType
    , id : Maybe String
    , strokes : Maybe (Array PaintElement)
    , preserveRatio : Maybe Bool
    }

{-| Guides to align and place objects within a frame

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
    { alignment : Maybe Alignment
    , color : Maybe Olor
    , count : Maybe Float
    , gutterSize : Maybe Float
    , offset : Maybe Float
    , pattern : Maybe Pattern
    , sectionSize : Maybe Float
    , visible : Maybe Bool
    }

{-| A visual effect such as a shadow or blur

radius:
Radius of the blur effect (applies to shadows as well)

effectType:
Type of effect as a string enum

visible:
Is the effect active?
-}
type alias Effect =
    { blendMode : Maybe BlendMode
    , color : Maybe Olor
    , offset : Maybe Offset
    , radius : Maybe Float
    , effectType : Maybe EffectType
    , visible : Maybe Bool
    }

{-| A rectangular region of the canvas that can be exported

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

exportSettings:
An array of export settings representing images to export from this node

id:
a string uniquely identifying this node within the document

name:
the name given to the node by the user in the tool.

sliceType:
the type of the node, refer to table below for details

visible:
whether or not the node is visible on the canvas
-}
type alias Slice =
    { absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , exportSettings : Maybe (Array ExportSettingElement)
    , id : Maybe String
    , name : Maybe String
    , sliceType : Maybe NodeType
    , visible : Maybe Bool
    }

{-| A regular star shape

effects:
An array of effects attached to this node
(see effects sectionfor more details)

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

starType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

strokes:
An array of stroke paints applied to the node

preserveRatio:
Keep height and width constrained to same ratio
-}
type alias Star =
    { effects : Maybe (Array EffectElement)
    , opacity : Maybe Float
    , name : Maybe String
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , starType : Maybe NodeType
    , id : Maybe String
    , strokes : Maybe (Array PaintElement)
    , preserveRatio : Maybe Bool
    }

{-| A straight line

effects:
An array of effects attached to this node
(see effects sectionfor more details)

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

lineType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

strokes:
An array of stroke paints applied to the node

preserveRatio:
Keep height and width constrained to same ratio
-}
type alias Line =
    { effects : Maybe (Array EffectElement)
    , opacity : Maybe Float
    , name : Maybe String
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , lineType : Maybe NodeType
    , id : Maybe String
    , strokes : Maybe (Array PaintElement)
    , preserveRatio : Maybe Bool
    }

{-| An instance of a component, changes to the component result in the same
changes applied to the instance

effects:
An array of effects attached to this node
(see effects sectionfor more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

backgroundColor:
Background color of the node

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

clipsContent:
Does this node clip content outside of its bounds?

exportSettings:
An array of export settings representing images to export from node

componentID:
ID of component that this instance came from, refers to components
table (see endpoints section below)

instanceType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

preserveRatio:
Keep height and width constrained to same ratio

children:
An array of nodes that are direct children of this node
-}
type alias Instance =
    { effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , name : Maybe String
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , backgroundColor : Maybe Olor
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , componentID : Maybe String
    , instanceType : Maybe NodeType
    , id : Maybe String
    , preserveRatio : Maybe Bool
    , children : Maybe (Array DocumentElement)
    }

{-| A 2d vector

x:
X coordinate of the vector

y:
Y coordinate of the vector
-}
type alias Vector2D =
    { x : Maybe Float
    , y : Maybe Float
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
    { lineHeightPx : Maybe Float
    , fontPostScriptName : Maybe String
    , fontWeight : Maybe Float
    , lineHeightPercent : Maybe Float
    , textAlignVertical : Maybe TextAlignVertical
    , fontSize : Maybe Float
    , italic : Maybe Bool
    , fills : Maybe (Array PaintElement)
    , fontFamily : Maybe String
    , textAlignHorizontal : Maybe TextAlignHorizontal
    , letterSpacing : Maybe Float
    }

{-| A group that has a boolean operation applied to it

effects:
An array of effects attached to this node
(see effects sectionfor more details)

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

booleanGroupType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

strokes:
An array of stroke paints applied to the node

preserveRatio:
Keep height and width constrained to same ratio

children:
An array of nodes that are being boolean operated on
-}
type alias BooleanGroup =
    { effects : Maybe (Array EffectElement)
    , opacity : Maybe Float
    , name : Maybe String
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , booleanGroupType : Maybe NodeType
    , id : Maybe String
    , strokes : Maybe (Array PaintElement)
    , preserveRatio : Maybe Bool
    , children : Maybe (Array DocumentElement)
    }

{-| Represents a single page

backgroundColor:
Background color of the canvas

children:
An array of top level layers on the canvas

exportSettings:
An array of export settings representing images to export from the canvas

id:
a string uniquely identifying this node within the document

name:
the name given to the node by the user in the tool.

canvasType:
the type of the node, refer to table below for details

visible:
whether or not the node is visible on the canvas
-}
type alias Canvas =
    { backgroundColor : Maybe Olor
    , children : Maybe (Array DocumentElement)
    , exportSettings : Maybe (Array ExportSettingElement)
    , id : Maybe String
    , name : Maybe String
    , canvasType : Maybe NodeType
    , visible : Maybe Bool
    }

{-| Node Properties
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
    { children : Maybe (Array DocumentElement)
    , id : Maybe String
    , name : Maybe String
    , documentType : Maybe NodeType
    , visible : Maybe Bool
    }

{-| Format and size to export an asset at

constraint:
Constraint that determines sizing of exported asset

format:
Image type, string enum

suffix:
File suffix to append to all filenames
-}
type alias ExportSetting =
    { constraint : Maybe ExportSettingConstraint
    , format : Maybe Format
    , suffix : Maybe Suffix
    }

{-| A node that can have instances created of it that share the same properties

effects:
An array of effects attached to this node
(see effects sectionfor more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

backgroundColor:
Background color of the node

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

clipsContent:
Does this node clip content outside of its bounds?

exportSettings:
An array of export settings representing images to export from node

componentType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

preserveRatio:
Keep height and width constrained to same ratio

children:
An array of nodes that are direct children of this node
-}
type alias Component =
    { effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , name : Maybe String
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , backgroundColor : Maybe Olor
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , componentType : Maybe NodeType
    , id : Maybe String
    , preserveRatio : Maybe Bool
    , children : Maybe (Array DocumentElement)
    }

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
    { components : Maybe (Dict String ComponentValue)
    , document : Maybe Ocument
    , schemaVersion : Maybe Float
    }

{-| A node that can have instances created of it that share the same properties

An array of nodes that are direct children of this node

An array of nodes that are being boolean operated on

An array of top level layers on the canvas

An array of canvases attached to the document

A mapping from node IDs to component metadata. This is to help you determine which
components each instance comes from. Currently the only piece of metadata available on
components is the name of the component, but more properties will be forthcoming.

effects:
An array of effects attached to this node
(see effects sectionfor more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

backgroundColor:
Background color of the node

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

clipsContent:
Does this node clip content outside of its bounds?

exportSettings:
An array of export settings representing images to export from node

componentType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

preserveRatio:
Keep height and width constrained to same ratio

children:
An array of nodes that are direct children of this node
-}
type alias ComponentValue =
    { effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , name : Maybe String
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , backgroundColor : Maybe Olor
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , componentType : Maybe NodeType
    , id : Maybe String
    , preserveRatio : Maybe Bool
    , children : Maybe (Array DocumentElement)
    }

{-| Node Properties
The root node

An array of nodes that are direct children of this node

An array of canvases attached to the document

An array of top level layers on the canvas

An array of nodes that are being boolean operated on

The root node within the document

children:
An array of canvases attached to the document

id:
a string uniquely identifying this node within the document

name:
the name given to the node by the user in the tool.

ocumentType:
the type of the node, refer to table below for details

visible:
whether or not the node is visible on the canvas
-}
type alias Ocument =
    { children : Maybe (Array DocumentElement)
    , id : Maybe String
    , name : Maybe String
    , ocumentType : Maybe NodeType
    , visible : Maybe Bool
    }

{-| Sizing constraint for exports

constraintType:
Type of constraint to apply; string enum with potential values below
"SCALE": Scale by value
"WIDTH": Scale proportionally and set width to value
"HEIGHT": Scale proportionally and set height to value

value:
See type property for effect of this field
-}
type alias Constraint =
    { constraintType : Maybe ConstraintType
    , value : Maybe Float
    }

{-| A solid color, gradient, or image texture that can be applied as fills or strokes

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
    { color : Maybe Olor
    , gradientHandlePositions : Maybe (Array Offset)
    , gradientStops : Maybe (Array ColorStopElement)
    , opacity : Maybe Float
    , scaleMode : Maybe String
    , paintType : Maybe PaintType
    , visible : Maybe Bool
    }

{-| A regular n-sided polygon

effects:
An array of effects attached to this node
(see effects sectionfor more details)

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

regularPolygonType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

strokes:
An array of stroke paints applied to the node

preserveRatio:
Keep height and width constrained to same ratio
-}
type alias RegularPolygon =
    { effects : Maybe (Array EffectElement)
    , opacity : Maybe Float
    , name : Maybe String
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , regularPolygonType : Maybe NodeType
    , id : Maybe String
    , strokes : Maybe (Array PaintElement)
    , preserveRatio : Maybe Bool
    }

{-| An ellipse

effects:
An array of effects attached to this node
(see effects sectionfor more details)

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokeWeight:
The weight of strokes on the node

fills:
An array of fill paints applied to the node

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

exportSettings:
An array of export settings representing images to export from node

ellipseType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

strokes:
An array of stroke paints applied to the node

preserveRatio:
Keep height and width constrained to same ratio
-}
type alias Ellipse =
    { effects : Maybe (Array EffectElement)
    , opacity : Maybe Float
    , name : Maybe String
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array PaintElement)
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , ellipseType : Maybe NodeType
    , id : Maybe String
    , strokes : Maybe (Array PaintElement)
    , preserveRatio : Maybe Bool
    }

{-| A logical grouping of nodes

effects:
An array of effects attached to this node
(see effects sectionfor more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

opacity:
Opacity of the node

name:
the name given to the node by the user in the tool.

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
whether or not the node is visible on the canvas

blendMode:
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

backgroundColor:
Background color of the node

constraints:
Horizontal and vertical layout constraints for node

isMask:
Does this node mask sibling nodes in front of it?

clipsContent:
Does this node clip content outside of its bounds?

exportSettings:
An array of export settings representing images to export from node

groupType:
the type of the node, refer to table below for details

id:
a string uniquely identifying this node within the document

preserveRatio:
Keep height and width constrained to same ratio

children:
An array of nodes that are direct children of this node
-}
type alias Group =
    { effects : Maybe (Array EffectElement)
    , layoutGrids : Maybe (Array LayoutGridElement)
    , opacity : Maybe Float
    , name : Maybe String
    , absoluteBoundingBox : Maybe AbsoluteBoundingBox
    , transitionNodeID : Maybe String
    , visible : Maybe Bool
    , blendMode : Maybe BlendMode
    , backgroundColor : Maybe Olor
    , constraints : Maybe Constraints
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , exportSettings : Maybe (Array ExportSettingElement)
    , groupType : Maybe NodeType
    , id : Maybe String
    , preserveRatio : Maybe Bool
    , children : Maybe (Array DocumentElement)
    }

-- decoders and encoders

vectorToString : Vector -> String
vectorToString r = Jenc.encode 0 (encodeVector r)

colorToString : Color -> String
colorToString r = Jenc.encode 0 (encodeColor r)

colorStopToString : ColorStop -> String
colorStopToString r = Jenc.encode 0 (encodeColorStop r)

layoutConstraintToString : LayoutConstraint -> String
layoutConstraintToString r = Jenc.encode 0 (encodeLayoutConstraint r)

textToString : Text -> String
textToString r = Jenc.encode 0 (encodeText r)

frameToString : Frame -> String
frameToString r = Jenc.encode 0 (encodeFrame r)

rectangleToString : Rectangle -> String
rectangleToString r = Jenc.encode 0 (encodeRectangle r)

layoutGridToString : LayoutGrid -> String
layoutGridToString r = Jenc.encode 0 (encodeLayoutGrid r)

effectToString : Effect -> String
effectToString r = Jenc.encode 0 (encodeEffect r)

sliceToString : Slice -> String
sliceToString r = Jenc.encode 0 (encodeSlice r)

starToString : Star -> String
starToString r = Jenc.encode 0 (encodeStar r)

lineToString : Line -> String
lineToString r = Jenc.encode 0 (encodeLine r)

blendModeToString : BlendMode -> String
blendModeToString r = Jenc.encode 0 (encodeBlendMode r)

instanceToString : Instance -> String
instanceToString r = Jenc.encode 0 (encodeInstance r)

vector2DToString : Vector2D -> String
vector2DToString r = Jenc.encode 0 (encodeVector2D r)

typeStyleToString : TypeStyle -> String
typeStyleToString r = Jenc.encode 0 (encodeTypeStyle r)

booleanGroupToString : BooleanGroup -> String
booleanGroupToString r = Jenc.encode 0 (encodeBooleanGroup r)

canvasToString : Canvas -> String
canvasToString r = Jenc.encode 0 (encodeCanvas r)

documentToString : Document -> String
documentToString r = Jenc.encode 0 (encodeDocument r)

nodeTypeToString : NodeType -> String
nodeTypeToString r = Jenc.encode 0 (encodeNodeType r)

exportSettingToString : ExportSetting -> String
exportSettingToString r = Jenc.encode 0 (encodeExportSetting r)

componentToString : Component -> String
componentToString r = Jenc.encode 0 (encodeComponent r)

fileResponseToString : FileResponse -> String
fileResponseToString r = Jenc.encode 0 (encodeFileResponse r)

constraintToString : Constraint -> String
constraintToString r = Jenc.encode 0 (encodeConstraint r)

paintToString : Paint -> String
paintToString r = Jenc.encode 0 (encodePaint r)

regularPolygonToString : RegularPolygon -> String
regularPolygonToString r = Jenc.encode 0 (encodeRegularPolygon r)

ellipseToString : Ellipse -> String
ellipseToString r = Jenc.encode 0 (encodeEllipse r)

groupToString : Group -> String
groupToString r = Jenc.encode 0 (encodeGroup r)

vector : Jdec.Decoder Vector
vector =
    Jpipe.decode Vector
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing

encodeVector : Vector -> Jenc.Value
encodeVector x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.vectorType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        ]

absoluteBoundingBox : Jdec.Decoder AbsoluteBoundingBox
absoluteBoundingBox =
    Jpipe.decode AbsoluteBoundingBox
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing

encodeAbsoluteBoundingBox : AbsoluteBoundingBox -> Jenc.Value
encodeAbsoluteBoundingBox x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.absoluteBoundingBoxType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        ]

nodeType : Jdec.Decoder NodeType
nodeType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "BOOLEAN" -> Jdec.succeed Boolean
                "CANVAS" -> Jdec.succeed YpeCANVAS
                "COMPONENT" -> Jdec.succeed YpeCOMPONENT
                "DOCUMENT" -> Jdec.succeed YpeDOCUMENT
                "ELLIPSE" -> Jdec.succeed YpeELLIPSE
                "FRAME" -> Jdec.succeed YpeFRAME
                "GROUP" -> Jdec.succeed YpeGROUP
                "INSTANCE" -> Jdec.succeed YpeINSTANCE
                "LINE" -> Jdec.succeed YpeLINE
                "RECTANGLE" -> Jdec.succeed YpeRECTANGLE
                "REGULAR_POLYGON" -> Jdec.succeed YpeREGULARPOLYGON
                "SLICE" -> Jdec.succeed YpeSLICE
                "STAR" -> Jdec.succeed YpeSTAR
                "TEXT" -> Jdec.succeed YpeTEXT
                "VECTOR" -> Jdec.succeed YpeVECTOR
                somethingElse -> Jdec.fail <| "Invalid NodeType: " ++ somethingElse
        )

encodeNodeType : NodeType -> Jenc.Value
encodeNodeType x = case x of
    Boolean -> Jenc.string "BOOLEAN"
    YpeCANVAS -> Jenc.string "CANVAS"
    YpeCOMPONENT -> Jenc.string "COMPONENT"
    YpeDOCUMENT -> Jenc.string "DOCUMENT"
    YpeELLIPSE -> Jenc.string "ELLIPSE"
    YpeFRAME -> Jenc.string "FRAME"
    YpeGROUP -> Jenc.string "GROUP"
    YpeINSTANCE -> Jenc.string "INSTANCE"
    YpeLINE -> Jenc.string "LINE"
    YpeRECTANGLE -> Jenc.string "RECTANGLE"
    YpeREGULARPOLYGON -> Jenc.string "REGULAR_POLYGON"
    YpeSLICE -> Jenc.string "SLICE"
    YpeSTAR -> Jenc.string "STAR"
    YpeTEXT -> Jenc.string "TEXT"
    YpeVECTOR -> Jenc.string "VECTOR"

blendMode : Jdec.Decoder BlendMode
blendMode =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "COLOR_BURN" -> Jdec.succeed ColorBurn
                "COLOR_DODGE" -> Jdec.succeed ColorDodge
                "DARKEN" -> Jdec.succeed Darken
                "DIFFERENCE" -> Jdec.succeed Difference
                "EXCLUSION" -> Jdec.succeed Exclusion
                "HARD_LIGHT" -> Jdec.succeed HardLight
                "HUE" -> Jdec.succeed Hue
                "COLOR" -> Jdec.succeed LendModeCOLOR
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
    ColorBurn -> Jenc.string "COLOR_BURN"
    ColorDodge -> Jenc.string "COLOR_DODGE"
    Darken -> Jenc.string "DARKEN"
    Difference -> Jenc.string "DIFFERENCE"
    Exclusion -> Jenc.string "EXCLUSION"
    HardLight -> Jenc.string "HARD_LIGHT"
    Hue -> Jenc.string "HUE"
    LendModeCOLOR -> Jenc.string "COLOR"
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

constraints : Jdec.Decoder Constraints
constraints =
    Jpipe.decode Constraints
        |> Jpipe.optional "horizontal" (Jdec.nullable horizontal) Nothing
        |> Jpipe.optional "vertical" (Jdec.nullable vertical) Nothing

encodeConstraints : Constraints -> Jenc.Value
encodeConstraints x =
    Jenc.object
        [ ("horizontal", makeNullableEncoder encodeHorizontal x.horizontal)
        , ("vertical", makeNullableEncoder encodeVertical x.vertical)
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
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "color" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "offset" (Jdec.nullable offset) Nothing
        |> Jpipe.optional "radius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "type" (Jdec.nullable effectType) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing

encodeEffectElement : EffectElement -> Jenc.Value
encodeEffectElement x =
    Jenc.object
        [ ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("color", makeNullableEncoder encodeOlor x.color)
        , ("offset", makeNullableEncoder encodeOffset x.offset)
        , ("radius", makeNullableEncoder Jenc.float x.radius)
        , ("type", makeNullableEncoder encodeEffectType x.effectType)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        ]

olor : Jdec.Decoder Olor
olor =
    Jpipe.decode Olor
        |> Jpipe.optional "a" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "b" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "g" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "r" (Jdec.nullable Jdec.float) Nothing

encodeOlor : Olor -> Jenc.Value
encodeOlor x =
    Jenc.object
        [ ("a", makeNullableEncoder Jenc.float x.a)
        , ("b", makeNullableEncoder Jenc.float x.b)
        , ("g", makeNullableEncoder Jenc.float x.g)
        , ("r", makeNullableEncoder Jenc.float x.r)
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

offset : Jdec.Decoder Offset
offset =
    Jpipe.decode Offset
        |> Jpipe.optional "x" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "y" (Jdec.nullable Jdec.float) Nothing

encodeOffset : Offset -> Jenc.Value
encodeOffset x =
    Jenc.object
        [ ("x", makeNullableEncoder Jenc.float x.x)
        , ("y", makeNullableEncoder Jenc.float x.y)
        ]

exportSettingElement : Jdec.Decoder ExportSettingElement
exportSettingElement =
    Jpipe.decode ExportSettingElement
        |> Jpipe.optional "constraint" (Jdec.nullable exportSettingConstraint) Nothing
        |> Jpipe.optional "format" (Jdec.nullable format) Nothing
        |> Jpipe.optional "suffix" (Jdec.nullable suffix) Nothing

encodeExportSettingElement : ExportSettingElement -> Jenc.Value
encodeExportSettingElement x =
    Jenc.object
        [ ("constraint", makeNullableEncoder encodeExportSettingConstraint x.constraint)
        , ("format", makeNullableEncoder encodeFormat x.format)
        , ("suffix", makeNullableEncoder encodeSuffix x.suffix)
        ]

exportSettingConstraint : Jdec.Decoder ExportSettingConstraint
exportSettingConstraint =
    Jpipe.decode ExportSettingConstraint
        |> Jpipe.optional "type" (Jdec.nullable constraintType) Nothing
        |> Jpipe.optional "value" (Jdec.nullable Jdec.float) Nothing

encodeExportSettingConstraint : ExportSettingConstraint -> Jenc.Value
encodeExportSettingConstraint x =
    Jenc.object
        [ ("type", makeNullableEncoder encodeConstraintType x.constraintType)
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

suffix : Jdec.Decoder Suffix
suffix =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "string" -> Jdec.succeed SuffixString
                somethingElse -> Jdec.fail <| "Invalid Suffix: " ++ somethingElse
        )

encodeSuffix : Suffix -> Jenc.Value
encodeSuffix x = case x of
    SuffixString -> Jenc.string "string"

paintElement : Jdec.Decoder PaintElement
paintElement =
    Jpipe.decode PaintElement
        |> Jpipe.optional "color" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "gradientHandlePositions" (Jdec.nullable (Jdec.array offset)) Nothing
        |> Jpipe.optional "gradientStops" (Jdec.nullable (Jdec.array colorStopElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "scaleMode" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "type" (Jdec.nullable paintType) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing

encodePaintElement : PaintElement -> Jenc.Value
encodePaintElement x =
    Jenc.object
        [ ("color", makeNullableEncoder encodeOlor x.color)
        , ("gradientHandlePositions", makeNullableEncoder (makeArrayEncoder encodeOffset) x.gradientHandlePositions)
        , ("gradientStops", makeNullableEncoder (makeArrayEncoder encodeColorStopElement) x.gradientStops)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("scaleMode", makeNullableEncoder Jenc.string x.scaleMode)
        , ("type", makeNullableEncoder encodePaintType x.paintType)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        ]

colorStopElement : Jdec.Decoder ColorStopElement
colorStopElement =
    Jpipe.decode ColorStopElement
        |> Jpipe.optional "color" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "position" (Jdec.nullable Jdec.float) Nothing

encodeColorStopElement : ColorStopElement -> Jenc.Value
encodeColorStopElement x =
    Jenc.object
        [ ("color", makeNullableEncoder encodeOlor x.color)
        , ("position", makeNullableEncoder Jenc.float x.position)
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

color : Jdec.Decoder Color
color =
    Jpipe.decode Color
        |> Jpipe.optional "a" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "b" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "g" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "r" (Jdec.nullable Jdec.float) Nothing

encodeColor : Color -> Jenc.Value
encodeColor x =
    Jenc.object
        [ ("a", makeNullableEncoder Jenc.float x.a)
        , ("b", makeNullableEncoder Jenc.float x.b)
        , ("g", makeNullableEncoder Jenc.float x.g)
        , ("r", makeNullableEncoder Jenc.float x.r)
        ]

colorStop : Jdec.Decoder ColorStop
colorStop =
    Jpipe.decode ColorStop
        |> Jpipe.optional "color" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "position" (Jdec.nullable Jdec.float) Nothing

encodeColorStop : ColorStop -> Jenc.Value
encodeColorStop x =
    Jenc.object
        [ ("color", makeNullableEncoder encodeOlor x.color)
        , ("position", makeNullableEncoder Jenc.float x.position)
        ]

layoutConstraint : Jdec.Decoder LayoutConstraint
layoutConstraint =
    Jpipe.decode LayoutConstraint
        |> Jpipe.optional "horizontal" (Jdec.nullable horizontal) Nothing
        |> Jpipe.optional "vertical" (Jdec.nullable vertical) Nothing

encodeLayoutConstraint : LayoutConstraint -> Jenc.Value
encodeLayoutConstraint x =
    Jenc.object
        [ ("horizontal", makeNullableEncoder encodeHorizontal x.horizontal)
        , ("vertical", makeNullableEncoder encodeVertical x.vertical)
        ]

text : Jdec.Decoder Text
text =
    Jpipe.decode Text
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.array tyle)) Nothing
        |> Jpipe.optional "style" (Jdec.nullable tyle) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing

encodeText : Text -> Jenc.Value
encodeText x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("styleOverrideTable", makeNullableEncoder (makeArrayEncoder encodeTyle) x.styleOverrideTable)
        , ("style", makeNullableEncoder encodeTyle x.style)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.textType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        ]

tyle : Jdec.Decoder Tyle
tyle =
    Jpipe.decode Tyle
        |> Jpipe.optional "lineHeightPx" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fontPostScriptName" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "fontWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "lineHeightPercent" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "textAlignVertical" (Jdec.nullable textAlignVertical) Nothing
        |> Jpipe.optional "fontSize" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "italic" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "fontFamily" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "textAlignHorizontal" (Jdec.nullable textAlignHorizontal) Nothing
        |> Jpipe.optional "letterSpacing" (Jdec.nullable Jdec.float) Nothing

encodeTyle : Tyle -> Jenc.Value
encodeTyle x =
    Jenc.object
        [ ("lineHeightPx", makeNullableEncoder Jenc.float x.lineHeightPx)
        , ("fontPostScriptName", makeNullableEncoder Jenc.string x.fontPostScriptName)
        , ("fontWeight", makeNullableEncoder Jenc.float x.fontWeight)
        , ("lineHeightPercent", makeNullableEncoder Jenc.float x.lineHeightPercent)
        , ("textAlignVertical", makeNullableEncoder encodeTextAlignVertical x.textAlignVertical)
        , ("fontSize", makeNullableEncoder Jenc.float x.fontSize)
        , ("italic", makeNullableEncoder Jenc.bool x.italic)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("fontFamily", makeNullableEncoder Jenc.string x.fontFamily)
        , ("textAlignHorizontal", makeNullableEncoder encodeTextAlignHorizontal x.textAlignHorizontal)
        , ("letterSpacing", makeNullableEncoder Jenc.float x.letterSpacing)
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

frame : Jdec.Decoder Frame
frame =
    Jpipe.decode Frame
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array documentElement)) Nothing

encodeFrame : Frame -> Jenc.Value
encodeFrame x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("backgroundColor", makeNullableEncoder encodeOlor x.backgroundColor)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.frameType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeDocumentElement) x.children)
        ]

documentElement : Jdec.Decoder DocumentElement
documentElement =
    Jpipe.decode DocumentElement
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array documentElement)) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.array tyle)) Nothing
        |> Jpipe.optional "style" (Jdec.nullable tyle) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing

encodeDocumentElement : DocumentElement -> Jenc.Value
encodeDocumentElement x =
    Jenc.object
        [ ("children", makeNullableEncoder (makeArrayEncoder encodeDocumentElement) x.children)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("type", makeNullableEncoder encodeNodeType x.documentType)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("backgroundColor", makeNullableEncoder encodeOlor x.backgroundColor)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("styleOverrideTable", makeNullableEncoder (makeArrayEncoder encodeTyle) x.styleOverrideTable)
        , ("style", makeNullableEncoder encodeTyle x.style)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
        ]

layoutGridElement : Jdec.Decoder LayoutGridElement
layoutGridElement =
    Jpipe.decode LayoutGridElement
        |> Jpipe.optional "alignment" (Jdec.nullable alignment) Nothing
        |> Jpipe.optional "color" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "count" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "gutterSize" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "offset" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "pattern" (Jdec.nullable pattern) Nothing
        |> Jpipe.optional "sectionSize" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing

encodeLayoutGridElement : LayoutGridElement -> Jenc.Value
encodeLayoutGridElement x =
    Jenc.object
        [ ("alignment", makeNullableEncoder encodeAlignment x.alignment)
        , ("color", makeNullableEncoder encodeOlor x.color)
        , ("count", makeNullableEncoder Jenc.float x.count)
        , ("gutterSize", makeNullableEncoder Jenc.float x.gutterSize)
        , ("offset", makeNullableEncoder Jenc.float x.offset)
        , ("pattern", makeNullableEncoder encodePattern x.pattern)
        , ("sectionSize", makeNullableEncoder Jenc.float x.sectionSize)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
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

rectangle : Jdec.Decoder Rectangle
rectangle =
    Jpipe.decode Rectangle
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing

encodeRectangle : Rectangle -> Jenc.Value
encodeRectangle x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.rectangleType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        ]

layoutGrid : Jdec.Decoder LayoutGrid
layoutGrid =
    Jpipe.decode LayoutGrid
        |> Jpipe.optional "alignment" (Jdec.nullable alignment) Nothing
        |> Jpipe.optional "color" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "count" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "gutterSize" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "offset" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "pattern" (Jdec.nullable pattern) Nothing
        |> Jpipe.optional "sectionSize" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing

encodeLayoutGrid : LayoutGrid -> Jenc.Value
encodeLayoutGrid x =
    Jenc.object
        [ ("alignment", makeNullableEncoder encodeAlignment x.alignment)
        , ("color", makeNullableEncoder encodeOlor x.color)
        , ("count", makeNullableEncoder Jenc.float x.count)
        , ("gutterSize", makeNullableEncoder Jenc.float x.gutterSize)
        , ("offset", makeNullableEncoder Jenc.float x.offset)
        , ("pattern", makeNullableEncoder encodePattern x.pattern)
        , ("sectionSize", makeNullableEncoder Jenc.float x.sectionSize)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        ]

effect : Jdec.Decoder Effect
effect =
    Jpipe.decode Effect
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "color" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "offset" (Jdec.nullable offset) Nothing
        |> Jpipe.optional "radius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "type" (Jdec.nullable effectType) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing

encodeEffect : Effect -> Jenc.Value
encodeEffect x =
    Jenc.object
        [ ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("color", makeNullableEncoder encodeOlor x.color)
        , ("offset", makeNullableEncoder encodeOffset x.offset)
        , ("radius", makeNullableEncoder Jenc.float x.radius)
        , ("type", makeNullableEncoder encodeEffectType x.effectType)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        ]

slice : Jdec.Decoder Slice
slice =
    Jpipe.decode Slice
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing

encodeSlice : Slice -> Jenc.Value
encodeSlice x =
    Jenc.object
        [ ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("type", makeNullableEncoder encodeNodeType x.sliceType)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        ]

star : Jdec.Decoder Star
star =
    Jpipe.decode Star
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing

encodeStar : Star -> Jenc.Value
encodeStar x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.starType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        ]

line : Jdec.Decoder Line
line =
    Jpipe.decode Line
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing

encodeLine : Line -> Jenc.Value
encodeLine x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.lineType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        ]

instance : Jdec.Decoder Instance
instance =
    Jpipe.decode Instance
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array documentElement)) Nothing

encodeInstance : Instance -> Jenc.Value
encodeInstance x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("backgroundColor", makeNullableEncoder encodeOlor x.backgroundColor)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
        , ("type", makeNullableEncoder encodeNodeType x.instanceType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeDocumentElement) x.children)
        ]

vector2D : Jdec.Decoder Vector2D
vector2D =
    Jpipe.decode Vector2D
        |> Jpipe.optional "x" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "y" (Jdec.nullable Jdec.float) Nothing

encodeVector2D : Vector2D -> Jenc.Value
encodeVector2D x =
    Jenc.object
        [ ("x", makeNullableEncoder Jenc.float x.x)
        , ("y", makeNullableEncoder Jenc.float x.y)
        ]

typeStyle : Jdec.Decoder TypeStyle
typeStyle =
    Jpipe.decode TypeStyle
        |> Jpipe.optional "lineHeightPx" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fontPostScriptName" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "fontWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "lineHeightPercent" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "textAlignVertical" (Jdec.nullable textAlignVertical) Nothing
        |> Jpipe.optional "fontSize" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "italic" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "fontFamily" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "textAlignHorizontal" (Jdec.nullable textAlignHorizontal) Nothing
        |> Jpipe.optional "letterSpacing" (Jdec.nullable Jdec.float) Nothing

encodeTypeStyle : TypeStyle -> Jenc.Value
encodeTypeStyle x =
    Jenc.object
        [ ("lineHeightPx", makeNullableEncoder Jenc.float x.lineHeightPx)
        , ("fontPostScriptName", makeNullableEncoder Jenc.string x.fontPostScriptName)
        , ("fontWeight", makeNullableEncoder Jenc.float x.fontWeight)
        , ("lineHeightPercent", makeNullableEncoder Jenc.float x.lineHeightPercent)
        , ("textAlignVertical", makeNullableEncoder encodeTextAlignVertical x.textAlignVertical)
        , ("fontSize", makeNullableEncoder Jenc.float x.fontSize)
        , ("italic", makeNullableEncoder Jenc.bool x.italic)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("fontFamily", makeNullableEncoder Jenc.string x.fontFamily)
        , ("textAlignHorizontal", makeNullableEncoder encodeTextAlignHorizontal x.textAlignHorizontal)
        , ("letterSpacing", makeNullableEncoder Jenc.float x.letterSpacing)
        ]

booleanGroup : Jdec.Decoder BooleanGroup
booleanGroup =
    Jpipe.decode BooleanGroup
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array documentElement)) Nothing

encodeBooleanGroup : BooleanGroup -> Jenc.Value
encodeBooleanGroup x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.booleanGroupType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeDocumentElement) x.children)
        ]

canvas : Jdec.Decoder Canvas
canvas =
    Jpipe.decode Canvas
        |> Jpipe.optional "backgroundColor" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array documentElement)) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing

encodeCanvas : Canvas -> Jenc.Value
encodeCanvas x =
    Jenc.object
        [ ("backgroundColor", makeNullableEncoder encodeOlor x.backgroundColor)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeDocumentElement) x.children)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("type", makeNullableEncoder encodeNodeType x.canvasType)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        ]

document : Jdec.Decoder Document
document =
    Jpipe.decode Document
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array documentElement)) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing

encodeDocument : Document -> Jenc.Value
encodeDocument x =
    Jenc.object
        [ ("children", makeNullableEncoder (makeArrayEncoder encodeDocumentElement) x.children)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("type", makeNullableEncoder encodeNodeType x.documentType)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        ]

exportSetting : Jdec.Decoder ExportSetting
exportSetting =
    Jpipe.decode ExportSetting
        |> Jpipe.optional "constraint" (Jdec.nullable exportSettingConstraint) Nothing
        |> Jpipe.optional "format" (Jdec.nullable format) Nothing
        |> Jpipe.optional "suffix" (Jdec.nullable suffix) Nothing

encodeExportSetting : ExportSetting -> Jenc.Value
encodeExportSetting x =
    Jenc.object
        [ ("constraint", makeNullableEncoder encodeExportSettingConstraint x.constraint)
        , ("format", makeNullableEncoder encodeFormat x.format)
        , ("suffix", makeNullableEncoder encodeSuffix x.suffix)
        ]

component : Jdec.Decoder Component
component =
    Jpipe.decode Component
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array documentElement)) Nothing

encodeComponent : Component -> Jenc.Value
encodeComponent x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("backgroundColor", makeNullableEncoder encodeOlor x.backgroundColor)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.componentType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeDocumentElement) x.children)
        ]

fileResponse : Jdec.Decoder FileResponse
fileResponse =
    Jpipe.decode FileResponse
        |> Jpipe.optional "components" (Jdec.nullable (Jdec.dict componentValue)) Nothing
        |> Jpipe.optional "document" (Jdec.nullable ocument) Nothing
        |> Jpipe.optional "schemaVersion" (Jdec.nullable Jdec.float) Nothing

encodeFileResponse : FileResponse -> Jenc.Value
encodeFileResponse x =
    Jenc.object
        [ ("components", makeNullableEncoder (makeDictEncoder encodeComponentValue) x.components)
        , ("document", makeNullableEncoder encodeOcument x.document)
        , ("schemaVersion", makeNullableEncoder Jenc.float x.schemaVersion)
        ]

componentValue : Jdec.Decoder ComponentValue
componentValue =
    Jpipe.decode ComponentValue
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array documentElement)) Nothing

encodeComponentValue : ComponentValue -> Jenc.Value
encodeComponentValue x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("backgroundColor", makeNullableEncoder encodeOlor x.backgroundColor)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.componentType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeDocumentElement) x.children)
        ]

ocument : Jdec.Decoder Ocument
ocument =
    Jpipe.decode Ocument
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array documentElement)) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing

encodeOcument : Ocument -> Jenc.Value
encodeOcument x =
    Jenc.object
        [ ("children", makeNullableEncoder (makeArrayEncoder encodeDocumentElement) x.children)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("type", makeNullableEncoder encodeNodeType x.ocumentType)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        ]

constraint : Jdec.Decoder Constraint
constraint =
    Jpipe.decode Constraint
        |> Jpipe.optional "type" (Jdec.nullable constraintType) Nothing
        |> Jpipe.optional "value" (Jdec.nullable Jdec.float) Nothing

encodeConstraint : Constraint -> Jenc.Value
encodeConstraint x =
    Jenc.object
        [ ("type", makeNullableEncoder encodeConstraintType x.constraintType)
        , ("value", makeNullableEncoder Jenc.float x.value)
        ]

paint : Jdec.Decoder Paint
paint =
    Jpipe.decode Paint
        |> Jpipe.optional "color" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "gradientHandlePositions" (Jdec.nullable (Jdec.array offset)) Nothing
        |> Jpipe.optional "gradientStops" (Jdec.nullable (Jdec.array colorStopElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "scaleMode" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "type" (Jdec.nullable paintType) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing

encodePaint : Paint -> Jenc.Value
encodePaint x =
    Jenc.object
        [ ("color", makeNullableEncoder encodeOlor x.color)
        , ("gradientHandlePositions", makeNullableEncoder (makeArrayEncoder encodeOffset) x.gradientHandlePositions)
        , ("gradientStops", makeNullableEncoder (makeArrayEncoder encodeColorStopElement) x.gradientStops)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("scaleMode", makeNullableEncoder Jenc.string x.scaleMode)
        , ("type", makeNullableEncoder encodePaintType x.paintType)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        ]

regularPolygon : Jdec.Decoder RegularPolygon
regularPolygon =
    Jpipe.decode RegularPolygon
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing

encodeRegularPolygon : RegularPolygon -> Jenc.Value
encodeRegularPolygon x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.regularPolygonType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        ]

ellipse : Jdec.Decoder Ellipse
ellipse =
    Jpipe.decode Ellipse
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paintElement)) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing

encodeEllipse : Ellipse -> Jenc.Value
encodeEllipse x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.fills)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.ellipseType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaintElement) x.strokes)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        ]

group : Jdec.Decoder Group
group =
    Jpipe.decode Group
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effectElement)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGridElement)) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "name" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable absoluteBoundingBox) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "visible" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable olor) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable constraints) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSettingElement)) Nothing
        |> Jpipe.optional "type" (Jdec.nullable nodeType) Nothing
        |> Jpipe.optional "id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array documentElement)) Nothing

encodeGroup : Group -> Jenc.Value
encodeGroup x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffectElement) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGridElement) x.layoutGrids)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", makeNullableEncoder Jenc.string x.name)
        , ("absoluteBoundingBox", makeNullableEncoder encodeAbsoluteBoundingBox x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", makeNullableEncoder Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("backgroundColor", makeNullableEncoder encodeOlor x.backgroundColor)
        , ("constraints", makeNullableEncoder encodeConstraints x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSettingElement) x.exportSettings)
        , ("type", makeNullableEncoder encodeNodeType x.groupType)
        , ("id", makeNullableEncoder Jenc.string x.id)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeDocumentElement) x.children)
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
