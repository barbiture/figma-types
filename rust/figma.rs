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
