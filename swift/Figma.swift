// To parse the JSON, add this file to your project and do:
//
//   let fileResponse = try FileResponse(json)
//   let commentsResponse = try CommentsResponse(json)
//   let commentRequest = try CommentRequest(json)
//   let projectsResponse = try ProjectsResponse(json)
//   let projectFilesResponse = try ProjectFilesResponse(json)

import Foundation

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
struct FileResponse: Codable {
    /// A mapping from node IDs to component metadata. This is to help you determine which
    /// components each instance comes from. Currently the only piece of metadata available on
    /// components is the name of the component, but more properties will be forthcoming.
    let components: [String: Component]
    /// The root node within the document
    let document: FileResponseDocument
    let schemaVersion: Double
}

/// A node that can have instances created of it that share the same properties
struct Component: Codable {
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: Rectangle
    /// Background color of the node
    let backgroundColor: Color
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    let blendMode: LendMode
    /// An array of nodes that are direct children of this node
    let children: [DocumentElement]
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool
    /// Horizontal and vertical layout constraints for node
    let constraints: LayoutConstraint
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [Effect]
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSetting]
    /// a string uniquely identifying this node within the document
    let id: String
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGrid]
    /// the name given to the node by the user in the tool.
    let name: String
    /// Opacity of the node
    let opacity: Double
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// whether or not the node is visible on the canvas
    let visible: Bool
}

/// Bounding box of the node in absolute space coordinates
///
/// A rectangle
class Rectangle: Codable {
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: Rectangle
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    let blendMode: LendMode
    /// Horizontal and vertical layout constraints for node
    let constraints: LayoutConstraint
    /// Radius of each corner of the rectangle
    let cornerRadius: Double
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [Effect]
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSetting]
    /// An array of fill paints applied to the node
    let fills: [Paint]
    /// a string uniquely identifying this node within the document
    let id: String
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// the name given to the node by the user in the tool.
    let name: String
    /// Opacity of the node
    let opacity: Double
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign
    /// An array of stroke paints applied to the node
    let strokes: [Paint]
    /// The weight of strokes on the node
    let strokeWeight: Double
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// whether or not the node is visible on the canvas
    let visible: Bool

    init(absoluteBoundingBox: Rectangle, blendMode: LendMode, constraints: LayoutConstraint, cornerRadius: Double, effects: [Effect], exportSettings: [ExportSetting], fills: [Paint], id: String, isMask: Bool, name: String, opacity: Double, preserveRatio: Bool, strokeAlign: StrokeAlign, strokes: [Paint], strokeWeight: Double, transitionNodeID: String?, type: NodeType, visible: Bool) {
        self.absoluteBoundingBox = absoluteBoundingBox
        self.blendMode = blendMode
        self.constraints = constraints
        self.cornerRadius = cornerRadius
        self.effects = effects
        self.exportSettings = exportSettings
        self.fills = fills
        self.id = id
        self.isMask = isMask
        self.name = name
        self.opacity = opacity
        self.preserveRatio = preserveRatio
        self.strokeAlign = strokeAlign
        self.strokes = strokes
        self.strokeWeight = strokeWeight
        self.transitionNodeID = transitionNodeID
        self.type = type
        self.visible = visible
    }
}

