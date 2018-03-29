// Example code that deserializes and serializes the model.
// extern crate serde;
// #[macro_use]
// extern crate serde_derive;
// extern crate serde_json;
//
// use generated_module::RegularPolygonNode;
//
// fn main() {
//     let json = r#"{"answer": 42}"#;
//     let model: RegularPolygonNode = serde_json::from_str(&json).unwrap();
// }

extern crate serde_json;
use std::collections::HashMap;

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct RegularPolygonNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    regular_polygon_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<PaintElement>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<PaintElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// A rectangle that expresses a bounding box in absolute coordinates
///
/// Bounding box of the node in absolute space coordinates
#[derive(Serialize, Deserialize)]
pub struct RegularPolygonNodeRectangle {
    /// X coordinate of top left corner of the rectangle
    #[serde(rename = "x")]
    x: f64,

    /// Y coordinate of top left corner of the rectangle
    #[serde(rename = "y")]
    y: f64,

    /// Width of the rectangle
    #[serde(rename = "width")]
    width: f64,

    /// Height of the rectangle
    #[serde(rename = "height")]
    height: f64,
}

/// Layout constraint relative to containing Frame
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
#[derive(Serialize, Deserialize)]
pub struct RegularPolygonNodeLayoutConstraint {
    /// * TOP: Node is laid out relative to top of the containing frame
    /// * BOTTOM: Node is laid out relative to bottom of the containing frame
    /// * CENTER: Node is vertically centered relative to containing frame
    /// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// * SCALE: Node scales vertically with containing frame
    #[serde(rename = "vertical")]
    vertical: Vertical,

    /// * LEFT: Node is laid out relative to left of the containing frame
    /// * RIGHT: Node is laid out relative to right of the containing frame
    /// * CENTER: Node is horizontally centered relative to containing frame
    /// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// * SCALE: Node scales horizontally with containing frame
    #[serde(rename = "horizontal")]
    horizontal: Horizontal,
}

/// A visual effect such as a shadow or blur
///
/// An array of effects attached to this node (see effects section for more details)
#[derive(Serialize, Deserialize)]
pub struct EffectElement {
    /// Type of effect as a string enum
    #[serde(rename = "type")]
    effect_type: EffectType,

    /// See type property for effect of this field
    #[serde(rename = "radius")]
    radius: f64,

    /// See type property for effect of this field
    #[serde(rename = "visible")]
    visible: bool,

    /// See type property for effect of this field
    #[serde(rename = "color")]
    color: EffectColor,

    /// See type property for effect of this field
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// See type property for effect of this field
    #[serde(rename = "offset")]
    offset: EffectVector,
}

/// An RGBA color
///
/// See type property for effect of this field
///
/// (For solid paints) Solid color of the paint
///
/// Color attached to corresponding position
///
/// Color of the grid
///
/// Background color of the node
///
/// Background color of the canvas
#[derive(Serialize, Deserialize)]
pub struct EffectColor {
    /// Red channel value, between 0 and 1
    #[serde(rename = "r")]
    r: f64,

    /// Green channel value, between 0 and 1
    #[serde(rename = "g")]
    g: f64,

    /// Blue channel value, between 0 and 1
    #[serde(rename = "b")]
    b: f64,

    /// Alpha channel value, between 0 and 1
    #[serde(rename = "a")]
    a: f64,
}

/// A 2d vector
///
/// See type property for effect of this field
///
/// (For gradient paints) This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left corner of the
/// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
/// corresponds to the start of the gradient (value 0 for the purposes of calculating
/// gradient stops), the second position is the end of the gradient (value 1), and the third
/// handle position determines the width of the gradient (only relevant for non-linear
/// gradients).
#[derive(Serialize, Deserialize)]
pub struct EffectVector {
    /// X coordinate of the vector
    #[serde(rename = "x")]
    x: f64,

    /// Y coordinate of the vector
    #[serde(rename = "y")]
    y: f64,
}

/// Format and size to export an asset at
///
/// An array of export settings representing images to export from node
///
/// An array of export settings representing images to export from the canvas
///
/// A rectangular region of the canvas that can be exported
#[derive(Serialize, Deserialize)]
pub struct ExportSettingElement {
    /// File suffix to append to all filenames
    #[serde(rename = "suffix")]
    suffix: String,

    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    #[serde(rename = "format")]
    format: Format,

