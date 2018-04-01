// Example code that deserializes and serializes the model.
// extern crate serde;
// #[macro_use]
// extern crate serde_derive;
// extern crate serde_json;
//
// use generated_module::FileResponse;
//
// fn main() {
//     let json = r#"{"answer": 42}"#;
//     let model: FileResponse = serde_json::from_str(&json).unwrap();
// }

extern crate serde_json;
use std::collections::HashMap;

#[derive(Serialize, Deserialize)]
pub struct FileResponse {
    /// Node Properties
    /// The root node
    /// The root node within the document
    #[serde(rename = "document")]
    document: Document,

    /// A mapping from node IDs to component metadata. This is to help you determine which
    /// components each instance comes from. Currently the only piece of metadata available on
    /// components is the name of the component, but more properties will be forthcoming.
    #[serde(rename = "components")]
    components: HashMap<String, Component>,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "schemaVersion")]
    schema_version: f64,
}

/// A node that can have instances created of it that share the same properties
#[derive(Serialize, Deserialize)]
pub struct Component {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Vec<LayoutGrid>,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "name")]
    name: String,

    /// Bounding box of the node in absolute space coordinates
    /// A rectangle
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "visible")]
    visible: bool,

    /// Enum describing how layer blends with layers below
    /// This type is a string enum with the following possible values
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
    #[serde(rename = "backgroundColor")]
    background_color: Color,

    /// Horizontal and vertical layout constraints for node
    /// Layout constraint relative to containing Frame
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "clipsContent")]
    clips_content: bool,

    /// An array of export settings representing images to export from node
    /// An array of export settings representing images to export from this node
    /// An array of export settings representing images to export from the canvas
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    component_type: NodeType,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "id")]
    id: String,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// An array of nodes that are direct children of this node
    /// An array of nodes that are being boolean operated on
    /// An array of top level layers on the canvas
    /// An array of canvases attached to the document
    #[serde(rename = "children")]
    children: Vec<Node>,
}

/// Bounding box of the node in absolute space coordinates
/// A rectangle
#[derive(Serialize, Deserialize)]
pub struct Rectangle {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "cornerRadius")]
    corner_radius: f64,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "name")]
    name: String,

    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    /// An array of stroke paints applied to the node
    /// Paints applied to characters
    #[serde(rename = "fills")]
    fills: Vec<Paint>,

    /// Bounding box of the node in absolute space coordinates
    /// A rectangle
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "visible")]
    visible: bool,

    /// Enum describing how layer blends with layers below
    /// This type is a string enum with the following possible values
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Horizontal and vertical layout constraints for node
    /// Layout constraint relative to containing Frame
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    /// An array of export settings representing images to export from this node
    /// An array of export settings representing images to export from the canvas
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    rectangle_type: NodeType,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "id")]
    id: String,

    /// An array of fill paints applied to the node
    /// An array of stroke paints applied to the node
    /// Paints applied to characters
    #[serde(rename = "strokes")]
    strokes: Vec<Paint>,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// Horizontal and vertical layout constraints for node
/// Layout constraint relative to containing Frame
#[derive(Serialize, Deserialize)]
pub struct LayoutConstraint {
    /// Vertical constraint as an enum
    /// "TOP": Node is laid out relative to top of the containing frame
    /// "BOTTOM": Node is laid out relative to bottom of the containing frame
    /// "CENTER": Node is vertically centered relative to containing frame
    /// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// "SCALE": Node scales vertically with containing frame
    #[serde(rename = "vertical")]
    vertical: Vertical,

    /// Horizontal constraint as an enum
    /// "LEFT": Node is laid out relative to left of the containing frame
    /// "RIGHT": Node is laid out relative to right of the containing frame
    /// "CENTER": Node is horizontally centered relative to containing frame
    /// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// "SCALE": Node scales horizontally with containing frame
    #[serde(rename = "horizontal")]
    horizontal: Horizontal,
}

