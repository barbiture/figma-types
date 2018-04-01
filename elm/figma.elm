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
    , Rectangle
    , LayoutConstraint
    , Effect
    , Color
    , Vector2
    , ExportSetting
    , Constraint
    , Paint
    , ColorStop
    , Node
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
    , NodeType(..)
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

{-| document:
Node Properties
The root node
The root node within the document

components:
A mapping from node IDs to component metadata. This is to help you determine which
components each instance comes from. Currently the only piece of metadata available on
components is the name of the component, but more properties will be forthcoming.

schemaVersion:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI
-}
type alias FileResponse =
    { document : Document
    , components : Dict String Component
    , schemaVersion : Float
    }

{-| A node that can have instances created of it that share the same properties

effects:
An array of effects attached to this node
(see effects sectionfor more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

opacity:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

name:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates
A rectangle

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

blendMode:
Enum describing how layer blends with layers below
This type is a string enum with the following possible values
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

backgroundColor:
Background color of the node
An RGBA color
Solid color of the paint
Color attached to corresponding position
Color of the grid
Background color of the canvas

constraints:
Horizontal and vertical layout constraints for node
Layout constraint relative to containing Frame

isMask:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

clipsContent:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

exportSettings:
An array of export settings representing images to export from node
An array of export settings representing images to export from this node
An array of export settings representing images to export from the canvas

componentType:
the type of the node, refer to table below for details

id:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

preserveRatio:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

children:
An array of nodes that are direct children of this node
An array of nodes that are being boolean operated on
An array of top level layers on the canvas
An array of canvases attached to the document
-}
type alias Component =
    { effects : Array Effect
    , layoutGrids : Array LayoutGrid
    , opacity : Float
    , name : String
    , absoluteBoundingBox : Rectangle
    , transitionNodeID : Maybe String
    , visible : Bool
    , blendMode : BlendMode
    , backgroundColor : Color
    , constraints : LayoutConstraint
    , isMask : Bool
    , clipsContent : Bool
    , exportSettings : Array ExportSetting
    , componentType : NodeType
    , id : String
    , preserveRatio : Bool
    , children : Array Node
    }

{-| Bounding box of the node in absolute space coordinates
A rectangle

effects:
An array of effects attached to this node
(see effects sectionfor more details)

cornerRadius:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

opacity:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

name:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokeWeight:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

fills:
An array of fill paints applied to the node
An array of stroke paints applied to the node
Paints applied to characters

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates
A rectangle

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

blendMode:
Enum describing how layer blends with layers below
This type is a string enum with the following possible values
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

constraints:
Horizontal and vertical layout constraints for node
Layout constraint relative to containing Frame

isMask:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

exportSettings:
An array of export settings representing images to export from node
An array of export settings representing images to export from this node
An array of export settings representing images to export from the canvas

rectangleType:
the type of the node, refer to table below for details

id:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

strokes:
An array of fill paints applied to the node
An array of stroke paints applied to the node
Paints applied to characters

preserveRatio:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?
-}
type alias Rectangle =
    { effects : Array Effect
    , cornerRadius : Float
    , opacity : Float
    , name : String
    , strokeAlign : StrokeAlign
    , strokeWeight : Float
    , fills : Array Paint
    , absoluteBoundingBox : Rectangle
    , transitionNodeID : Maybe String
    , visible : Bool
    , blendMode : BlendMode
    , constraints : LayoutConstraint
    , isMask : Bool
    , exportSettings : Array ExportSetting
    , rectangleType : NodeType
    , id : String
    , strokes : Array Paint
    , preserveRatio : Bool
    }

{-| Enum describing how layer blends with layers below
This type is a string enum with the following possible values
How this node blends with nodes behind it in the scene
(see blend mode section for more details)
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

{-| Horizontal and vertical layout constraints for node
Layout constraint relative to containing Frame

vertical:
Vertical constraint as an enum
"TOP": Node is laid out relative to top of the containing frame
"BOTTOM": Node is laid out relative to bottom of the containing frame
"CENTER": Node is vertically centered relative to containing frame
"TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
(node stretches with frame)
"SCALE": Node scales vertically with containing frame

horizontal:
Horizontal constraint as an enum
"LEFT": Node is laid out relative to left of the containing frame
"RIGHT": Node is laid out relative to right of the containing frame
"CENTER": Node is horizontally centered relative to containing frame
"LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
(node stretches with frame)
"SCALE": Node scales horizontally with containing frame
-}
type alias LayoutConstraint =
    { vertical : Vertical
    , horizontal : Horizontal
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
(see effects sectionfor more details)
A visual effect such as a shadow or blur

effectType:
Type of effect as a string enum

visible:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

radius:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

color:
Background color of the node
An RGBA color
Solid color of the paint
Color attached to corresponding position
Color of the grid
Background color of the canvas

blendMode:
Enum describing how layer blends with layers below
This type is a string enum with the following possible values
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

offset:
2d vector offset within the frame.
A 2d vector
This field contains three vectors, each of which are a position in
normalized object space (normalized object space is if the top left
corner of the bounding box of the object is (0, 0) and the bottom
right is (1,1)). The first position corresponds to the start of the
gradient (value 0 for the purposes of calculating gradient stops),
the second position is the end of the gradient (value 1), and the
third handle position determines the width of the gradient (only
relevant for non-linear gradients).
-}
type alias Effect =
    { effectType : EffectType
    , visible : Bool
    , radius : Float
    , color : Maybe Color
    , blendMode : Maybe BlendMode
    , offset : Maybe Vector2
    }

{-| Background color of the node
An RGBA color
Solid color of the paint
Color attached to corresponding position
Color of the grid
Background color of the canvas

r:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

g:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

b:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

a:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI
-}
type alias Color =
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

{-| 2d vector offset within the frame.
A 2d vector
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
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

y:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI
-}
type alias Vector2 =
    { x : Float
    , y : Float
    }

{-| An array of export settings representing images to export from node
Format and size to export an asset at
An array of export settings representing images to export from the canvas
An array of export settings representing images to export from this node

suffix:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

format:
Image type, string enum

constraint:
Constraint that determines sizing of exported asset
Sizing constraint for exports
-}
type alias ExportSetting =
    { suffix : String
    , format : Format
    , constraint : Constraint
    }

{-| Constraint that determines sizing of exported asset
Sizing constraint for exports

constraintType:
Type of constraint to apply; string enum with potential values below
"SCALE": Scale by value
"WIDTH": Scale proportionally and set width to value
"HEIGHT": Scale proportionally and set height to value

value:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI
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
    = ConstraintTypeSCALE
    | Height
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

paintType:
Type of paint as a string enum

visible:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

opacity:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

color:
Background color of the node
An RGBA color
Solid color of the paint
Color attached to corresponding position
Color of the grid
Background color of the canvas

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

scaleMode:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601
-}
type alias Paint =
    { paintType : PaintType
    , visible : Bool
    , opacity : Float
    , color : Maybe Color
    , gradientHandlePositions : Maybe (Array Vector2)
    , gradientStops : Maybe (Array ColorStop)
    , scaleMode : Maybe String
    }

{-| Positions of key points along the gradient axis with the colors
anchored there. Colors along the gradient are interpolated smoothly
between neighboring gradient stops.
A position color pair representing a gradient stop

position:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

color:
Background color of the node
An RGBA color
Solid color of the paint
Color attached to corresponding position
Color of the grid
Background color of the canvas
-}
type alias ColorStop =
    { position : Float
    , color : Color
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
    | NodeTypeRECTANGLE
    | RegularPolygon
    | Slice
    | Star
    | Text
    | Vector

{-| Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary
-}
type StrokeAlign
    = Inside
    | Outside
    | StrokeAlignCENTER

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
Bounding box of the node in absolute space coordinates
A rectangle
A text box
A rectangular region of the canvas that can be exported
A node that can have instances created of it that share the same properties
An instance of a component, changes to the component result in the same
changes applied to the instance

effects:
An array of effects attached to this node
(see effects sectionfor more details)

layoutGrids:
An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute

cornerRadius:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

characters:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

opacity:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

name:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

strokeAlign:
Where stroke is drawn relative to the vector outline as a string enum
"INSIDE": draw stroke inside the shape boundary
"OUTSIDE": draw stroke outside the shape boundary
"CENTER": draw stroke centered along the shape boundary

strokeWeight:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

fills:
An array of fill paints applied to the node
An array of stroke paints applied to the node
Paints applied to characters

absoluteBoundingBox:
Bounding box of the node in absolute space coordinates
A rectangle

styleOverrideTable:
Map from ID to TypeStyle for looking up style overrides

style:
Map from ID to TypeStyle for looking up style overrides
Metadata for character formatting
Style of text including font family and weight (see type style
section for more information)

transitionNodeID:
Node ID of node to transition to in prototyping

visible:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

blendMode:
Enum describing how layer blends with layers below
This type is a string enum with the following possible values
How this node blends with nodes behind it in the scene
(see blend mode section for more details)

backgroundColor:
Background color of the node
An RGBA color
Solid color of the paint
Color attached to corresponding position
Color of the grid
Background color of the canvas

constraints:
Horizontal and vertical layout constraints for node
Layout constraint relative to containing Frame

isMask:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

clipsContent:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

exportSettings:
An array of export settings representing images to export from node
An array of export settings representing images to export from this node
An array of export settings representing images to export from the canvas

componentID:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

nodeType:
the type of the node, refer to table below for details

id:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

strokes:
An array of fill paints applied to the node
An array of stroke paints applied to the node
Paints applied to characters

preserveRatio:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

children:
An array of nodes that are direct children of this node
An array of nodes that are being boolean operated on
An array of top level layers on the canvas
An array of canvases attached to the document

characterStyleOverrides:
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
-}
type alias Node =
    { effects : Maybe (Array Effect)
    , layoutGrids : Maybe (Array LayoutGrid)
    , cornerRadius : Maybe Float
    , characters : Maybe String
    , opacity : Maybe Float
    , name : String
    , strokeAlign : Maybe StrokeAlign
    , strokeWeight : Maybe Float
    , fills : Maybe (Array Paint)
    , absoluteBoundingBox : Maybe Rectangle
    , styleOverrideTable : Maybe (Array TypeStyle)
    , style : Maybe TypeStyle
    , transitionNodeID : Maybe String
    , visible : Bool
    , blendMode : Maybe BlendMode
    , backgroundColor : Maybe Color
    , constraints : Maybe LayoutConstraint
    , isMask : Maybe Bool
    , clipsContent : Maybe Bool
    , exportSettings : Maybe (Array ExportSetting)
    , componentID : Maybe String
    , nodeType : NodeType
    , id : String
    , strokes : Maybe (Array Paint)
    , preserveRatio : Maybe Bool
    , children : Maybe (Array Node)
    , characterStyleOverrides : Maybe (Array Float)
    }

{-| An array of layout grids attached to this node (see layout grids section
for more details). GROUP nodes do not have this attribute
Guides to align and place objects within a frame

pattern:
Orientation of the grid as a string enum
"COLUMNS": Vertical grid
"ROWS": Horizontal grid
"GRID": Square grid

sectionSize:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

visible:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

color:
Background color of the node
An RGBA color
Solid color of the paint
Color attached to corresponding position
Color of the grid
Background color of the canvas

alignment:
Positioning of grid as a string enum
"MIN": Grid starts at the left or top of the frame
"MAX": Grid starts at the right or bottom of the frame
"CENTER": Grid is center aligned

gutterSize:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

offset:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

count:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI
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

{-| Map from ID to TypeStyle for looking up style overrides
Metadata for character formatting
Style of text including font family and weight (see type style
section for more information)

lineHeightPx:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

fontPostScriptName:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

fontWeight:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

lineHeightPercent:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

textAlignVertical:
Vertical text alignment as string enum

fontSize:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

italic:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

fills:
An array of fill paints applied to the node
An array of stroke paints applied to the node
Paints applied to characters

fontFamily:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

textAlignHorizontal:
Horizontal text alignment as string enum

letterSpacing:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI
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

{-| Node Properties
The root node
The root node within the document

children:
An array of nodes that are direct children of this node
An array of nodes that are being boolean operated on
An array of top level layers on the canvas
An array of canvases attached to the document

id:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

name:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

visible:
Is the effect active?
Is the grid currently visible?
Is the paint enabled?
whether or not the node is visible on the canvas
Does this node mask sibling nodes in front of it?
Keep height and width constrained to same ratio
Does this node clip content outside of its bounds?
Is text italicized?

documentType:
the type of the node, refer to table below for details
-}
type alias Document =
    { children : Array Node
    , id : String
    , name : String
    , visible : Bool
    , documentType : NodeType
    }

type alias CommentsResponse =
    { comments : Array Comment
    }

{-| A comment or reply left by a user

message:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

createdAt:
Enables basic storage and retrieval of dates and times.

user:
A description of a user
The user who left the comment

orderID:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

parentID:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

clientMeta:
2d vector offset within the frame.
A 2d vector
This field contains three vectors, each of which are a position in
normalized object space (normalized object space is if the top left
corner of the bounding box of the object is (0, 0) and the bottom
right is (1,1)). The first position corresponds to the start of the
gradient (value 0 for the purposes of calculating gradient stops),
the second position is the end of the gradient (value 1), and the
third handle position determines the width of the gradient (only
relevant for non-linear gradients).
A relative offset within a frame

resolvedAt:
If set, when the comment was resolved

id:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

fileKey:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601
-}
type alias Comment =
    { message : String
    , createdAt : String
    , user : User
    , orderID : Float
    , parentID : String
    , clientMeta : ClientMeta
    , resolvedAt : Maybe String
    , id : String
    , fileKey : String
    }

{-| 2d vector offset within the frame.
A 2d vector
This field contains three vectors, each of which are a position in
normalized object space (normalized object space is if the top left
corner of the bounding box of the object is (0, 0) and the bottom
right is (1,1)). The first position corresponds to the start of the
gradient (value 0 for the purposes of calculating gradient stops),
the second position is the end of the gradient (value 1), and the
third handle position determines the width of the gradient (only
relevant for non-linear gradients).
A relative offset within a frame

x:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

y:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

nodeID:
Unique id specifying the frame.
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.

nodeOffset:
2d vector offset within the frame.
A 2d vector
This field contains three vectors, each of which are a position in
normalized object space (normalized object space is if the top left
corner of the bounding box of the object is (0, 0) and the bottom
right is (1,1)). The first position corresponds to the start of the
gradient (value 0 for the purposes of calculating gradient stops),
the second position is the end of the gradient (value 1), and the
third handle position determines the width of the gradient (only
relevant for non-linear gradients).
-}
type alias ClientMeta =
    { x : Maybe Float
    , y : Maybe Float
    , nodeID : Maybe (Array String)
    , nodeOffset : Maybe Vector2
    }

{-| A description of a user
The user who left the comment

handle:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

imgURL:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601
-}
type alias User =
    { handle : String
    , imgURL : String
    }

{-| message:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

clientMeta:
2d vector offset within the frame.
A 2d vector
This field contains three vectors, each of which are a position in
normalized object space (normalized object space is if the top left
corner of the bounding box of the object is (0, 0) and the bottom
right is (1,1)). The first position corresponds to the start of the
gradient (value 0 for the purposes of calculating gradient stops),
the second position is the end of the gradient (value 1), and the
third handle position determines the width of the gradient (only
relevant for non-linear gradients).
A relative offset within a frame
-}
type alias CommentRequest =
    { message : String
    , clientMeta : ClientMeta
    }

type alias ProjectsResponse =
    { projects : Array Project
    }

{-| id:
X coordinate of the vector
Y coordinate of the vector
Radius of the blur effect (applies to shadows as well)
Red channel value, between 0 and 1
Green channel value, between 0 and 1
Blue channel value, between 0 and 1
Alpha channel value, between 0 and 1
Width of column grid or height of row grid or square grid spacing
Spacing in between columns and rows
Spacing before the first column or row
Number of columns or rows
Opacity of the node
Radius of each corner of the rectangle
The weight of strokes on the node
Overall opacity of paint (colors within the paint can also have opacity
values which would blend with this)
Value between 0 and 1 representing position along gradient axis
See type property for effect of this field
Line height in px
Numeric font weight
Line height as a percentage of normal line height
Font size in px
Space between characters in px
Array with same number of elements as characeters in text box,
each element is a reference to the styleOverrideTable defined
below and maps to the corresponding character in the characters
field. Elements with value 0 have the default type style
Only set for top level comments. The number displayed with the
comment in the UI

name:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601
-}
type alias Project =
    { id : Float
    , name : String
    }

type alias ProjectFilesResponse =
    { files : Array File
    }

{-| key:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

name:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

thumbnailURL:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601

lastModified:
Allows manipulation and formatting of text strings and determination and location of
substrings within strings.
the name given to the node by the user in the tool.
Image scaling mode
File suffix to append to all filenames
a string uniquely identifying this node within the document
Text contained within text box
PostScript font name
Font family of text (standard name)
ID of component that this instance came from, refers to components
table (see endpoints section below)
(MISSING IN DOCS)
The content of the comment
If present, the id of the comment to which this is the reply
Unique identifier for comment
The file in which the comment lives
utc date in iso8601
-}
type alias File =
    { key : String
    , name : String
    , thumbnailURL : String
    , lastModified : String
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
        |> Jpipe.required "effects" (Jdec.array effect)
        |> Jpipe.required "layoutGrids" (Jdec.array layoutGrid)
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "absoluteBoundingBox" rectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "backgroundColor" color
        |> Jpipe.required "constraints" layoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "clipsContent" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSetting)
        |> Jpipe.required "type" nodeType
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "preserveRatio" Jdec.bool
        |> Jpipe.required "children" (Jdec.array node)

encodeComponent : Component -> Jenc.Value
encodeComponent x =
    Jenc.object
        [ ("effects", makeArrayEncoder encodeEffect x.effects)
        , ("layoutGrids", makeArrayEncoder encodeLayoutGrid x.layoutGrids)
        , ("opacity", Jenc.float x.opacity)
        , ("name", Jenc.string x.name)
        , ("absoluteBoundingBox", encodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", Jenc.bool x.visible)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("backgroundColor", encodeColor x.backgroundColor)
        , ("constraints", encodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("clipsContent", Jenc.bool x.clipsContent)
        , ("exportSettings", makeArrayEncoder encodeExportSetting x.exportSettings)
        , ("type", encodeNodeType x.componentType)
        , ("id", Jenc.string x.id)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
        , ("children", makeArrayEncoder encodeNode x.children)
        ]

rectangle : Jdec.Decoder Rectangle
rectangle =
    Jpipe.decode Rectangle
        |> Jpipe.required "effects" (Jdec.array effect)
        |> Jpipe.required "cornerRadius" Jdec.float
        |> Jpipe.required "opacity" Jdec.float
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "strokeAlign" strokeAlign
        |> Jpipe.required "strokeWeight" Jdec.float
        |> Jpipe.required "fills" (Jdec.array paint)
        |> Jpipe.required "absoluteBoundingBox" rectangle
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "blendMode" blendMode
        |> Jpipe.required "constraints" layoutConstraint
        |> Jpipe.required "isMask" Jdec.bool
        |> Jpipe.required "exportSettings" (Jdec.array exportSetting)
        |> Jpipe.required "type" nodeType
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "strokes" (Jdec.array paint)
        |> Jpipe.required "preserveRatio" Jdec.bool

encodeRectangle : Rectangle -> Jenc.Value
encodeRectangle x =
    Jenc.object
        [ ("effects", makeArrayEncoder encodeEffect x.effects)
        , ("cornerRadius", Jenc.float x.cornerRadius)
        , ("opacity", Jenc.float x.opacity)
        , ("name", Jenc.string x.name)
        , ("strokeAlign", encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", Jenc.float x.strokeWeight)
        , ("fills", makeArrayEncoder encodePaint x.fills)
        , ("absoluteBoundingBox", encodeRectangle x.absoluteBoundingBox)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", Jenc.bool x.visible)
        , ("blendMode", encodeBlendMode x.blendMode)
        , ("constraints", encodeLayoutConstraint x.constraints)
        , ("isMask", Jenc.bool x.isMask)
        , ("exportSettings", makeArrayEncoder encodeExportSetting x.exportSettings)
        , ("type", encodeNodeType x.rectangleType)
        , ("id", Jenc.string x.id)
        , ("strokes", makeArrayEncoder encodePaint x.strokes)
        , ("preserveRatio", Jenc.bool x.preserveRatio)
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
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "radius" Jdec.float
        |> Jpipe.optional "color" (Jdec.nullable color) Nothing
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "offset" (Jdec.nullable vector2) Nothing

encodeEffect : Effect -> Jenc.Value
encodeEffect x =
    Jenc.object
        [ ("type", encodeEffectType x.effectType)
        , ("visible", Jenc.bool x.visible)
        , ("radius", Jenc.float x.radius)
        , ("color", makeNullableEncoder encodeColor x.color)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("offset", makeNullableEncoder encodeVector2 x.offset)
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
                "SCALE" -> Jdec.succeed ConstraintTypeSCALE
                "HEIGHT" -> Jdec.succeed Height
                "WIDTH" -> Jdec.succeed Width
                somethingElse -> Jdec.fail <| "Invalid ConstraintType: " ++ somethingElse
        )

encodeConstraintType : ConstraintType -> Jenc.Value
encodeConstraintType x = case x of
    ConstraintTypeSCALE -> Jenc.string "SCALE"
    Height -> Jenc.string "HEIGHT"
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
        |> Jpipe.optional "gradientHandlePositions" (Jdec.nullable (Jdec.array vector2)) Nothing
        |> Jpipe.optional "gradientStops" (Jdec.nullable (Jdec.array colorStop)) Nothing
        |> Jpipe.optional "scaleMode" (Jdec.nullable Jdec.string) Nothing

encodePaint : Paint -> Jenc.Value
encodePaint x =
    Jenc.object
        [ ("type", encodePaintType x.paintType)
        , ("visible", Jenc.bool x.visible)
        , ("opacity", Jenc.float x.opacity)
        , ("color", makeNullableEncoder encodeColor x.color)
        , ("gradientHandlePositions", makeNullableEncoder (makeArrayEncoder encodeVector2) x.gradientHandlePositions)
        , ("gradientStops", makeNullableEncoder (makeArrayEncoder encodeColorStop) x.gradientStops)
        , ("scaleMode", makeNullableEncoder Jenc.string x.scaleMode)
        ]

colorStop : Jdec.Decoder ColorStop
colorStop =
    Jpipe.decode ColorStop
        |> Jpipe.required "position" Jdec.float
        |> Jpipe.required "color" color

encodeColorStop : ColorStop -> Jenc.Value
encodeColorStop x =
    Jenc.object
        [ ("position", Jenc.float x.position)
        , ("color", encodeColor x.color)
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
                "RECTANGLE" -> Jdec.succeed NodeTypeRECTANGLE
                "REGULAR_POLYGON" -> Jdec.succeed RegularPolygon
                "SLICE" -> Jdec.succeed Slice
                "STAR" -> Jdec.succeed Star
                "TEXT" -> Jdec.succeed Text
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
    NodeTypeCOMPONENT -> Jenc.string "COMPONENT"
    NodeTypeDOCUMENT -> Jenc.string "DOCUMENT"
    NodeTypeRECTANGLE -> Jenc.string "RECTANGLE"
    RegularPolygon -> Jenc.string "REGULAR_POLYGON"
    Slice -> Jenc.string "SLICE"
    Star -> Jenc.string "STAR"
    Text -> Jenc.string "TEXT"
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

node : Jdec.Decoder Node
node =
    Jpipe.decode Node
        |> Jpipe.optional "effects" (Jdec.nullable (Jdec.array effect)) Nothing
        |> Jpipe.optional "layoutGrids" (Jdec.nullable (Jdec.array layoutGrid)) Nothing
        |> Jpipe.optional "cornerRadius" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "characters" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "opacity" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.optional "strokeAlign" (Jdec.nullable strokeAlign) Nothing
        |> Jpipe.optional "strokeWeight" (Jdec.nullable Jdec.float) Nothing
        |> Jpipe.optional "fills" (Jdec.nullable (Jdec.array paint)) Nothing
        |> Jpipe.optional "absoluteBoundingBox" (Jdec.nullable rectangle) Nothing
        |> Jpipe.optional "styleOverrideTable" (Jdec.nullable (Jdec.array typeStyle)) Nothing
        |> Jpipe.optional "style" (Jdec.nullable typeStyle) Nothing
        |> Jpipe.optional "transitionNodeID" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.optional "blendMode" (Jdec.nullable blendMode) Nothing
        |> Jpipe.optional "backgroundColor" (Jdec.nullable color) Nothing
        |> Jpipe.optional "constraints" (Jdec.nullable layoutConstraint) Nothing
        |> Jpipe.optional "isMask" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "clipsContent" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "exportSettings" (Jdec.nullable (Jdec.array exportSetting)) Nothing
        |> Jpipe.optional "componentId" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "type" nodeType
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.optional "strokes" (Jdec.nullable (Jdec.array paint)) Nothing
        |> Jpipe.optional "preserveRatio" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "children" (Jdec.nullable (Jdec.array node)) Nothing
        |> Jpipe.optional "characterStyleOverrides" (Jdec.nullable (Jdec.array Jdec.float)) Nothing

encodeNode : Node -> Jenc.Value
encodeNode x =
    Jenc.object
        [ ("effects", makeNullableEncoder (makeArrayEncoder encodeEffect) x.effects)
        , ("layoutGrids", makeNullableEncoder (makeArrayEncoder encodeLayoutGrid) x.layoutGrids)
        , ("cornerRadius", makeNullableEncoder Jenc.float x.cornerRadius)
        , ("characters", makeNullableEncoder Jenc.string x.characters)
        , ("opacity", makeNullableEncoder Jenc.float x.opacity)
        , ("name", Jenc.string x.name)
        , ("strokeAlign", makeNullableEncoder encodeStrokeAlign x.strokeAlign)
        , ("strokeWeight", makeNullableEncoder Jenc.float x.strokeWeight)
        , ("fills", makeNullableEncoder (makeArrayEncoder encodePaint) x.fills)
        , ("absoluteBoundingBox", makeNullableEncoder encodeRectangle x.absoluteBoundingBox)
        , ("styleOverrideTable", makeNullableEncoder (makeArrayEncoder encodeTypeStyle) x.styleOverrideTable)
        , ("style", makeNullableEncoder encodeTypeStyle x.style)
        , ("transitionNodeID", makeNullableEncoder Jenc.string x.transitionNodeID)
        , ("visible", Jenc.bool x.visible)
        , ("blendMode", makeNullableEncoder encodeBlendMode x.blendMode)
        , ("backgroundColor", makeNullableEncoder encodeColor x.backgroundColor)
        , ("constraints", makeNullableEncoder encodeLayoutConstraint x.constraints)
        , ("isMask", makeNullableEncoder Jenc.bool x.isMask)
        , ("clipsContent", makeNullableEncoder Jenc.bool x.clipsContent)
        , ("exportSettings", makeNullableEncoder (makeArrayEncoder encodeExportSetting) x.exportSettings)
        , ("componentId", makeNullableEncoder Jenc.string x.componentID)
        , ("type", encodeNodeType x.nodeType)
        , ("id", Jenc.string x.id)
        , ("strokes", makeNullableEncoder (makeArrayEncoder encodePaint) x.strokes)
        , ("preserveRatio", makeNullableEncoder Jenc.bool x.preserveRatio)
        , ("children", makeNullableEncoder (makeArrayEncoder encodeNode) x.children)
        , ("characterStyleOverrides", makeNullableEncoder (makeArrayEncoder Jenc.float) x.characterStyleOverrides)
        ]

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
        |> Jpipe.required "children" (Jdec.array node)
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "visible" Jdec.bool
        |> Jpipe.required "type" nodeType

encodeDocument : Document -> Jenc.Value
encodeDocument x =
    Jenc.object
        [ ("children", makeArrayEncoder encodeNode x.children)
        , ("id", Jenc.string x.id)
        , ("name", Jenc.string x.name)
        , ("visible", Jenc.bool x.visible)
        , ("type", encodeNodeType x.documentType)
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
        |> Jpipe.required "message" Jdec.string
        |> Jpipe.required "created_at" Jdec.string
        |> Jpipe.required "user" user
        |> Jpipe.required "order_id" Jdec.float
        |> Jpipe.required "parent_id" Jdec.string
        |> Jpipe.required "client_meta" clientMeta
        |> Jpipe.optional "resolved_at" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "file_key" Jdec.string

encodeComment : Comment -> Jenc.Value
encodeComment x =
    Jenc.object
        [ ("message", Jenc.string x.message)
        , ("created_at", Jenc.string x.createdAt)
        , ("user", encodeUser x.user)
        , ("order_id", Jenc.float x.orderID)
        , ("parent_id", Jenc.string x.parentID)
        , ("client_meta", encodeClientMeta x.clientMeta)
        , ("resolved_at", makeNullableEncoder Jenc.string x.resolvedAt)
        , ("id", Jenc.string x.id)
        , ("file_key", Jenc.string x.fileKey)
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
        |> Jpipe.required "message" Jdec.string
        |> Jpipe.required "client_meta" clientMeta

encodeCommentRequest : CommentRequest -> Jenc.Value
encodeCommentRequest x =
    Jenc.object
        [ ("message", Jenc.string x.message)
        , ("client_meta", encodeClientMeta x.clientMeta)
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
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "thumbnail_url" Jdec.string
        |> Jpipe.required "last_modified" Jdec.string

encodeFile : File -> Jenc.Value
encodeFile x =
    Jenc.object
        [ ("key", Jenc.string x.key)
        , ("name", Jenc.string x.name)
        , ("thumbnail_url", Jenc.string x.thumbnailURL)
        , ("last_modified", Jenc.string x.lastModified)
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