    /// Constraint that determines sizing of exported asset
    #[serde(rename = "constraint")]
    constraint: ExportSettingConstraint,
}

/// Sizing constraint for exports
///
/// Constraint that determines sizing of exported asset
#[derive(Serialize, Deserialize)]
pub struct ExportSettingConstraint {
    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    #[serde(rename = "type")]
    constraint_type: ConstraintType,

    /// See type property for effect of this field
    #[serde(rename = "value")]
    value: Option<f64>,
}

/// A solid color, gradient, or image texture that can be applied as fills or strokes
///
/// An array of fill paints applied to the node
///
/// An array of stroke paints applied to the node
///
/// Paints applied to characters
#[derive(Serialize, Deserialize)]
pub struct PaintElement {
    /// Type of paint as a string enum
    #[serde(rename = "type")]
    paint_type: PaintType,

    /// Is the paint enabled?
    #[serde(rename = "visible")]
    visible: bool,

    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    #[serde(rename = "opacity")]
    opacity: f64,

    /// (For solid paints) Solid color of the paint
    #[serde(rename = "color")]
    color: Option<EffectColor>,

    /// (For gradient paints) This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left corner of the
    /// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
    /// corresponds to the start of the gradient (value 0 for the purposes of calculating
    /// gradient stops), the second position is the end of the gradient (value 1), and the third
    /// handle position determines the width of the gradient (only relevant for non-linear
    /// gradients).
    #[serde(rename = "gradientHandlePositions")]
    gradient_handle_positions: Option<Vec<EffectVector>>,

    /// (For gradient paints) Positions of key points along the gradient axis with the colors
    /// anchored there. Colors along the gradient are interpolated smoothly between neighboring
    /// gradient stops.
    #[serde(rename = "gradientStops")]
    gradient_stops: Option<Vec<ColorStopElement>>,

    /// (For image paints) Image scaling mode
    #[serde(rename = "scaleMode")]
    scale_mode: Option<ScaleMode>,
}

/// A position color pair representing a gradient stop
///
/// (For gradient paints) Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly between neighboring
/// gradient stops.
#[derive(Serialize, Deserialize)]
pub struct ColorStopElement {
    /// Color attached to corresponding position
    #[serde(rename = "color")]
    color: EffectColor,

    /// Value between 0 and 1 representing position along gradient axis
    #[serde(rename = "position")]
    position: f64,
}

/// An ellipse
///
/// A regular n-sided polygon
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct EllipseNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    ellipse_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<PaintElement>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<PaintElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// A logical grouping of nodes
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct GroupNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    group_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Vec<LayoutGridElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: EffectColor,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// An array of nodes that are direct children of this node
    #[serde(rename = "children")]
    children: Vec<PurpleNode>,
}

/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct PurpleNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    node_type: RegularPolygonNodeType,

    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    #[serde(rename = "children")]
    children: Option<Vec<NodeNode>>,

    /// Background color of the canvas
    ///
    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Option<EffectColor>,

    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    #[serde(rename = "exportSettings")]
    export_settings: Option<Vec<ExportSettingElement>>,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Option<Vec<EffectElement>>,

    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Option<Vec<LayoutGridElement>>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: Option<f64>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Option<RegularPolygonNodeRectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: Option<BlendMode>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: Option<RegularPolygonNodeLayoutConstraint>,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: Option<bool>,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: Option<bool>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: Option<bool>,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: Option<StrokeAlign>,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: Option<f64>,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Option<Vec<PaintElement>>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Option<Vec<PaintElement>>,

    /// Radius of each corner of the rectangle
    #[serde(rename = "cornerRadius")]
    corner_radius: Option<f64>,

    /// Text contained within text box
    #[serde(rename = "characters")]
    characters: Option<String>,

    /// Style of text including font family and weight (see type style section for more
    /// information)
    #[serde(rename = "style")]
    style: Option<NodeTypeStyle>,

    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    #[serde(rename = "characterStyleOverrides")]
    character_style_overrides: Option<Vec<f64>>,

    /// Map from ID to TypeStyle for looking up style overrides
    #[serde(rename = "styleOverrideTable")]
    style_override_table: Option<HashMap<String, NodeTypeStyle>>,

    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    #[serde(rename = "componentId")]
    component_id: Option<String>,
}

