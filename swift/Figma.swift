// To parse the JSON, add this file to your project and do:
//
//   let node = try Node(json)
//   let color = try Color(json)
//   let global = try Global(json)
//   let user = try User(json)
//   let blendMode = try BlendMode(json)
//   let canvas = try Canvas(json)
//   let document = try Document(json)
//   let constraint = try Constraint(json)
//   let comment = try Comment(json)

import Foundation

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
struct Node: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: NodeType
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    let children: [NodeNode]?
    /// Background color of the canvas
    let backgroundColor: NodeColor?
}

/// An RGBA color
///
/// Background color of the canvas
struct NodeColor: Codable {
    /// Red channel value, between 0 and 1
    let r: Double
    /// Green channel value, between 0 and 1
    let g: Double
    /// Blue channel value, between 0 and 1
    let b: Double
    /// Alpha channel value, between 0 and 1
    let a: Double
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
struct NodeNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: NodeType
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    let children: [NodeNode]?
    /// Background color of the canvas
    let backgroundColor: NodeColor?
}

/// The type of the node
enum NodeType: String, Codable {
    case boolean = "BOOLEAN"
    case canvas = "CANVAS"
    case component = "COMPONENT"
    case document = "DOCUMENT"
    case ellipse = "ELLIPSE"
    case frame = "FRAME"
    case group = "GROUP"
    case instance = "INSTANCE"
    case line = "LINE"
    case rectangle = "RECTANGLE"
    case regularPolygon = "REGULAR_POLYGON"
    case slice = "SLICE"
    case star = "STAR"
    case text = "TEXT"
    case vector = "VECTOR"
}

/// An RGBA color
struct Color: Codable {
    /// Red channel value, between 0 and 1
    let r: Double
    /// Green channel value, between 0 and 1
    let g: Double
    /// Blue channel value, between 0 and 1
    let b: Double
    /// Alpha channel value, between 0 and 1
    let a: Double
}

/// Properties are shared across all nodes
struct Global: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: NodeType
}

/// A description of a user
struct User: Codable {
    let handle, imgURL: String

    enum CodingKeys: String, CodingKey {
        case handle
        case imgURL = "img_url"
    }
}

/// Enum describing how layer blends with layers below
enum BlendMode: String, Codable {
    case color = "COLOR"
    case colorBurn = "COLOR_BURN"
    case colorDodge = "COLOR_DODGE"
    case darken = "DARKEN"
    case difference = "DIFFERENCE"
    case exclusion = "EXCLUSION"
    case hardLight = "HARD_LIGHT"
    case hue = "HUE"
    case lighten = "LIGHTEN"
    case linearBurn = "LINEAR_BURN"
    case linearDodge = "LINEAR_DODGE"
    case luminosity = "LUMINOSITY"
    case multiply = "MULTIPLY"
    case normal = "NORMAL"
    case overlay = "OVERLAY"
    case passThrough = "PASS_THROUGH"
    case saturation = "SATURATION"
    case screen = "SCREEN"
    case softLight = "SOFT_LIGHT"
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
struct Canvas: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: NodeType
    /// An array of top level layers on the canvas
    let children: [PurpleNode]?
    /// Background color of the canvas
    let backgroundColor: NodeColor?
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
struct PurpleNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: NodeType
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    let children: [NodeNode]?
    /// Background color of the canvas
    let backgroundColor: NodeColor?
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
struct Document: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: NodeType
    /// An array of canvases attached to the document
    let children: [FluffyNode]?
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
struct FluffyNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: NodeType
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    let children: [NodeNode]?
    /// Background color of the canvas
    let backgroundColor: NodeColor?
}

/// Sizing constraint for exports
struct Constraint: Codable {
    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    let type: ConstraintType
    /// See type property for effect of this field
    let value: Double?
}

/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
enum ConstraintType: String, Codable {
    case height = "HEIGHT"
    case scale = "SCALE"
    case width = "WIDTH"
}

/// A comment or reply left by a user
struct Comment: Codable {
    /// Unique identifier for comment
    let id: String
    /// The file in which the comment lives
    let fileKey: String
    /// If present, the id of the comment to which this is the reply
    let parentID: String?
    /// The user who left the comment
    let user: CommentUser

    enum CodingKeys: String, CodingKey {
        case id
        case fileKey = "file_key"
        case parentID = "parent_id"
        case user
    }
}

/// A description of a user
///
/// The user who left the comment
struct CommentUser: Codable {
    let handle, imgURL: String

    enum CodingKeys: String, CodingKey {
        case handle
        case imgURL = "img_url"
    }
}

// MARK: Convenience initializers

extension Node {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Node.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension NodeColor {
    init(data: Data) throws {
        self = try JSONDecoder().decode(NodeColor.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension NodeNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(NodeNode.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Color {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Color.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Global {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Global.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension User {
    init(data: Data) throws {
        self = try JSONDecoder().decode(User.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Canvas {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Canvas.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension PurpleNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(PurpleNode.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Document {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Document.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension FluffyNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(FluffyNode.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Constraint {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Constraint.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Comment {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Comment.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension CommentUser {
    init(data: Data) throws {
        self = try JSONDecoder().decode(CommentUser.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
