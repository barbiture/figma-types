// Example code that deserializes and serializes the model.
// extern crate serde;
// #[macro_use]
// extern crate serde_derive;
// extern crate serde_json;
//
// use generated_module::FrameOffset;
//
// fn main() {
//     let json = r#"{"answer": 42}"#;
//     let model: FrameOffset = serde_json::from_str(&json).unwrap();
// }

extern crate serde_json;
use std::collections::HashMap;

pub type String = Vec<String>;

/// A relative offset within a frame
#[derive(Serialize, Deserialize)]
pub struct FrameOffset {
    /// Unique id specifying the frame.
    #[serde(rename = "node_id")]
    node_id: Vec<String>,

    /// 2d vector offset within the frame.
    #[serde(rename = "node_offset")]
    node_offset: Vector2D,
}

/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
///
/// A 2d vector
///
/// 2d vector offset within the frame.
#[derive(Serialize, Deserialize)]
pub struct Vector2D {
    /// X coordinate of the vector
    #[serde(rename = "x")]
    x: f64,

    /// Y coordinate of the vector
    #[serde(rename = "y")]
    y: f64,
}

/// A vector network, consisting of vertices and edges
#[derive(Serialize, Deserialize)]
pub struct Vector {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<Paint>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    vector_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<Paint>,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// Bounding box of the node in absolute space coordinates
///
/// A rectangle
#[derive(Serialize, Deserialize)]
pub struct Rectangle {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// Radius of each corner of the rectangle
    #[serde(rename = "cornerRadius")]
    corner_radius: f64,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<Paint>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    absolute_bounding_box_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<Paint>,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// Horizontal and vertical layout constraints for node
///
/// Layout constraint relative to containing Frame
#[derive(Serialize, Deserialize)]
pub struct LayoutConstraint {
    /// Horizontal constraint as an enum
    /// "LEFT": Node is laid out relative to left of the containing frame
    /// "RIGHT": Node is laid out relative to right of the containing frame
    /// "CENTER": Node is horizontally centered relative to containing frame
    /// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// "SCALE": Node scales horizontally with containing frame
    #[serde(rename = "horizontal")]
    horizontal: Horizontal,

    /// Vertical constraint as an enum
    /// "TOP": Node is laid out relative to top of the containing frame
    /// "BOTTOM": Node is laid out relative to bottom of the containing frame
    /// "CENTER": Node is vertically centered relative to containing frame
    /// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// "SCALE": Node scales vertically with containing frame
    #[serde(rename = "vertical")]
    vertical: Vertical,
}

/// An array of effects attached to this node
/// (see effects sectionfor more details)
///
/// A visual effect such as a shadow or blur
#[derive(Serialize, Deserialize)]
pub struct Effect {
    #[serde(rename = "blendMode")]
    blend_mode: Option<BlendMode>,

    #[serde(rename = "color")]
    color: Option<Color>,

    #[serde(rename = "offset")]
    offset: Option<Vector2D>,

    /// Radius of the blur effect (applies to shadows as well)
    #[serde(rename = "radius")]
    radius: f64,

    /// Type of effect as a string enum
    #[serde(rename = "type")]
    effect_type: EffectType,

    /// Is the effect active?
    #[serde(rename = "visible")]
    visible: bool,
}

/// Solid color of the paint
///
/// An RGBA color
///
/// Color of the grid
///
/// Background color of the node
///
/// Color attached to corresponding position
///
/// Background color of the canvas
#[derive(Serialize, Deserialize)]
pub struct Color {
    /// Alpha channel value, between 0 and 1
    #[serde(rename = "a")]
    a: f64,

    /// Blue channel value, between 0 and 1
    #[serde(rename = "b")]
    b: f64,

    /// Green channel value, between 0 and 1
    #[serde(rename = "g")]
    g: f64,

    /// Red channel value, between 0 and 1
    #[serde(rename = "r")]
    r: f64,
}

/// An array of export settings representing images to export from node
///
/// Format and size to export an asset at
///
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from this node
#[derive(Serialize, Deserialize)]
pub struct ExportSetting {
    /// Constraint that determines sizing of exported asset
    #[serde(rename = "constraint")]
    constraint: Constraint,

    /// Image type, string enum
    #[serde(rename = "format")]
    format: Format,

    /// File suffix to append to all filenames
    #[serde(rename = "suffix")]
    suffix: String,
}

/// Constraint that determines sizing of exported asset
///
/// Sizing constraint for exports
#[derive(Serialize, Deserialize)]
pub struct Constraint {
    /// Type of constraint to apply; string enum with potential values below
    /// "SCALE": Scale by value
    /// "WIDTH": Scale proportionally and set width to value
    /// "HEIGHT": Scale proportionally and set height to value
    #[serde(rename = "type")]
    constraint_type: ConstraintType,