/// An array of canvases attached to the document
///
/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
///
/// An array of top level layers on the canvas
///
/// An array of nodes that are being boolean operated on
#[derive(Serialize, Deserialize)]
pub struct NodeNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    node_type: RegularPolygonNodeType,

    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    #[serde(rename = "children")]
    children: Option<Vec<NodeNode>>,

    /// Background color of the canvas
    ///
    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Option<EffectColor>,

    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    #[serde(rename = "exportSettings")]
    export_settings: Option<Vec<ExportSettingElement>>,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Option<Vec<EffectElement>>,

    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Option<Vec<LayoutGridElement>>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: Option<f64>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Option<RegularPolygonNodeRectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: Option<BlendMode>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: Option<RegularPolygonNodeLayoutConstraint>,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: Option<bool>,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: Option<bool>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: Option<bool>,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: Option<StrokeAlign>,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: Option<f64>,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Option<Vec<PaintElement>>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Option<Vec<PaintElement>>,

    /// Radius of each corner of the rectangle
    #[serde(rename = "cornerRadius")]
    corner_radius: Option<f64>,

    /// Text contained within text box
    #[serde(rename = "characters")]
    characters: Option<String>,

    /// Style of text including font family and weight (see type style section for more
    /// information)
    #[serde(rename = "style")]
    style: Option<NodeTypeStyle>,

    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    #[serde(rename = "characterStyleOverrides")]
    character_style_overrides: Option<Vec<f64>>,

    /// Map from ID to TypeStyle for looking up style overrides
    #[serde(rename = "styleOverrideTable")]
    style_override_table: Option<HashMap<String, NodeTypeStyle>>,

    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    #[serde(rename = "componentId")]
    component_id: Option<String>,
}

/// Guides to align and place objects within a frame
///
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
#[derive(Serialize, Deserialize)]
pub struct LayoutGridElement {
    /// * COLUMNS: Vertical grid
    /// * ROWS: Horizontal grid
    /// * GRID: Square grid
    #[serde(rename = "pattern")]
    pattern: Pattern,

    /// Width of column grid or height of row grid or square grid spacing
    #[serde(rename = "sectionSize")]
    section_size: f64,

    /// Is the grid currently visible?
    #[serde(rename = "visible")]
    visible: bool,

    /// Color of the grid
    #[serde(rename = "color")]
    color: EffectColor,

    /// Positioning of grid as a string enum
    ///
    /// * MIN: Grid starts at the left or top of the frame
    /// * MAX: Grid starts at the right or bottom of the frame
    /// * CENTER: Grid is center aligned
    #[serde(rename = "alignment")]
    alignment: Alignment,

    /// Spacing in between columns and rows
    #[serde(rename = "gutterSize")]
    gutter_size: f64,

    /// Spacing before the first column or row
    #[serde(rename = "offset")]
    offset: f64,

    /// Number of columns or rows
    #[serde(rename = "count")]
    count: f64,
}

/// Metadata for character formatting
///
/// Style of text including font family and weight (see type style section for more
/// information)
///
/// Map from ID to TypeStyle for looking up style overrides
#[derive(Serialize, Deserialize)]
pub struct NodeTypeStyle {
    /// Line height in px
    #[serde(rename = "lineHeightPx")]
    line_height_px: f64,

    /// PostScript font name
    #[serde(rename = "fontPostScriptName")]
    font_post_script_name: String,

    /// Numeric font weight
    #[serde(rename = "fontWeight")]
    font_weight: f64,

    /// Line height as a percentage of normal line height
    #[serde(rename = "lineHeightPercent")]
    line_height_percent: f64,

    /// Vertical text alignment as string enum
    #[serde(rename = "textAlignVertical")]
    text_align_vertical: TextAlignVertical,

    /// Font size in px
    #[serde(rename = "fontSize")]
    font_size: f64,

    /// Is text italicized?
    #[serde(rename = "italic")]
    italic: bool,

    /// Paints applied to characters
    #[serde(rename = "fills")]
    fills: Vec<PaintElement>,

    /// Font family of text (standard name)
    #[serde(rename = "fontFamily")]
    font_family: String,

    /// Horizontal text alignment as string enum
    #[serde(rename = "textAlignHorizontal")]
    text_align_horizontal: TextAlignHorizontal,

