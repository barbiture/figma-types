// Example code that deserializes and serializes the model.
// extern crate serde;
// #[macro_use]
// extern crate serde_derive;
// extern crate serde_json;
//
// use generated_module::figma;
//
// fn main() {
//     let json = r#"{"answer": 42}"#;
//     let model: figma = serde_json::from_str(&json).unwrap();
// }

extern crate serde_json;

/// A geographical coordinate
#[derive(Serialize, Deserialize)]
pub struct Figma {
    #[serde(rename = "latitude")]
    latitude: Option<f64>,

    #[serde(rename = "longitude")]
    longitude: Option<f64>,
}