/// An array of effects attached to this node
/// (see effects sectionfor more details)
/// A visual effect such as a shadow or blur
#[derive(Serialize, Deserialize)]
pub struct Effect {
    /// Type of effect as a string enum
    #[serde(rename = "type")]
    effect_type: EffectType,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "visible")]
    visible: bool,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "radius")]
    radius: f64,

    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
    #[serde(rename = "color")]
    color: Option<Color>,

    /// Enum describing how layer blends with layers below
    /// This type is a string enum with the following possible values
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: Option<BlendMode>,

    /// 2d vector offset within the frame.
    /// A 2d vector
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    #[serde(rename = "offset")]
    offset: Option<Vector2>,
}

/// Background color of the node
/// An RGBA color
/// Solid color of the paint
/// Color attached to corresponding position
/// Color of the grid
/// Background color of the canvas
#[derive(Serialize, Deserialize)]
pub struct Color {
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "r")]
    r: f64,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "g")]
    g: f64,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "b")]
    b: f64,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "a")]
    a: f64,
}

/// 2d vector offset within the frame.
/// A 2d vector
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
#[derive(Serialize, Deserialize)]
pub struct Vector2 {
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "x")]
    x: f64,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "y")]
    y: f64,
}

/// An array of export settings representing images to export from node
/// Format and size to export an asset at
/// An array of export settings representing images to export from the canvas
/// An array of export settings representing images to export from this node
#[derive(Serialize, Deserialize)]
pub struct ExportSetting {
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "suffix")]
    suffix: String,

    /// Image type, string enum
    #[serde(rename = "format")]
    format: Format,

    /// Constraint that determines sizing of exported asset
    /// Sizing constraint for exports
    #[serde(rename = "constraint")]
    constraint: Constraint,
}

/// Constraint that determines sizing of exported asset
/// Sizing constraint for exports
#[derive(Serialize, Deserialize)]
pub struct Constraint {
    /// Type of constraint to apply; string enum with potential values below
    /// "SCALE": Scale by value
    /// "WIDTH": Scale proportionally and set width to value
    /// "HEIGHT": Scale proportionally and set height to value
    #[serde(rename = "type")]
    constraint_type: ConstraintType,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "value")]
    value: f64,
}

/// An array of fill paints applied to the node
/// A solid color, gradient, or image texture that can be applied as fills or strokes
/// An array of stroke paints applied to the node
/// Paints applied to characters
#[derive(Serialize, Deserialize)]
pub struct Paint {
    /// Type of paint as a string enum
    #[serde(rename = "type")]
    paint_type: PaintType,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "visible")]
    visible: bool,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
    #[serde(rename = "color")]
    color: Option<Color>,

    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    #[serde(rename = "gradientHandlePositions")]
    gradient_handle_positions: Option<Vec<Vector2>>,

    /// Positions of key points along the gradient axis with the colors
    /// anchored there. Colors along the gradient are interpolated smoothly
    /// between neighboring gradient stops.
    #[serde(rename = "gradientStops")]
    gradient_stops: Option<Vec<ColorStop>>,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "scaleMode")]
    scale_mode: Option<String>,
}

/// Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly
/// between neighboring gradient stops.
/// A position color pair representing a gradient stop
#[derive(Serialize, Deserialize)]
pub struct ColorStop {
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "position")]
    position: f64,

    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
    #[serde(rename = "color")]
    color: Color,
}