    /// Space between characters in px
    #[serde(rename = "letterSpacing")]
    letter_spacing: f64,
}

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct Node {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    node_type: RegularPolygonNodeType,

    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    #[serde(rename = "children")]
    children: Option<Vec<NodeNode>>,

    /// Background color of the canvas
    ///
    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Option<EffectColor>,

    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    #[serde(rename = "exportSettings")]
    export_settings: Option<Vec<ExportSettingElement>>,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Option<Vec<EffectElement>>,

    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Option<Vec<LayoutGridElement>>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: Option<f64>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Option<RegularPolygonNodeRectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: Option<BlendMode>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: Option<RegularPolygonNodeLayoutConstraint>,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: Option<bool>,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: Option<bool>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: Option<bool>,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: Option<StrokeAlign>,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: Option<f64>,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Option<Vec<PaintElement>>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Option<Vec<PaintElement>>,

    /// Radius of each corner of the rectangle
    #[serde(rename = "cornerRadius")]
    corner_radius: Option<f64>,

    /// Text contained within text box
    #[serde(rename = "characters")]
    characters: Option<String>,

    /// Style of text including font family and weight (see type style section for more
    /// information)
    #[serde(rename = "style")]
    style: Option<NodeTypeStyle>,

    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    #[serde(rename = "characterStyleOverrides")]
    character_style_overrides: Option<Vec<f64>>,

    /// Map from ID to TypeStyle for looking up style overrides
    #[serde(rename = "styleOverrideTable")]
    style_override_table: Option<HashMap<String, NodeTypeStyle>>,

    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    #[serde(rename = "componentId")]
    component_id: Option<String>,
}

/// A 2d vector
#[derive(Serialize, Deserialize)]
pub struct Vector {
    /// X coordinate of the vector
    #[serde(rename = "x")]
    x: f64,

    /// Y coordinate of the vector
    #[serde(rename = "y")]
    y: f64,
}

/// An RGBA color
#[derive(Serialize, Deserialize)]
pub struct Color {
    /// Red channel value, between 0 and 1
    #[serde(rename = "r")]
    r: f64,

    /// Green channel value, between 0 and 1
    #[serde(rename = "g")]
    g: f64,

    /// Blue channel value, between 0 and 1
    #[serde(rename = "b")]
    b: f64,

    /// Alpha channel value, between 0 and 1
    #[serde(rename = "a")]
    a: f64,
}

/// Properties are shared across all nodes
#[derive(Serialize, Deserialize)]
pub struct Global {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    global_type: RegularPolygonNodeType,
}

/// A position color pair representing a gradient stop
#[derive(Serialize, Deserialize)]
pub struct ColorStop {
    /// Color attached to corresponding position
    #[serde(rename = "color")]
    color: EffectColor,

    /// Value between 0 and 1 representing position along gradient axis
    #[serde(rename = "position")]
    position: f64,
}

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct VectorNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    vector_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<PaintElement>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<PaintElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// Layout constraint relative to containing Frame
#[derive(Serialize, Deserialize)]
pub struct LayoutConstraint {
    /// * TOP: Node is laid out relative to top of the containing frame
    /// * BOTTOM: Node is laid out relative to bottom of the containing frame
    /// * CENTER: Node is vertically centered relative to containing frame
    /// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// * SCALE: Node scales vertically with containing frame
    #[serde(rename = "vertical")]
    vertical: Vertical,

    /// * LEFT: Node is laid out relative to left of the containing frame
    /// * RIGHT: Node is laid out relative to right of the containing frame
    /// * CENTER: Node is horizontally centered relative to containing frame
    /// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// * SCALE: Node scales horizontally with containing frame
    #[serde(rename = "horizontal")]
    horizontal: Horizontal,
}

/// A group that has a boolean operation applied to it
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct BooleanNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    boolean_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<PaintElement>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<PaintElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// An array of nodes that are being boolean operated on
    #[serde(rename = "children")]
    children: Vec<FluffyNode>,
}

