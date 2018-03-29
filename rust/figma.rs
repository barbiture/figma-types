// Example code that deserializes and serializes the model.
// extern crate serde;
// #[macro_use]
// extern crate serde_derive;
// extern crate serde_json;
//
// use generated_module::Node;
//
// fn main() {
//     let json = r#"{"answer": 42}"#;
//     let model: Node = serde_json::from_str(&json).unwrap();
// }

extern crate serde_json;

/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// See type property for effect of this field
///
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
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
    node_type: NodeType,

    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    #[serde(rename = "children")]
    children: Option<Vec<NodeNode>>,

    /// Background color of the canvas
    #[serde(rename = "backgroundColor")]
    background_color: Option<NodeColor>,
}

/// An RGBA color
///
/// Background color of the canvas
#[derive(Serialize, Deserialize)]
pub struct NodeColor {
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

/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// See type property for effect of this field
///
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
///
/// An array of top level layers on the canvas
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
    node_type: NodeType,

    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    #[serde(rename = "children")]
    children: Option<Vec<NodeNode>>,

    /// Background color of the canvas
    #[serde(rename = "backgroundColor")]
    background_color: Option<NodeColor>,
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
    global_type: NodeType,
}

/// A description of a user
#[derive(Serialize, Deserialize)]
pub struct User {
    #[serde(rename = "handle")]
    handle: String,

    #[serde(rename = "img_url")]
    img_url: String,
}

/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// See type property for effect of this field
///
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct Canvas {
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
    canvas_type: NodeType,

    /// An array of top level layers on the canvas
    #[serde(rename = "children")]
    children: Option<Vec<PurpleNode>>,

    /// Background color of the canvas
    #[serde(rename = "backgroundColor")]
    background_color: Option<NodeColor>,
}

/// An array of top level layers on the canvas
///
/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// See type property for effect of this field
///
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
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
    node_type: NodeType,

    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    #[serde(rename = "children")]
    children: Option<Vec<NodeNode>>,

    /// Background color of the canvas
    #[serde(rename = "backgroundColor")]
    background_color: Option<NodeColor>,
}

/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// See type property for effect of this field
///
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
#[derive(Serialize, Deserialize)]
pub struct Document {
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
    document_type: NodeType,

    /// An array of canvases attached to the document
    #[serde(rename = "children")]
    children: Option<Vec<FluffyNode>>,
}

/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// See type property for effect of this field
///
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
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
    node_type: NodeType,

    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    #[serde(rename = "children")]
    children: Option<Vec<NodeNode>>,

    /// Background color of the canvas
    #[serde(rename = "backgroundColor")]
    background_color: Option<NodeColor>,
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

/// The type of the node
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

/// Enum describing how layer blends with layers below
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
