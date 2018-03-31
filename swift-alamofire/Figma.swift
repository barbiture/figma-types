// To parse the JSON, add this file to your project and do:
//
//   let fileResponse = try FileResponse(json)
//   let commentsResponse = try CommentsResponse(json)
//   let commentRequest = try CommentRequest(json)
//   let projectsResponse = try ProjectsResponse(json)
//   let projectFilesResponse = try ProjectFilesResponse(json)
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseFileResponse { response in
//     if let fileResponse = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseCommentsResponse { response in
//     if let commentsResponse = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseCommentRequest { response in
//     if let commentRequest = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseProjectsResponse { response in
//     if let projectsResponse = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseProjectFilesResponse { response in
//     if let projectFilesResponse = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire

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
    let document: Ocument
    let schemaVersion: Double
}

/// A node that can have instances created of it that share the same properties
struct Component: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [Effect]
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGrid]
    /// Opacity of the node
    let opacity: Double
    /// the name given to the node by the user in the tool.
    let name: String
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: AbsoluteBoundingBox
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String
    /// whether or not the node is visible on the canvas
    let visible: Bool
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    let blendMode: BlendMode
    /// Background color of the node
    let backgroundColor: Olor
    /// Horizontal and vertical layout constraints for node
    let constraints: Constraints
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSetting]
    /// the type of the node, refer to table below for details
    let type: AbsoluteBoundingBoxType
    /// a string uniquely identifying this node within the document
    let id: String
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    let children: [Document]
}

/// Bounding box of the node in absolute space coordinates
///
/// A rectangle
class AbsoluteBoundingBox: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [Effect]
    /// Radius of each corner of the rectangle
    let cornerRadius: Double
    /// Opacity of the node
    let opacity: Double
    /// the name given to the node by the user in the tool.
    let name: String
    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign
    /// The weight of strokes on the node
    let strokeWeight: Double
    /// An array of fill paints applied to the node
    let fills: [Paint]
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: AbsoluteBoundingBox
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String
    /// whether or not the node is visible on the canvas
    let visible: Bool
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    let blendMode: BlendMode
    /// Horizontal and vertical layout constraints for node
    let constraints: Constraints
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSetting]
    /// the type of the node, refer to table below for details
    let type: AbsoluteBoundingBoxType
    /// a string uniquely identifying this node within the document
    let id: String
    /// An array of stroke paints applied to the node
    let strokes: [Paint]
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool

    init(effects: [Effect], cornerRadius: Double, opacity: Double, name: String, strokeAlign: StrokeAlign, strokeWeight: Double, fills: [Paint], absoluteBoundingBox: AbsoluteBoundingBox, transitionNodeID: String, visible: Bool, blendMode: BlendMode, constraints: Constraints, isMask: Bool, exportSettings: [ExportSetting], type: AbsoluteBoundingBoxType, id: String, strokes: [Paint], preserveRatio: Bool) {
        self.effects = effects
        self.cornerRadius = cornerRadius
        self.opacity = opacity
        self.name = name
        self.strokeAlign = strokeAlign
        self.strokeWeight = strokeWeight
        self.fills = fills
        self.absoluteBoundingBox = absoluteBoundingBox
        self.transitionNodeID = transitionNodeID
        self.visible = visible
        self.blendMode = blendMode
        self.constraints = constraints
        self.isMask = isMask
        self.exportSettings = exportSettings
        self.type = type
        self.id = id
        self.strokes = strokes
        self.preserveRatio = preserveRatio
    }
}

/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
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

/// Horizontal and vertical layout constraints for node
///
/// Layout constraint relative to containing Frame
struct Constraints: Codable {
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
    let blendMode: BlendMode?
    let color: Olor?
    let offset: Offset?
    /// Radius of the blur effect (applies to shadows as well)
    let radius: Double
    /// Type of effect as a string enum
    let type: EffectType
    /// Is the effect active?
    let visible: Bool
}