/// An array of nodes that are being boolean operated on
///
/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct FluffyNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    node_type: RegularPolygonNodeType,

    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    #[serde(rename = "children")]
    children: Option<Vec<NodeNode>>,

    /// Background color of the canvas
    ///
    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Option<EffectColor>,

    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    #[serde(rename = "exportSettings")]
    export_settings: Option<Vec<ExportSettingElement>>,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Option<Vec<EffectElement>>,

    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Option<Vec<LayoutGridElement>>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: Option<f64>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Option<RegularPolygonNodeRectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: Option<BlendMode>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: Option<RegularPolygonNodeLayoutConstraint>,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: Option<bool>,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: Option<bool>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: Option<bool>,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: Option<StrokeAlign>,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: Option<f64>,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Option<Vec<PaintElement>>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Option<Vec<PaintElement>>,

    /// Radius of each corner of the rectangle
    #[serde(rename = "cornerRadius")]
    corner_radius: Option<f64>,

    /// Text contained within text box
    #[serde(rename = "characters")]
    characters: Option<String>,

    /// Style of text including font family and weight (see type style section for more
    /// information)
    #[serde(rename = "style")]
    style: Option<NodeTypeStyle>,

    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    #[serde(rename = "characterStyleOverrides")]
    character_style_overrides: Option<Vec<f64>>,

    /// Map from ID to TypeStyle for looking up style overrides
    #[serde(rename = "styleOverrideTable")]
    style_override_table: Option<HashMap<String, NodeTypeStyle>>,

    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    #[serde(rename = "componentId")]
    component_id: Option<String>,
}

/// A description of a user
#[derive(Serialize, Deserialize)]
pub struct User {
    #[serde(rename = "handle")]
    handle: String,

    #[serde(rename = "img_url")]
    img_url: String,
}

/// A text box
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct TextNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    text_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<PaintElement>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<PaintElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// Text contained within text box
    #[serde(rename = "characters")]
    characters: String,

    /// Style of text including font family and weight (see type style section for more
    /// information)
    #[serde(rename = "style")]
    style: NodeTypeStyle,

    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    #[serde(rename = "characterStyleOverrides")]
    character_style_overrides: Vec<f64>,

    /// Map from ID to TypeStyle for looking up style overrides
    #[serde(rename = "styleOverrideTable")]
    style_override_table: HashMap<String, NodeTypeStyle>,
}

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct FrameNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    frame_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Vec<LayoutGridElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: EffectColor,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// An array of nodes that are direct children of this node
    #[serde(rename = "children")]
    children: Vec<FrameNodeNode>,
}

/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct FrameNodeNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    node_type: RegularPolygonNodeType,

    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    #[serde(rename = "children")]
    children: Option<Vec<NodeNode>>,

    /// Background color of the canvas
    ///
    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Option<EffectColor>,

    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    #[serde(rename = "exportSettings")]
    export_settings: Option<Vec<ExportSettingElement>>,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Option<Vec<EffectElement>>,

    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Option<Vec<LayoutGridElement>>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: Option<f64>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Option<RegularPolygonNodeRectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: Option<BlendMode>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: Option<RegularPolygonNodeLayoutConstraint>,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: Option<bool>,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: Option<bool>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: Option<bool>,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: Option<StrokeAlign>,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: Option<f64>,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Option<Vec<PaintElement>>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Option<Vec<PaintElement>>,

    /// Radius of each corner of the rectangle
    #[serde(rename = "cornerRadius")]
    corner_radius: Option<f64>,

    /// Text contained within text box
    #[serde(rename = "characters")]
    characters: Option<String>,

    /// Style of text including font family and weight (see type style section for more
    /// information)
    #[serde(rename = "style")]
    style: Option<NodeTypeStyle>,

    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    #[serde(rename = "characterStyleOverrides")]
    character_style_overrides: Option<Vec<f64>>,

    /// Map from ID to TypeStyle for looking up style overrides
    #[serde(rename = "styleOverrideTable")]
    style_override_table: Option<HashMap<String, NodeTypeStyle>>,

    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    #[serde(rename = "componentId")]
    component_id: Option<String>,
}

/// A rectangle that expresses a bounding box in absolute coordinates
#[derive(Serialize, Deserialize)]
pub struct Rectangle {
    /// X coordinate of top left corner of the rectangle
    #[serde(rename = "x")]
    x: f64,

    /// Y coordinate of top left corner of the rectangle
    #[serde(rename = "y")]
    y: f64,

    /// Width of the rectangle
    #[serde(rename = "width")]
    width: f64,

    /// Height of the rectangle
    #[serde(rename = "height")]
    height: f64,
}