/// An array of nodes that are direct children of this node
/// An array of nodes that are being boolean operated on
/// An array of top level layers on the canvas
/// An array of canvases attached to the document
/// Node Properties
/// The root node
/// The root node within the document
/// Represents a single page
/// A node of fixed size containing other nodes
/// A logical grouping of nodes
/// A vector network, consisting of vertices and edges
/// A group that has a boolean operation applied to it
/// A regular star shape
/// A straight line
/// An ellipse
/// A regular n-sided polygon
/// Bounding box of the node in absolute space coordinates
/// A rectangle
/// A text box
/// A rectangular region of the canvas that can be exported
/// A node that can have instances created of it that share the same properties
/// An instance of a component, changes to the component result in the same
/// changes applied to the instance
#[derive(Serialize, Deserialize)]
pub struct Node {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Option<Vec<Effect>>,

    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Option<Vec<LayoutGrid>>,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "cornerRadius")]
    corner_radius: Option<f64>,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "characters")]
    characters: Option<String>,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "opacity")]
    opacity: Option<f64>,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "name")]
    name: String,

    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: Option<StrokeAlign>,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "strokeWeight")]
    stroke_weight: Option<f64>,

    /// An array of fill paints applied to the node
    /// An array of stroke paints applied to the node
    /// Paints applied to characters
    #[serde(rename = "fills")]
    fills: Option<Vec<Paint>>,

    /// Bounding box of the node in absolute space coordinates
    /// A rectangle
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Option<Box<Rectangle>>,

    /// Map from ID to TypeStyle for looking up style overrides
    #[serde(rename = "styleOverrideTable")]
    style_override_table: Option<Vec<TypeStyle>>,

    /// Map from ID to TypeStyle for looking up style overrides
    /// Metadata for character formatting
    /// Style of text including font family and weight (see type style
    /// section for more information)
    #[serde(rename = "style")]
    style: Option<TypeStyle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "visible")]
    visible: bool,

    /// Enum describing how layer blends with layers below
    /// This type is a string enum with the following possible values
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: Option<BlendMode>,

    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
    #[serde(rename = "backgroundColor")]
    background_color: Option<Color>,

    /// Horizontal and vertical layout constraints for node
    /// Layout constraint relative to containing Frame
    #[serde(rename = "constraints")]
    constraints: Option<LayoutConstraint>,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "isMask")]
    is_mask: Option<bool>,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "clipsContent")]
    clips_content: Option<bool>,

    /// An array of export settings representing images to export from node
    /// An array of export settings representing images to export from this node
    /// An array of export settings representing images to export from the canvas
    #[serde(rename = "exportSettings")]
    export_settings: Option<Vec<ExportSetting>>,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "componentId")]
    component_id: Option<String>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    node_type: NodeType,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "id")]
    id: String,

    /// An array of fill paints applied to the node
    /// An array of stroke paints applied to the node
    /// Paints applied to characters
    #[serde(rename = "strokes")]
    strokes: Option<Vec<Paint>>,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "preserveRatio")]
    preserve_ratio: Option<bool>,

    /// An array of nodes that are direct children of this node
    /// An array of nodes that are being boolean operated on
    /// An array of top level layers on the canvas
    /// An array of canvases attached to the document
    #[serde(rename = "children")]
    children: Option<Vec<Node>>,

    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    #[serde(rename = "characterStyleOverrides")]
    character_style_overrides: Option<Vec<f64>>,
}

/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
/// Guides to align and place objects within a frame
#[derive(Serialize, Deserialize)]
pub struct LayoutGrid {
    /// Orientation of the grid as a string enum
    /// "COLUMNS": Vertical grid
    /// "ROWS": Horizontal grid
    /// "GRID": Square grid
    #[serde(rename = "pattern")]
    pattern: Pattern,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "sectionSize")]
    section_size: f64,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "visible")]
    visible: bool,

    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
    #[serde(rename = "color")]
    color: Color,

    /// Positioning of grid as a string enum
    /// "MIN": Grid starts at the left or top of the frame
    /// "MAX": Grid starts at the right or bottom of the frame
    /// "CENTER": Grid is center aligned
    #[serde(rename = "alignment")]
    alignment: Alignment,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "gutterSize")]
    gutter_size: f64,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "offset")]
    offset: f64,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "count")]
    count: f64,
}