/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
///
/// Enum describing how layer blends with layers below
/// This type is a string enum with the following possible values
enum LendMode: String, Codable {
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

/// Horizontal and vertical layout constraints for node
///
/// Layout constraint relative to containing Frame
struct LayoutConstraint: Codable {
    /// Horizontal constraint as an enum
    /// "LEFT": Node is laid out relative to left of the containing frame
    /// "RIGHT": Node is laid out relative to right of the containing frame
    /// "CENTER": Node is horizontally centered relative to containing frame
    /// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// "SCALE": Node scales horizontally with containing frame
    let horizontal: Horizontal
    /// Vertical constraint as an enum
    /// "TOP": Node is laid out relative to top of the containing frame
    /// "BOTTOM": Node is laid out relative to bottom of the containing frame
    /// "CENTER": Node is vertically centered relative to containing frame
    /// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// "SCALE": Node scales vertically with containing frame
    let vertical: Vertical
}

/// Horizontal constraint as an enum
/// "LEFT": Node is laid out relative to left of the containing frame
/// "RIGHT": Node is laid out relative to right of the containing frame
/// "CENTER": Node is horizontally centered relative to containing frame
/// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales horizontally with containing frame
enum Horizontal: String, Codable {
    case center = "CENTER"
    case horizontalLEFT = "LEFT"
    case horizontalRIGHT = "RIGHT"
    case leftRight = "LEFT_RIGHT"
    case scale = "SCALE"
}

/// Vertical constraint as an enum
/// "TOP": Node is laid out relative to top of the containing frame
/// "BOTTOM": Node is laid out relative to bottom of the containing frame
/// "CENTER": Node is vertically centered relative to containing frame
/// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales vertically with containing frame
enum Vertical: String, Codable {
    case bottom = "BOTTOM"
    case center = "CENTER"
    case scale = "SCALE"
    case top = "TOP"
    case topBottom = "TOP_BOTTOM"
}

/// An array of effects attached to this node
/// (see effects sectionfor more details)
///
/// A visual effect such as a shadow or blur
struct Effect: Codable {
    /// Enum describing how layer blends with layers below
    /// This type is a string enum with the following possible values
    let blendMode: LendMode?
    /// An RGBA color
    let color: Color?
    /// A 2d vector
    let offset: Vector2?
    /// Radius of the blur effect (applies to shadows as well)
    let radius: Double
    /// Type of effect as a string enum
    let type: EffectType
    /// Is the effect active?
    let visible: Bool
}

/// Background color of the node
///
/// An RGBA color
///
/// Color of the grid
///
/// Solid color of the paint
///
/// Background color of the canvas
///
/// Color attached to corresponding position
struct Color: Codable {
    /// Alpha channel value, between 0 and 1
    let a: Double
    /// Blue channel value, between 0 and 1
    let b: Double
    /// Green channel value, between 0 and 1
    let g: Double
    /// Red channel value, between 0 and 1
    let r: Double
}

/// 2d vector offset within the frame.
///
/// A 2d vector
///
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
struct Vector2: Codable {
    /// X coordinate of the vector
    let x: Double
    /// Y coordinate of the vector
    let y: Double
}

/// Type of effect as a string enum
enum EffectType: String, Codable {
    case backgroundBlur = "BACKGROUND_BLUR"
    case dropShadow = "DROP_SHADOW"
    case innerShadow = "INNER_SHADOW"
    case layerBlur = "LAYER_BLUR"
}

/// Format and size to export an asset at
///
/// An array of export settings representing images to export from node
///
/// An array of export settings representing images to export from this node
///
/// An array of export settings representing images to export from the canvas
struct ExportSetting: Codable {
    /// Constraint that determines sizing of exported asset
    let constraint: Constraint
    /// Image type, string enum
    let format: Format
    /// File suffix to append to all filenames
    let suffix: String
}

/// Constraint that determines sizing of exported asset
///
/// Sizing constraint for exports
struct Constraint: Codable {
    /// Type of constraint to apply; string enum with potential values below
    /// "SCALE": Scale by value
    /// "WIDTH": Scale proportionally and set width to value
    /// "HEIGHT": Scale proportionally and set height to value
    let type: ConstraintType
    /// See type property for effect of this field
    let value: Double
}

/// Type of constraint to apply; string enum with potential values below
/// "SCALE": Scale by value
/// "WIDTH": Scale proportionally and set width to value
/// "HEIGHT": Scale proportionally and set height to value
enum ConstraintType: String, Codable {
    case height = "HEIGHT"
    case scale = "SCALE"
    case width = "WIDTH"
}

/// Image type, string enum
enum Format: String, Codable {
    case jpg = "JPG"
    case png = "PNG"
    case svg = "SVG"
}

/// An array of fill paints applied to the node
///
/// A solid color, gradient, or image texture that can be applied as fills or strokes
///
/// An array of stroke paints applied to the node
///
/// Paints applied to characters
struct Paint: Codable {
    /// Solid color of the paint
    let color: Color?
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    let gradientHandlePositions: [Vector2]?
    /// Positions of key points along the gradient axis with the colors
    /// anchored there. Colors along the gradient are interpolated smoothly
    /// between neighboring gradient stops.
    let gradientStops: [ColorStop]?
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    let opacity: Double
    /// Image scaling mode
    let scaleMode: String?
    /// Type of paint as a string enum
    let type: PaintType
    /// Is the paint enabled?
    let visible: Bool
}

/// Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly
/// between neighboring gradient stops.
///
/// A position color pair representing a gradient stop
struct ColorStop: Codable {
    /// Color attached to corresponding position
    let color: Color
    /// Value between 0 and 1 representing position along gradient axis
    let position: Double
}

/// Type of paint as a string enum
enum PaintType: String, Codable {
    case emoji = "EMOJI"
    case gradientAngular = "GRADIENT_ANGULAR"
    case gradientDiamond = "GRADIENT_DIAMOND"
    case gradientLinear = "GRADIENT_LINEAR"
    case gradientRadial = "GRADIENT_RADIAL"
    case image = "IMAGE"
    case solid = "SOLID"
}

/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
enum StrokeAlign: String, Codable {
    case center = "CENTER"
    case inside = "INSIDE"
    case outside = "OUTSIDE"
}

/// the type of the node, refer to table below for details
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
struct DocumentElement: Codable {
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    let children: [DocumentElement]?
    /// a string uniquely identifying this node within the document
    let id: String
    /// the name given to the node by the user in the tool.
    let name: String
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// whether or not the node is visible on the canvas
    let visible: Bool
    /// Background color of the canvas
    ///
    /// Background color of the node
    let backgroundColor: Color?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// An array of export settings representing images to export from this node
    let exportSettings: [ExportSetting]?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: Rectangle?
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    let blendMode: LendMode?
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool?
    /// Horizontal and vertical layout constraints for node
    let constraints: LayoutConstraint?
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [Effect]?
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool?
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGrid]?
    /// Opacity of the node
    let opacity: Double?
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool?
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// An array of fill paints applied to the node
    let fills: [Paint]?
    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign?
    /// An array of stroke paints applied to the node
    let strokes: [Paint]?
    /// The weight of strokes on the node
    let strokeWeight: Double?
    /// Radius of each corner of the rectangle
    let cornerRadius: Double?
    /// Text contained within text box
    let characters: String?
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// Style of text including font family and weight (see type style
    /// section for more information)
    let style: TypeStyle?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [TypeStyle]?
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case children, id, name, type, visible, backgroundColor, exportSettings, absoluteBoundingBox, blendMode, clipsContent, constraints, effects, isMask, layoutGrids, opacity, preserveRatio, transitionNodeID, fills, strokeAlign, strokes, strokeWeight, cornerRadius, characters, characterStyleOverrides, style, styleOverrideTable
        case componentID = "componentId"
    }
}