/// Guides to align and place objects within a frame
#[derive(Serialize, Deserialize)]
pub struct LayoutGrid {
    /// * COLUMNS: Vertical grid
    /// * ROWS: Horizontal grid
    /// * GRID: Square grid
    #[serde(rename = "pattern")]
    pattern: Pattern,

    /// Width of column grid or height of row grid or square grid spacing
    #[serde(rename = "sectionSize")]
    section_size: f64,

    /// Is the grid currently visible?
    #[serde(rename = "visible")]
    visible: bool,

    /// Color of the grid
    #[serde(rename = "color")]
    color: EffectColor,

    /// Positioning of grid as a string enum
    ///
    /// * MIN: Grid starts at the left or top of the frame
    /// * MAX: Grid starts at the right or bottom of the frame
    /// * CENTER: Grid is center aligned
    #[serde(rename = "alignment")]
    alignment: Alignment,

    /// Spacing in between columns and rows
    #[serde(rename = "gutterSize")]
    gutter_size: f64,

    /// Spacing before the first column or row
    #[serde(rename = "offset")]
    offset: f64,

    /// Number of columns or rows
    #[serde(rename = "count")]
    count: f64,
}

/// A visual effect such as a shadow or blur
#[derive(Serialize, Deserialize)]
pub struct Effect {
    /// Type of effect as a string enum
    #[serde(rename = "type")]
    effect_type: EffectType,

    /// See type property for effect of this field
    #[serde(rename = "radius")]
    radius: f64,

    /// See type property for effect of this field
    #[serde(rename = "visible")]
    visible: bool,

    /// See type property for effect of this field
    #[serde(rename = "color")]
    color: EffectColor,

    /// See type property for effect of this field
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// See type property for effect of this field
    #[serde(rename = "offset")]
    offset: EffectVector,
}

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct RectangleNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    rectangle_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<PaintElement>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<PaintElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// Radius of each corner of the rectangle
    #[serde(rename = "cornerRadius")]
    corner_radius: f64,
}

/// A rectangular region of the canvas that can be exported
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct SliceNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    slice_node_type: RegularPolygonNodeType,

    /// A rectangular region of the canvas that can be exported
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,
}

/// A regular star shape
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct StarNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    star_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<PaintElement>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<PaintElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// A straight line
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct LineNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    line_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<PaintElement>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<PaintElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// A logical grouping of nodes
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct InstanceNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    instance_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Vec<LayoutGridElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: EffectColor,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// An array of nodes that are direct children of this node
    #[serde(rename = "children")]
    children: Vec<PurpleNode>,

    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    #[serde(rename = "componentId")]
    component_id: String,
}

/// Metadata for character formatting
#[derive(Serialize, Deserialize)]
pub struct TypeStyle {
    /// Line height in px
    #[serde(rename = "lineHeightPx")]
    line_height_px: f64,

    /// PostScript font name
    #[serde(rename = "fontPostScriptName")]
    font_post_script_name: String,

    /// Numeric font weight
    #[serde(rename = "fontWeight")]
    font_weight: f64,

    /// Line height as a percentage of normal line height
    #[serde(rename = "lineHeightPercent")]
    line_height_percent: f64,

    /// Vertical text alignment as string enum
    #[serde(rename = "textAlignVertical")]
    text_align_vertical: TextAlignVertical,

    /// Font size in px
    #[serde(rename = "fontSize")]
    font_size: f64,

    /// Is text italicized?
    #[serde(rename = "italic")]
    italic: bool,

    /// Paints applied to characters
    #[serde(rename = "fills")]
    fills: Vec<PaintElement>,

    /// Font family of text (standard name)
    #[serde(rename = "fontFamily")]
    font_family: String,

    /// Horizontal text alignment as string enum
    #[serde(rename = "textAlignHorizontal")]
    text_align_horizontal: TextAlignHorizontal,

    /// Space between characters in px
    #[serde(rename = "letterSpacing")]
    letter_spacing: f64,
}

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct CanvasNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    canvas_node_type: RegularPolygonNodeType,

    /// An array of top level layers on the canvas
    #[serde(rename = "children")]
    children: Vec<TentacledNode>,

    /// Background color of the canvas
    #[serde(rename = "backgroundColor")]
    background_color: EffectColor,

    /// An array of export settings representing images to export from the canvas
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,
}