/// Map from ID to TypeStyle for looking up style overrides
/// Metadata for character formatting
/// Style of text including font family and weight (see type style
/// section for more information)
#[derive(Serialize, Deserialize)]
pub struct TypeStyle {
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "lineHeightPx")]
    line_height_px: f64,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "fontPostScriptName")]
    font_post_script_name: String,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "fontWeight")]
    font_weight: f64,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "lineHeightPercent")]
    line_height_percent: f64,

    /// Vertical text alignment as string enum
    #[serde(rename = "textAlignVertical")]
    text_align_vertical: TextAlignVertical,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "fontSize")]
    font_size: f64,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "italic")]
    italic: bool,

    /// An array of fill paints applied to the node
    /// An array of stroke paints applied to the node
    /// Paints applied to characters
    #[serde(rename = "fills")]
    fills: Vec<Paint>,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "fontFamily")]
    font_family: String,

    /// Horizontal text alignment as string enum
    #[serde(rename = "textAlignHorizontal")]
    text_align_horizontal: TextAlignHorizontal,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "letterSpacing")]
    letter_spacing: f64,
}

/// Node Properties
/// The root node
/// The root node within the document
#[derive(Serialize, Deserialize)]
pub struct Document {
    /// An array of nodes that are direct children of this node
    /// An array of nodes that are being boolean operated on
    /// An array of top level layers on the canvas
    /// An array of canvases attached to the document
    #[serde(rename = "children")]
    children: Vec<Node>,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "id")]
    id: String,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "name")]
    name: String,

    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    #[serde(rename = "visible")]
    visible: bool,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    document_type: NodeType,
}

#[derive(Serialize, Deserialize)]
pub struct CommentsResponse {
    #[serde(rename = "comments")]
    comments: Vec<Comment>,
}

/// A comment or reply left by a user
#[derive(Serialize, Deserialize)]
pub struct Comment {
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "message")]
    message: String,

    /// Enables basic storage and retrieval of dates and times.
    #[serde(rename = "created_at")]
    created_at: String,

    /// A description of a user
    /// The user who left the comment
    #[serde(rename = "user")]
    user: User,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "order_id")]
    order_id: f64,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "parent_id")]
    parent_id: String,

    /// 2d vector offset within the frame.
    /// A 2d vector
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    /// A relative offset within a frame
    #[serde(rename = "client_meta")]
    client_meta: ClientMeta,

    /// If set, when the comment was resolved
    #[serde(rename = "resolved_at")]
    resolved_at: Option<String>,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "id")]
    id: String,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "file_key")]
    file_key: String,
}

/// 2d vector offset within the frame.
/// A 2d vector
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
/// A relative offset within a frame
#[derive(Serialize, Deserialize)]
pub struct ClientMeta {
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "x")]
    x: Option<f64>,

    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "y")]
    y: Option<f64>,

    /// Unique id specifying the frame.
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    #[serde(rename = "node_id")]
    node_id: Option<Vec<String>>,

    /// 2d vector offset within the frame.
    /// A 2d vector
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    #[serde(rename = "node_offset")]
    node_offset: Option<Vector2>,
}

/// A description of a user
/// The user who left the comment
#[derive(Serialize, Deserialize)]
pub struct User {
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "handle")]
    handle: String,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "img_url")]
    img_url: String,
}

#[derive(Serialize, Deserialize)]
pub struct CommentRequest {
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "message")]
    message: String,

    /// 2d vector offset within the frame.
    /// A 2d vector
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    /// A relative offset within a frame
    #[serde(rename = "client_meta")]
    client_meta: ClientMeta,
}

#[derive(Serialize, Deserialize)]
pub struct ProjectsResponse {
    #[serde(rename = "projects")]
    projects: Vec<Project>,
}

#[derive(Serialize, Deserialize)]
pub struct Project {
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "id")]
    id: f64,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "name")]
    name: String,
}