    /// See type property for effect of this field
    #[serde(rename = "value")]
    value: f64,
}

/// A solid color, gradient, or image texture that can be applied as fills or strokes
///
/// An array of stroke paints applied to the node
///
/// An array of fill paints applied to the node
///
/// Paints applied to characters
#[derive(Serialize, Deserialize)]
pub struct Paint {
    /// Solid color of the paint
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
    gradient_handle_positions: Option<Vec<Vector2D>>,

    /// Positions of key points along the gradient axis with the colors
    /// anchored there. Colors along the gradient are interpolated smoothly
    /// between neighboring gradient stops.
    #[serde(rename = "gradientStops")]
    gradient_stops: Option<Vec<ColorStop>>,

    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    #[serde(rename = "opacity")]
    opacity: f64,

    /// Image scaling mode
    #[serde(rename = "scaleMode")]
    scale_mode: Option<String>,

    /// Type of paint as a string enum
    #[serde(rename = "type")]
    paint_type: PaintType,

    /// Is the paint enabled?
    #[serde(rename = "visible")]
    visible: bool,
}

/// Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly
/// between neighboring gradient stops.
///
/// A position color pair representing a gradient stop
#[derive(Serialize, Deserialize)]
pub struct ColorStop {
    /// Color attached to corresponding position
    #[serde(rename = "color")]
    color: Color,

    /// Value between 0 and 1 representing position along gradient axis
    #[serde(rename = "position")]
    position: f64,
}

/// A text box
#[derive(Serialize, Deserialize)]
pub struct Text {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// Text contained within text box
    #[serde(rename = "characters")]
    characters: String,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<Paint>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Map from ID to TypeStyle for looking up style overrides
    #[serde(rename = "styleOverrideTable")]
    style_override_table: Vec<TypeStyle>,

    /// Style of text including font family and weight (see type style
    /// section for more information)
    #[serde(rename = "style")]
    style: TypeStyle,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    text_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<Paint>,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    #[serde(rename = "characterStyleOverrides")]
    character_style_overrides: Vec<f64>,
}

/// Map from ID to TypeStyle for looking up style overrides
///
/// Metadata for character formatting
///
/// Style of text including font family and weight (see type style
/// section for more information)
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
    fills: Vec<Paint>,

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

/// A node of fixed size containing other nodes
#[derive(Serialize, Deserialize)]
pub struct Frame {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Vec<LayoutGrid>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Color,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    frame_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// An array of nodes that are direct children of this node
    #[serde(rename = "children")]
    children: Vec<DocumentElement>,
}

/// An array of nodes that are direct children of this node
///
/// An array of nodes that are being boolean operated on
///
/// An array of top level layers on the canvas
///
/// An array of canvases attached to the document
///
/// Node Properties
/// The root node
///
/// The root node within the document
///
/// Represents a single page
///
/// A node of fixed size containing other nodes
///
/// A logical grouping of nodes
///
/// A vector network, consisting of vertices and edges
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// An ellipse
///
/// A regular n-sided polygon
///
/// Bounding box of the node in absolute space coordinates
///
/// A rectangle
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same
/// changes applied to the instance
#[derive(Serialize, Deserialize)]
pub struct DocumentElement {
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    #[serde(rename = "children")]
    children: Option<Vec<DocumentElement>>,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    document_type: NodeType,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// Background color of the canvas
    ///
    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Option<Color>,

    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// An array of export settings representing images to export from this node
    #[serde(rename = "exportSettings")]
    export_settings: Option<Vec<ExportSetting>>,

    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Option<Vec<Effect>>,

    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Option<Vec<LayoutGrid>>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: Option<f64>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Option<Box<Rectangle>>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: Option<String>,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: Option<BlendMode>,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: Option<LayoutConstraint>,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: Option<bool>,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: Option<bool>,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: Option<bool>,

    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: Option<StrokeAlign>,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: Option<f64>,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Option<Vec<Paint>>,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Option<Vec<Paint>>,

    /// Radius of each corner of the rectangle
    #[serde(rename = "cornerRadius")]
    corner_radius: Option<f64>,

    /// Text contained within text box
    #[serde(rename = "characters")]
    characters: Option<String>,

    /// Map from ID to TypeStyle for looking up style overrides
    #[serde(rename = "styleOverrideTable")]
    style_override_table: Option<Vec<TypeStyle>>,

