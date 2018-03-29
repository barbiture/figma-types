// Example code that deserializes and serializes the model.
// extern crate serde;
// #[macro_use]
// extern crate serde_derive;
// extern crate serde_json;
//
// use generated_module::Comment;
//
// fn main() {
//     let json = r#"{"answer": 42}"#;
//     let model: Comment = serde_json::from_str(&json).unwrap();
// }

extern crate serde_json;

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

/// A description of a user
#[derive(Serialize, Deserialize)]
pub struct User {
    #[serde(rename = "handle")]
    handle: String,

    #[serde(rename = "img_url")]
    img_url: String,
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

/// Sizing constraint for exports
#[derive(Serialize, Deserialize)]
pub struct Constraint {
    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    #[serde(rename = "type")]
    constraint_type: Type,

    /// See type property for effect of this field
    #[serde(rename = "value")]
    value: Option<f64>,
}

/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
#[derive(Serialize, Deserialize)]
pub enum Type {
    #[serde(rename = "HEIGHT")]
    Height,

    #[serde(rename = "SCALE")]
    Scale,

    #[serde(rename = "WIDTH")]
    Width,
}