/// Solid color of the paint
///
/// An RGBA color
///
/// Background color of the node
///
/// Color attached to corresponding position
///
/// Background color of the canvas
///
/// Color of the grid
struct Olor: Codable {
    /// Alpha channel value, between 0 and 1
    let a: Double
    /// Blue channel value, between 0 and 1
    let b: Double
    /// Green channel value, between 0 and 1
    let g: Double
    /// Red channel value, between 0 and 1
    let r: Double
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
struct Offset: Codable {
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

/// An array of export settings representing images to export from node
///
/// Format and size to export an asset at
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
    let color: Olor?
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    let gradientHandlePositions: [Offset]?
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
    let color: Olor
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
enum AbsoluteBoundingBoxType: String, Codable {
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
struct Document: Codable {
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    let children: [Document]?
    /// a string uniquely identifying this node within the document
    let id: String
    /// the name given to the node by the user in the tool.
    let name: String
    /// the type of the node, refer to table below for details
    let type: AbsoluteBoundingBoxType
    /// whether or not the node is visible on the canvas
    let visible: Bool
    /// Background color of the canvas
    ///
    /// Background color of the node
    let backgroundColor: Olor?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// An array of export settings representing images to export from this node
    let exportSettings: [ExportSetting]?
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [Effect]?
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGrid]?
    /// Opacity of the node
    let opacity: Double?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: AbsoluteBoundingBox?
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    let blendMode: BlendMode?
    /// Horizontal and vertical layout constraints for node
    let constraints: Constraints?
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool?
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool?
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool?
    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign?
    /// The weight of strokes on the node
    let strokeWeight: Double?
    /// An array of fill paints applied to the node
    let fills: [Paint]?
    /// An array of stroke paints applied to the node
    let strokes: [Paint]?
    /// Radius of each corner of the rectangle
    let cornerRadius: Double?
    /// Text contained within text box
    let characters: String?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [Tyle]?
    /// Style of text including font family and weight (see type style
    /// section for more information)
    let style: Tyle?
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case children, id, name, type, visible, backgroundColor, exportSettings, effects, layoutGrids, opacity, absoluteBoundingBox, transitionNodeID, blendMode, constraints, isMask, clipsContent, preserveRatio, strokeAlign, strokeWeight, fills, strokes, cornerRadius, characters, styleOverrideTable, style, characterStyleOverrides
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
    let color: Olor
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
struct Tyle: Codable {
    /// Line height in px
    let lineHeightPx: Double
    /// PostScript font name
    let fontPostScriptName: String
    /// Numeric font weight
    let fontWeight: Double
    /// Line height as a percentage of normal line height
    let lineHeightPercent: Double
    /// Vertical text alignment as string enum
    let textAlignVertical: TextAlignVertical
    /// Font size in px
    let fontSize: Double
    /// Is text italicized?
    let italic: Bool
    /// Paints applied to characters
    let fills: [Paint]
    /// Font family of text (standard name)
    let fontFamily: String
    /// Horizontal text alignment as string enum
    let textAlignHorizontal: TextAlignHorizontal
    /// Space between characters in px
    let letterSpacing: Double
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
struct Ocument: Codable {
    /// An array of canvases attached to the document
    let children: [Document]
    /// a string uniquely identifying this node within the document
    let id: String
    /// the name given to the node by the user in the tool.
    let name: String
    /// the type of the node, refer to table below for details
    let type: AbsoluteBoundingBoxType
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
    /// (MISSING IN DOCS)
    /// The content of the comment
    let message: String
    /// Enables basic storage and retrieval of dates and times.
    let createdAt: String
    /// The user who left the comment
    let user: User
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let orderID: Double
    /// If present, the id of the comment to which this is the reply
    let parentID: String
    let clientMeta: ClientMeta
    /// Enables basic storage and retrieval of dates and times.
    let resolvedAt: String
    /// Unique identifier for comment
    let id: String
    /// The file in which the comment lives
    let fileKey: String

    enum CodingKeys: String, CodingKey {
        case message
        case createdAt = "created_at"
        case user
        case orderID = "order_id"
        case parentID = "parent_id"
        case clientMeta = "client_meta"
        case resolvedAt = "resolved_at"
        case id
        case fileKey = "file_key"
    }
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
struct ClientMeta: Codable {
    /// X coordinate of the vector
    let x: Double?
    /// Y coordinate of the vector
    let y: Double?
    /// Unique id specifying the frame.
    let nodeID: [String]?
    /// 2d vector offset within the frame.
    let nodeOffset: Offset?

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

// MARK: - Alamofire response handlers

extension DataRequest {
    fileprivate func decodableResponseSerializer<T: Decodable>() -> DataResponseSerializer<T> {
        return DataResponseSerializer { _, response, data, error in
            guard error == nil else { return .failure(error!) }

            guard let data = data else {
                return .failure(AFError.responseSerializationFailed(reason: .inputDataNil))
            }

            return Result { try JSONDecoder().decode(T.self, from: data) }
        }
    }

    @discardableResult
    fileprivate func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler: completionHandler)
    }

    @discardableResult
    func responseFileResponse(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<FileResponse>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseCommentsResponse(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<CommentsResponse>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseCommentRequest(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<CommentRequest>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseProjectsResponse(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<ProjectsResponse>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseProjectFilesResponse(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<ProjectFilesResponse>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
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

extension AbsoluteBoundingBox {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(AbsoluteBoundingBox.self, from: data)
        self.init(effects: me.effects, cornerRadius: me.cornerRadius, opacity: me.opacity, name: me.name, strokeAlign: me.strokeAlign, strokeWeight: me.strokeWeight, fills: me.fills, absoluteBoundingBox: me.absoluteBoundingBox, transitionNodeID: me.transitionNodeID, visible: me.visible, blendMode: me.blendMode, constraints: me.constraints, isMask: me.isMask, exportSettings: me.exportSettings, type: me.type, id: me.id, strokes: me.strokes, preserveRatio: me.preserveRatio)
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

extension Constraints {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Constraints.self, from: data)
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

extension Olor {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Olor.self, from: data)
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

extension Offset {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Offset.self, from: data)
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

extension Tyle {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Tyle.self, from: data)
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

extension Ocument {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Ocument.self, from: data)
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