/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
///
/// Guides to align and place objects within a frame
struct LayoutGrid: Codable {
    /// Positioning of grid as a string enum
    /// "MIN": Grid starts at the left or top of the frame
    /// "MAX": Grid starts at the right or bottom of the frame
    /// "CENTER": Grid is center aligned
    let alignment: Alignment
    /// Color of the grid
    let color: Color
    /// Number of columns or rows
    let count: Double
    /// Spacing in between columns and rows
    let gutterSize: Double
    /// Spacing before the first column or row
    let offset: Double
    /// Orientation of the grid as a string enum
    /// "COLUMNS": Vertical grid
    /// "ROWS": Horizontal grid
    /// "GRID": Square grid
    let pattern: Pattern
    /// Width of column grid or height of row grid or square grid spacing
    let sectionSize: Double
    /// Is the grid currently visible?
    let visible: Bool
}

/// Positioning of grid as a string enum
/// "MIN": Grid starts at the left or top of the frame
/// "MAX": Grid starts at the right or bottom of the frame
/// "CENTER": Grid is center aligned
enum Alignment: String, Codable {
    case center = "CENTER"
    case max = "MAX"
    case min = "MIN"
}

/// Orientation of the grid as a string enum
/// "COLUMNS": Vertical grid
/// "ROWS": Horizontal grid
/// "GRID": Square grid
enum Pattern: String, Codable {
    case columns = "COLUMNS"
    case grid = "GRID"
    case rows = "ROWS"
}