    /// Style of text including font family and weight (see type style
    /// section for more information)
    #[serde(rename = "style")]
    style: Option<TypeStyle>,

    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    #[serde(rename = "characterStyleOverrides")]
    character_style_overrides: Option<Vec<f64>>,

    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    #[serde(rename = "componentId")]
    component_id: Option<String>,
}

/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
///
/// Guides to align and place objects within a frame
#[derive(Serialize, Deserialize)]
pub struct LayoutGrid {
    /// Positioning of grid as a string enum
    /// "MIN": Grid starts at the left or top of the frame
    /// "MAX": Grid starts at the right or bottom of the frame
    /// "CENTER": Grid is center aligned
    #[serde(rename = "alignment")]
    alignment: Alignment,

    /// Color of the grid
    #[serde(rename = "color")]
    color: Color,

    /// Number of columns or rows
    #[serde(rename = "count")]
    count: f64,

    /// Spacing in between columns and rows
    #[serde(rename = "gutterSize")]
    gutter_size: f64,

    /// Spacing before the first column or row
    #[serde(rename = "offset")]
    offset: f64,

    /// Orientation of the grid as a string enum
    /// "COLUMNS": Vertical grid
    /// "ROWS": Horizontal grid
    /// "GRID": Square grid
    #[serde(rename = "pattern")]
    pattern: Pattern,

    /// Width of column grid or height of row grid or square grid spacing
    #[serde(rename = "sectionSize")]
    section_size: f64,

    /// Is the grid currently visible?
    #[serde(rename = "visible")]
    visible: bool,
}

/// A rectangular region of the canvas that can be exported
#[derive(Serialize, Deserialize)]
pub struct Slice {
    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// An array of export settings representing images to export from this node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    slice_type: NodeType,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,
}

/// A regular star shape
#[derive(Serialize, Deserialize)]
pub struct Star {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<Paint>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    star_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<Paint>,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// A straight line
#[derive(Serialize, Deserialize)]
pub struct Line {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<Paint>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    line_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<Paint>,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// An instance of a component, changes to the component result in the same
/// changes applied to the instance
#[derive(Serialize, Deserialize)]
pub struct Instance {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Vec<LayoutGrid>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Color,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    #[serde(rename = "componentId")]
    component_id: String,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    instance_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// An array of nodes that are direct children of this node
    #[serde(rename = "children")]
    children: Vec<DocumentElement>,
}

/// GET /v1/files/:key/comments
///
/// > Description
/// A list of comments left on the file.
///
/// > Path parameters
/// key String
/// File to get comments from
#[derive(Serialize, Deserialize)]
pub struct CommentsResponse {
    #[serde(rename = "comments")]
    comments: Vec<Comment>,
}

/// A comment or reply left by a user
#[derive(Serialize, Deserialize)]
pub struct Comment {
    /// (MISSING IN DOCS)
    /// The content of the comment
    #[serde(rename = "message")]
    message: String,

    /// Enables basic storage and retrieval of dates and times.
    #[serde(rename = "created_at")]
    created_at: String,

    /// The user who left the comment
    #[serde(rename = "user")]
    user: User,

    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    #[serde(rename = "order_id")]
    order_id: f64,

    /// If present, the id of the comment to which this is the reply
    #[serde(rename = "parent_id")]
    parent_id: String,

    #[serde(rename = "client_meta")]
    client_meta: ClientMeta,

    /// Enables basic storage and retrieval of dates and times.
    #[serde(rename = "resolved_at")]
    resolved_at: String,

    /// Unique identifier for comment
    #[serde(rename = "id")]
    id: String,

    /// The file in which the comment lives
    #[serde(rename = "file_key")]
    file_key: String,
}

/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
///
/// A 2d vector
///
/// 2d vector offset within the frame.
///
/// A relative offset within a frame
#[derive(Serialize, Deserialize)]
pub struct ClientMeta {
    /// X coordinate of the vector
    #[serde(rename = "x")]
    x: Option<f64>,

    /// Y coordinate of the vector
    #[serde(rename = "y")]
    y: Option<f64>,

    /// Unique id specifying the frame.
    #[serde(rename = "node_id")]
    node_id: Option<Vec<String>>,

    /// 2d vector offset within the frame.
    #[serde(rename = "node_offset")]
    node_offset: Option<Vector2D>,
}

/// The user who left the comment
///
/// A description of a user
#[derive(Serialize, Deserialize)]
pub struct User {
    #[serde(rename = "handle")]
    handle: String,