/// An array of top level layers on the canvas
///
/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct TentacledNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    node_type: RegularPolygonNodeType,

    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    #[serde(rename = "children")]
    children: Option<Vec<NodeNode>>,

    /// Background color of the canvas
    ///
    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Option<EffectColor>,

    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    #[serde(rename = "exportSettings")]
    export_settings: Option<Vec<ExportSettingElement>>,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Option<Vec<EffectElement>>,

    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Option<Vec<LayoutGridElement>>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: Option<f64>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Option<RegularPolygonNodeRectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: Option<BlendMode>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: Option<RegularPolygonNodeLayoutConstraint>,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: Option<bool>,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: Option<bool>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: Option<bool>,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: Option<StrokeAlign>,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: Option<f64>,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Option<Vec<PaintElement>>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Option<Vec<PaintElement>>,

    /// Radius of each corner of the rectangle
    #[serde(rename = "cornerRadius")]
    corner_radius: Option<f64>,

    /// Text contained within text box
    #[serde(rename = "characters")]
    characters: Option<String>,

    /// Style of text including font family and weight (see type style section for more
    /// information)
    #[serde(rename = "style")]
    style: Option<NodeTypeStyle>,

    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    #[serde(rename = "characterStyleOverrides")]
    character_style_overrides: Option<Vec<f64>>,

    /// Map from ID to TypeStyle for looking up style overrides
    #[serde(rename = "styleOverrideTable")]
    style_override_table: Option<HashMap<String, NodeTypeStyle>>,

    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    #[serde(rename = "componentId")]
    component_id: Option<String>,
}

/// Format and size to export an asset at
#[derive(Serialize, Deserialize)]
pub struct ExportSetting {
    /// File suffix to append to all filenames
    #[serde(rename = "suffix")]
    suffix: String,

    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    #[serde(rename = "format")]
    format: Format,

    /// Constraint that determines sizing of exported asset
    #[serde(rename = "constraint")]
    constraint: ExportSettingConstraint,
}

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct DocumentNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    document_node_type: RegularPolygonNodeType,

    /// An array of canvases attached to the document
    #[serde(rename = "children")]
    children: Vec<StickyNode>,
}

/// An array of canvases attached to the document
///
/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct StickyNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    node_type: RegularPolygonNodeType,

    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    #[serde(rename = "children")]
    children: Option<Vec<NodeNode>>,

    /// Background color of the canvas
    ///
    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Option<EffectColor>,

    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    #[serde(rename = "exportSettings")]
    export_settings: Option<Vec<ExportSettingElement>>,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Option<Vec<EffectElement>>,

    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Option<Vec<LayoutGridElement>>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: Option<f64>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Option<RegularPolygonNodeRectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: Option<BlendMode>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: Option<RegularPolygonNodeLayoutConstraint>,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: Option<bool>,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: Option<bool>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: Option<bool>,

    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: Option<StrokeAlign>,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: Option<f64>,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Option<Vec<PaintElement>>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Option<Vec<PaintElement>>,

    /// Radius of each corner of the rectangle
    #[serde(rename = "cornerRadius")]
    corner_radius: Option<f64>,

    /// Text contained within text box
    #[serde(rename = "characters")]
    characters: Option<String>,

    /// Style of text including font family and weight (see type style section for more
    /// information)
    #[serde(rename = "style")]
    style: Option<NodeTypeStyle>,

    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    #[serde(rename = "characterStyleOverrides")]
    character_style_overrides: Option<Vec<f64>>,

    /// Map from ID to TypeStyle for looking up style overrides
    #[serde(rename = "styleOverrideTable")]
    style_override_table: Option<HashMap<String, NodeTypeStyle>>,

    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    #[serde(rename = "componentId")]
    component_id: Option<String>,
}

/// Sizing constraint for exports
#[derive(Serialize, Deserialize)]
pub struct Constraint {
    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    #[serde(rename = "type")]
    constraint_type: ConstraintType,

    /// See type property for effect of this field
    #[serde(rename = "value")]
    value: Option<f64>,
}

/// A solid color, gradient, or image texture that can be applied as fills or strokes
#[derive(Serialize, Deserialize)]
pub struct Paint {
    /// Type of paint as a string enum
    #[serde(rename = "type")]
    paint_type: PaintType,

    /// Is the paint enabled?
    #[serde(rename = "visible")]
    visible: bool,

    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    #[serde(rename = "opacity")]
    opacity: f64,