/// Map from ID to TypeStyle for looking up style overrides
///
/// Metadata for character formatting
///
/// Style of text including font family and weight (see type style
/// section for more information)
struct TypeStyle: Codable {
    /// Paints applied to characters
    let fills: [Paint]
    /// Font family of text (standard name)
    let fontFamily: String
    /// PostScript font name
    let fontPostScriptName: String
    /// Font size in px
    let fontSize: Double
    /// Numeric font weight
    let fontWeight: Double
    /// Is text italicized?
    let italic: Bool
    /// Space between characters in px
    let letterSpacing: Double
    /// Line height as a percentage of normal line height
    let lineHeightPercent: Double
    /// Line height in px
    let lineHeightPx: Double
    /// Horizontal text alignment as string enum
    let textAlignHorizontal: TextAlignHorizontal
    /// Vertical text alignment as string enum
    let textAlignVertical: TextAlignVertical
}

/// Horizontal text alignment as string enum
enum TextAlignHorizontal: String, Codable {
    case center = "CENTER"
    case justified = "JUSTIFIED"
    case textAlignHorizontalLEFT = "LEFT"
    case textAlignHorizontalRIGHT = "RIGHT"
}

/// Vertical text alignment as string enum
enum TextAlignVertical: String, Codable {
    case bottom = "BOTTOM"
    case center = "CENTER"
    case top = "TOP"
}

/// Node Properties
/// The root node
///
/// The root node within the document
struct FileResponseDocument: Codable {
    /// An array of canvases attached to the document
    let children: [DocumentElement]
    /// a string uniquely identifying this node within the document
    let id: String
    /// the name given to the node by the user in the tool.
    let name: String
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// whether or not the node is visible on the canvas
    let visible: Bool
}

/// GET /v1/files/:key/comments
///
/// > Description
/// A list of comments left on the file.
///
/// > Path parameters
/// key String
/// File to get comments from
struct CommentsResponse: Codable {
    let comments: [Comment]
}

/// A comment or reply left by a user
struct Comment: Codable {
    let clientMeta: ClientMeta
    /// The time at which the comment was left
    let createdAt: String
    /// The file in which the comment lives
    let fileKey: String
    /// Unique identifier for comment
    let id: String
    /// (MISSING IN DOCS)
    /// The content of the comment
    let message: String
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let orderID: Double
    /// If present, the id of the comment to which this is the reply
    let parentID: String
    /// If set, when the comment was resolved
    let resolvedAt: String?
    /// The user who left the comment
    let user: User

    enum CodingKeys: String, CodingKey {
        case clientMeta = "client_meta"
        case createdAt = "created_at"
        case fileKey = "file_key"
        case id, message
        case orderID = "order_id"
        case parentID = "parent_id"
        case resolvedAt = "resolved_at"
        case user
    }
}

/// 2d vector offset within the frame.
///
/// A 2d vector
///
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
///
/// A relative offset within a frame
struct ClientMeta: Codable {
    /// X coordinate of the vector
    let x: Double?
    /// Y coordinate of the vector
    let y: Double?
    /// Unique id specifying the frame.
    let nodeID: [String]?
    /// 2d vector offset within the frame.
    let nodeOffset: Vector2?

    enum CodingKeys: String, CodingKey {
        case x, y
        case nodeID = "node_id"
        case nodeOffset = "node_offset"
    }
}

/// The user who left the comment
///
/// A description of a user
struct User: Codable {
    let handle, imgURL: String

    enum CodingKeys: String, CodingKey {
        case handle
        case imgURL = "img_url"
    }
}