    #[serde(rename = "img_url")]
    img_url: String,
}

/// A group that has a boolean operation applied to it
#[derive(Serialize, Deserialize)]
pub struct BooleanGroup {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<Paint>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    boolean_group_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<Paint>,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// An array of nodes that are being boolean operated on
    #[serde(rename = "children")]
    children: Vec<DocumentElement>,
}

/// Represents a single page
#[derive(Serialize, Deserialize)]
pub struct Canvas {
    /// Background color of the canvas
    #[serde(rename = "backgroundColor")]
    background_color: Color,

    /// An array of top level layers on the canvas
    #[serde(rename = "children")]
    children: Vec<DocumentElement>,

    /// An array of export settings representing images to export from the canvas
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    canvas_type: NodeType,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,
}

/// GET /v1/files/:key
///
/// > Description
///
/// Returns the document refered to by :key as a JSON object. The file key can be parsed from
/// any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
/// contains a Node of type DOCUMENT.
///
/// The "components" key contains a mapping from node IDs to component metadata. This is to
/// help you determine which components each instance comes from. Currently the only piece of
/// metadata available on components is the name of the component, but more properties will
/// be forthcoming.
///
/// > Path parameters
///
/// key String
/// File to export JSON from
#[derive(Serialize, Deserialize)]
pub struct FileResponse {
    /// A mapping from node IDs to component metadata. This is to help you determine which
    /// components each instance comes from. Currently the only piece of metadata available on
    /// components is the name of the component, but more properties will be forthcoming.
    #[serde(rename = "components")]
    components: HashMap<String, Component>,

    /// The root node within the document
    #[serde(rename = "document")]
    document: Document,

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

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Color,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    component_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// An array of nodes that are direct children of this node
    #[serde(rename = "children")]
    children: Vec<DocumentElement>,
}

/// Node Properties
/// The root node
///
/// The root node within the document
#[derive(Serialize, Deserialize)]
pub struct Document {
    /// An array of canvases attached to the document
    #[serde(rename = "children")]
    children: Vec<DocumentElement>,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    ocument_type: NodeType,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,
}

/// A regular n-sided polygon
#[derive(Serialize, Deserialize)]
pub struct RegularPolygon {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<Paint>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    regular_polygon_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<Paint>,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// An ellipse
#[derive(Serialize, Deserialize)]
pub struct Ellipse {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    #[serde(rename = "strokeAlign")]
    stroke_align: StrokeAlign,

    /// The weight of strokes on the node
    #[serde(rename = "strokeWeight")]
    stroke_weight: f64,

    /// An array of fill paints applied to the node
    #[serde(rename = "fills")]
    fills: Vec<Paint>,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    ellipse_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// An array of stroke paints applied to the node
    #[serde(rename = "strokes")]
    strokes: Vec<Paint>,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,
}

/// A logical grouping of nodes
#[derive(Serialize, Deserialize)]
pub struct Group {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    #[serde(rename = "effects")]
    effects: Vec<Effect>,

    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    #[serde(rename = "layoutGrids")]
    layout_grids: Vec<LayoutGrid>,

    /// Opacity of the node
    #[serde(rename = "opacity")]
    opacity: f64,

    /// the name given to the node by the user in the tool.
    #[serde(rename = "name")]
    name: String,

    /// Bounding box of the node in absolute space coordinates
    #[serde(rename = "absoluteBoundingBox")]
    absolute_bounding_box: Box<Rectangle>,

    /// Node ID of node to transition to in prototyping
    #[serde(rename = "transitionNodeID")]
    transition_node_id: String,

    /// whether or not the node is visible on the canvas
    #[serde(rename = "visible")]
    visible: bool,

    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    #[serde(rename = "blendMode")]
    blend_mode: BlendMode,

    /// Background color of the node
    #[serde(rename = "backgroundColor")]
    background_color: Color,

    /// Horizontal and vertical layout constraints for node
    #[serde(rename = "constraints")]
    constraints: LayoutConstraint,

    /// Does this node mask sibling nodes in front of it?
    #[serde(rename = "isMask")]
    is_mask: bool,

    /// Does this node clip content outside of its bounds?
    #[serde(rename = "clipsContent")]
    clips_content: bool,

    /// An array of export settings representing images to export from node
    #[serde(rename = "exportSettings")]
    export_settings: Vec<ExportSetting>,

    /// the type of the node, refer to table below for details
    #[serde(rename = "type")]
    group_type: NodeType,

    /// a string uniquely identifying this node within the document
    #[serde(rename = "id")]
    id: String,

    /// Keep height and width constrained to same ratio
    #[serde(rename = "preserveRatio")]
    preserve_ratio: bool,

    /// An array of nodes that are direct children of this node
    #[serde(rename = "children")]
    children: Vec<DocumentElement>,
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