#[derive(Serialize, Deserialize)]
pub struct ProjectFilesResponse {
    #[serde(rename = "files")]
    files: Vec<File>,
}

#[derive(Serialize, Deserialize)]
pub struct File {
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "key")]
    key: String,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "name")]
    name: String,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "thumbnail_url")]
    thumbnail_url: String,

    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    #[serde(rename = "last_modified")]
    last_modified: String,
}

/// Enum describing how layer blends with layers below
/// This type is a string enum with the following possible values
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
#[derive(Serialize, Deserialize)]
pub enum BlendMode {
    #[serde(rename = "COLOR")]
    Color,

    #[serde(rename = "COLOR_BURN")]
    ColorBurn,

    #[serde(rename = "COLOR_DODGE")]
    ColorDodge,

    #[serde(rename = "DARKEN")]
    Darken,

    #[serde(rename = "DIFFERENCE")]
    Difference,

    #[serde(rename = "EXCLUSION")]
    Exclusion,

    #[serde(rename = "HARD_LIGHT")]
    HardLight,

    #[serde(rename = "HUE")]
    Hue,

    #[serde(rename = "LIGHTEN")]
    Lighten,

    #[serde(rename = "LINEAR_BURN")]
    LinearBurn,

    #[serde(rename = "LINEAR_DODGE")]
    LinearDodge,

    #[serde(rename = "LUMINOSITY")]
    Luminosity,

    #[serde(rename = "MULTIPLY")]
    Multiply,

    #[serde(rename = "NORMAL")]
    Normal,

    #[serde(rename = "OVERLAY")]
    Overlay,

    #[serde(rename = "PASS_THROUGH")]
    PassThrough,

    #[serde(rename = "SATURATION")]
    Saturation,

    #[serde(rename = "SCREEN")]
    Screen,

    #[serde(rename = "SOFT_LIGHT")]
    SoftLight,
}

/// Horizontal constraint as an enum
/// "LEFT": Node is laid out relative to left of the containing frame
/// "RIGHT": Node is laid out relative to right of the containing frame
/// "CENTER": Node is horizontally centered relative to containing frame
/// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales horizontally with containing frame
#[derive(Serialize, Deserialize)]
pub enum Horizontal {
    #[serde(rename = "CENTER")]
    Center,

    #[serde(rename = "LEFT")]
    Left,

    #[serde(rename = "LEFT_RIGHT")]
    LeftRight,

    #[serde(rename = "RIGHT")]
    Right,

    #[serde(rename = "SCALE")]
    Scale,
}

/// Vertical constraint as an enum
/// "TOP": Node is laid out relative to top of the containing frame
/// "BOTTOM": Node is laid out relative to bottom of the containing frame
/// "CENTER": Node is vertically centered relative to containing frame
/// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales vertically with containing frame
#[derive(Serialize, Deserialize)]
pub enum Vertical {
    #[serde(rename = "BOTTOM")]
    Bottom,

    #[serde(rename = "CENTER")]
    Center,

    #[serde(rename = "SCALE")]
    Scale,

    #[serde(rename = "TOP")]
    Top,

    #[serde(rename = "TOP_BOTTOM")]
    TopBottom,
}

/// Type of effect as a string enum
#[derive(Serialize, Deserialize)]
pub enum EffectType {
    #[serde(rename = "BACKGROUND_BLUR")]
    BackgroundBlur,

    #[serde(rename = "DROP_SHADOW")]
    DropShadow,

    #[serde(rename = "INNER_SHADOW")]
    InnerShadow,

    #[serde(rename = "LAYER_BLUR")]
    LayerBlur,
}

/// Type of constraint to apply; string enum with potential values below
/// "SCALE": Scale by value
/// "WIDTH": Scale proportionally and set width to value
/// "HEIGHT": Scale proportionally and set height to value
#[derive(Serialize, Deserialize)]
pub enum ConstraintType {
    #[serde(rename = "HEIGHT")]
    Height,