/// POST /v1/files/:key/comments
///
/// > Description
/// Posts a new comment on the file.
///
/// > Path parameters
/// key String
/// File to get comments from
///
/// > Body parameters
/// message String
/// The text contents of the comment to post
///
/// client_meta Vector2 | FrameOffset
/// The position of where to place the comment. This can either be an absolute canvas
/// position or the relative position within a frame.
///
/// > Return value
/// The Comment that was successfully posted
///
/// > Error codes
/// 404 The specified file was not found
struct CommentRequest: Codable {
    let clientMeta: ClientMeta
    let message: String

    enum CodingKeys: String, CodingKey {
        case clientMeta = "client_meta"
        case message
    }
}

/// GET /v1/teams/:team_id/projects
///
/// > Description
/// Lists the projects for a specified team. Note that this will only return projects visible
/// to the authenticated user or owner of the developer token.
///
/// > Path parameters
/// team_id String
/// Id of the team to list projects from
struct ProjectsResponse: Codable {
    let projects: [Project]
}

struct Project: Codable {
    let id: Double
    let name: String
}

/// GET /v1/projects/:project_id/files
///
/// > Description
/// List the files in a given project.
///
/// > Path parameters
/// project_id String
/// Id of the project to list files from
struct ProjectFilesResponse: Codable {
    let files: [File]
}

struct File: Codable {
    let key: String
    /// utc date in iso8601
    let lastModified: String
    let name, thumbnailURL: String

    enum CodingKeys: String, CodingKey {
        case key
        case lastModified = "last_modified"
        case name
        case thumbnailURL = "thumbnail_url"
    }
}

// MARK: Convenience initializers

extension FileResponse {
    init(data: Data) throws {
        self = try JSONDecoder().decode(FileResponse.self, from: data)
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

extension Component {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Component.self, from: data)
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

extension Rectangle {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(Rectangle.self, from: data)
        self.init(absoluteBoundingBox: me.absoluteBoundingBox, blendMode: me.blendMode, constraints: me.constraints, cornerRadius: me.cornerRadius, effects: me.effects, exportSettings: me.exportSettings, fills: me.fills, id: me.id, isMask: me.isMask, name: me.name, opacity: me.opacity, preserveRatio: me.preserveRatio, strokeAlign: me.strokeAlign, strokes: me.strokes, strokeWeight: me.strokeWeight, transitionNodeID: me.transitionNodeID, type: me.type, visible: me.visible)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LayoutConstraint {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LayoutConstraint.self, from: data)
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

extension Effect {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Effect.self, from: data)
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

extension Vector2 {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Vector2.self, from: data)
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

extension ExportSetting {
    init(data: Data) throws {
        self = try JSONDecoder().decode(ExportSetting.self, from: data)
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

extension Paint {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Paint.self, from: data)
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

extension ColorStop {
    init(data: Data) throws {
        self = try JSONDecoder().decode(ColorStop.self, from: data)
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

extension DocumentElement {
    init(data: Data) throws {
        self = try JSONDecoder().decode(DocumentElement.self, from: data)
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

extension LayoutGrid {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LayoutGrid.self, from: data)
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

extension TypeStyle {
    init(data: Data) throws {
        self = try JSONDecoder().decode(TypeStyle.self, from: data)
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

extension FileResponseDocument {
    init(data: Data) throws {
        self = try JSONDecoder().decode(FileResponseDocument.self, from: data)
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

extension CommentsResponse {
    init(data: Data) throws {
        self = try JSONDecoder().decode(CommentsResponse.self, from: data)
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

extension ClientMeta {
    init(data: Data) throws {
        self = try JSONDecoder().decode(ClientMeta.self, from: data)
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

extension CommentRequest {
    init(data: Data) throws {
        self = try JSONDecoder().decode(CommentRequest.self, from: data)
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

extension ProjectsResponse {
    init(data: Data) throws {
        self = try JSONDecoder().decode(ProjectsResponse.self, from: data)
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

extension Project {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Project.self, from: data)
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

extension ProjectFilesResponse {
    init(data: Data) throws {
        self = try JSONDecoder().decode(ProjectFilesResponse.self, from: data)
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

extension File {
    init(data: Data) throws {
        self = try JSONDecoder().decode(File.self, from: data)
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