    /// (For solid paints) Solid color of the paint
    #[serde(rename = "color")]
    color: Option<EffectColor>,

    /// (For gradient paints) This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left corner of the
    /// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
    /// corresponds to the start of the gradient (value 0 for the purposes of calculating
    /// gradient stops), the second position is the end of the gradient (value 1), and the third
    /// handle position determines the width of the gradient (only relevant for non-linear
    /// gradients).
    #[serde(rename = "gradientHandlePositions")]
    gradient_handle_positions: Option<Vec<EffectVector>>,

    /// (For gradient paints) Positions of key points along the gradient axis with the colors
    /// anchored there. Colors along the gradient are interpolated smoothly between neighboring
    /// gradient stops.
    #[serde(rename = "gradientStops")]
    gradient_stops: Option<Vec<ColorStopElement>>,

    /// (For image paints) Image scaling mode
    #[serde(rename = "scaleMode")]
    scale_mode: Option<ScaleMode>,
}

/// A node that can have instances created of it that share the same properties
///
/// A logical grouping of nodes
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct ComponentNode {
    /// A string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// The name given to the node by the user in the tool
    #[serde(rename = "name")]
    name: String,

    /// Whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// The type of the node
    #[serde(rename = "type")]
    component_node_type: RegularPolygonNodeType,

    /// An array of effects attached to this node (see effects section for more details)
    #[serde(rename = "effects")]
    effects: Vec<EffectElement>,

    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Vec<LayoutGridElement>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: RegularPolygonNodeRectangle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: EffectColor,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "constraints")]
    constraints: RegularPolygonNodeLayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSettingElement>,

    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// An array of nodes that are direct children of this node
    #[serde(rename = "children")]
    children: Vec<PurpleNode>,
}

/// A comment or reply left by a user
#[derive(Serialize, Deserialize)]
pub struct Comment {
    /// Unique identifier for comment
    #[serde(rename = "id")]
    id: String,

    /// The file in which the comment lives
    #[serde(rename = "file_key")]
    file_key: String,

    /// If present, the id of the comment to which this is the reply
    #[serde(rename = "parent_id")]
    parent_id: Option<String>,

    /// The user who left the comment
    #[serde(rename = "user")]
    user: CommentUser,
}

/// A description of a user
///
/// The user who left the comment
#[derive(Serialize, Deserialize)]
pub struct CommentUser {
    #[serde(rename = "handle")]
    handle: String,

    #[serde(rename = "img_url")]
    img_url: String,
}

/// Enum describing how layer blends with layers below
///
/// See type property for effect of this field
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
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

/// * LEFT: Node is laid out relative to left of the containing frame
/// * RIGHT: Node is laid out relative to right of the containing frame
/// * CENTER: Node is horizontally centered relative to containing frame
/// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// * SCALE: Node scales horizontally with containing frame
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

/// * TOP: Node is laid out relative to top of the containing frame
/// * BOTTOM: Node is laid out relative to bottom of the containing frame
/// * CENTER: Node is vertically centered relative to containing frame
/// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// * SCALE: Node scales vertically with containing frame
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
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
#[derive(Serialize, Deserialize)]
pub enum ConstraintType {
    #[serde(rename = "HEIGHT")]
    Height,

    #[serde(rename = "SCALE")]
    Scale,

    #[serde(rename = "WIDTH")]
    Width,
}

/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
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

/// (For image paints) Image scaling mode
#[derive(Serialize, Deserialize)]
pub enum ScaleMode {
    #[serde(rename = "FILL")]
    Fill,

    #[serde(rename = "FIT")]
    Fit,

    #[serde(rename = "STRETCH")]
    Stretch,

    #[serde(rename = "TILE")]
    Tile,
}

/// The type of the node
#[derive(Serialize, Deserialize)]
pub enum RegularPolygonNodeType {
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
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
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
///
/// * MIN: Grid starts at the left or top of the frame
/// * MAX: Grid starts at the right or bottom of the frame
/// * CENTER: Grid is center aligned
#[derive(Serialize, Deserialize)]
pub enum Alignment {
    #[serde(rename = "CENTER")]
    Center,

    #[serde(rename = "MAX")]
    Max,

    #[serde(rename = "MIN")]
    Min,
}

/// * COLUMNS: Vertical grid
/// * ROWS: Horizontal grid
/// * GRID: Square grid
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