    #[serde(rename = "SCALE")]
    Scale,

    #[serde(rename = "WIDTH")]
    Width,
}

/// Image type, string enum
#[derive(Serialize, Deserialize)]
pub enum Format {
    #[serde(rename = "JPG")]
    Jpg,

    #[serde(rename = "PNG")]
    Png,

    #[serde(rename = "SVG")]
    Svg,
}

/// Type of paint as a string enum
#[derive(Serialize, Deserialize)]
pub enum PaintType {
    #[serde(rename = "EMOJI")]
    Emoji,

    #[serde(rename = "GRADIENT_ANGULAR")]
    GradientAngular,

    #[serde(rename = "GRADIENT_DIAMOND")]
    GradientDiamond,

    #[serde(rename = "GRADIENT_LINEAR")]
    GradientLinear,

    #[serde(rename = "GRADIENT_RADIAL")]
    GradientRadial,

    #[serde(rename = "IMAGE")]
    Image,

    #[serde(rename = "SOLID")]
    Solid,
}

/// the type of the node, refer to table below for details
#[derive(Serialize, Deserialize)]
pub enum NodeType {
    #[serde(rename = "BOOLEAN")]
    Boolean,

    #[serde(rename = "CANVAS")]
    Canvas,

    #[serde(rename = "COMPONENT")]
    Component,

    #[serde(rename = "DOCUMENT")]
    Document,

    #[serde(rename = "ELLIPSE")]
    Ellipse,

    #[serde(rename = "FRAME")]
    Frame,

    #[serde(rename = "GROUP")]
    Group,

    #[serde(rename = "INSTANCE")]
    Instance,

    #[serde(rename = "LINE")]
    Line,

    #[serde(rename = "RECTANGLE")]
    Rectangle,

    #[serde(rename = "REGULAR_POLYGON")]
    RegularPolygon,

    #[serde(rename = "SLICE")]
    Slice,

    #[serde(rename = "STAR")]
    Star,

    #[serde(rename = "TEXT")]
    Text,

    #[serde(rename = "VECTOR")]
    Vector,
}

/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
#[derive(Serialize, Deserialize)]
pub enum StrokeAlign {
    #[serde(rename = "CENTER")]
    Center,

    #[serde(rename = "INSIDE")]
    Inside,

    #[serde(rename = "OUTSIDE")]
    Outside,
}

/// Positioning of grid as a string enum
/// "MIN": Grid starts at the left or top of the frame
/// "MAX": Grid starts at the right or bottom of the frame
/// "CENTER": Grid is center aligned
#[derive(Serialize, Deserialize)]
pub enum Alignment {
    #[serde(rename = "CENTER")]
    Center,

    #[serde(rename = "MAX")]
    Max,

    #[serde(rename = "MIN")]
    Min,
}

/// Orientation of the grid as a string enum
/// "COLUMNS": Vertical grid
/// "ROWS": Horizontal grid
/// "GRID": Square grid
#[derive(Serialize, Deserialize)]
pub enum Pattern {
    #[serde(rename = "COLUMNS")]
    Columns,

    #[serde(rename = "GRID")]
    Grid,

    #[serde(rename = "ROWS")]
    Rows,
}

/// Horizontal text alignment as string enum
#[derive(Serialize, Deserialize)]
pub enum TextAlignHorizontal {
    #[serde(rename = "CENTER")]
    Center,

    #[serde(rename = "JUSTIFIED")]
    Justified,

    #[serde(rename = "LEFT")]
    Left,

    #[serde(rename = "RIGHT")]
    Right,
}

/// Vertical text alignment as string enum
#[derive(Serialize, Deserialize)]
pub enum TextAlignVertical {
    #[serde(rename = "BOTTOM")]
    Bottom,

    #[serde(rename = "CENTER")]
    Center,

    #[serde(rename = "TOP")]
    Top,
}
