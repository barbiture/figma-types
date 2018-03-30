// To parse the JSON, add this file to your project and do:
//
//   let frameOffset = try FrameOffset(json)
//   let vector = try Vector(json)
//   let color = try Color(json)
//   let colorStop = try ColorStop(json)
//   let layoutConstraint = try LayoutConstraint(json)
//   let user = try User(json)
//   let text = try Text(json)
//   let frame = try Frame(json)
//   let rectangle = try Rectangle(json)
//   let layoutGrid = try LayoutGrid(json)
//   let string = try String(json)
//   let effect = try Effect(json)
//   let slice = try Slice(json)
//   let star = try Star(json)
//   let line = try Line(json)
//   let blendMode = try BlendMode(json)
//   let instance = try Instance(json)
//   let commentsResponse = try CommentsResponse(json)
//   let vector2D = try Vector2D(json)
//   let typeStyle = try TypeStyle(json)
//   let booleanGroup = try BooleanGroup(json)
//   let canvas = try Canvas(json)
//   let document = try Document(json)
//   let nodeType = try NodeType(json)
//   let exportSetting = try ExportSetting(json)
//   let component = try Component(json)
//   let fileResponse = try FileResponse(json)
//   let constraint = try Constraint(json)
//   let paint = try Paint(json)
//   let regularPolygon = try RegularPolygon(json)
//   let ellipse = try Ellipse(json)
//   let comment = try Comment(json)
//   let group = try Group(json)
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseFrameOffset { response in
//     if let frameOffset = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseVector { response in
//     if let vector = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseColor { response in
//     if let color = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseColorStop { response in
//     if let colorStop = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseLayoutConstraint { response in
//     if let layoutConstraint = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseUser { response in
//     if let user = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseText { response in
//     if let text = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseFrame { response in
//     if let frame = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseRectangle { response in
//     if let rectangle = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseLayoutGrid { response in
//     if let layoutGrid = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseString { response in
//     if let string = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseEffect { response in
//     if let effect = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseSlice { response in
//     if let slice = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseStar { response in
//     if let star = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseLine { response in
//     if let line = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseBlendMode { response in
//     if let blendMode = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseInstance { response in
//     if let instance = response.result.value {
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
//   Alamofire.request(url).responseVector2D { response in
//     if let vector2D = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseTypeStyle { response in
//     if let typeStyle = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseBooleanGroup { response in
//     if let booleanGroup = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseCanvas { response in
//     if let canvas = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseDocument { response in
//     if let document = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseNodeType { response in
//     if let nodeType = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseExportSetting { response in
//     if let exportSetting = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseComponent { response in
//     if let component = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseFileResponse { response in
//     if let fileResponse = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseConstraint { response in
//     if let constraint = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responsePaint { response in
//     if let paint = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseRegularPolygon { response in
//     if let regularPolygon = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseEllipse { response in
//     if let ellipse = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseComment { response in
//     if let comment = response.result.value {
//       ...
//     }
//   }
//
//   Alamofire.request(url).responseGroup { response in
//     if let group = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire

typealias String = [String]

/// A relative offset within a frame
struct FrameOffset: Codable {
    /// Unique id specifying the frame.
    let nodeID: [String]
    /// 2d vector offset within the frame.
    let nodeOffset: Offset

    enum CodingKeys: String, CodingKey {
        case nodeID = "node_id"
        case nodeOffset = "node_offset"
    }
}

/// A 2d vector
///
/// 2d vector offset within the frame.
///
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
struct Offset: Codable {
    /// X coordinate of the vector
    let x: Double
    /// Y coordinate of the vector
    let y: Double
}

/// A vector network, consisting of vertices and edges
struct Vector: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
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
    let fills: [PaintElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
}

/// A rectangle
///
/// Bounding box of the node in absolute space coordinates
///
/// An array of nodes that are being boolean operated on
///
/// An array of nodes that are direct children of this node
///
/// An array of top level layers on the canvas
///
/// An array of canvases attached to the document
class AbsoluteBoundingBox: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
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
    let fills: [PaintElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool

    init(effects: [EffectElement], cornerRadius: Double, opacity: Double, name: String, strokeAlign: StrokeAlign, strokeWeight: Double, fills: [PaintElement], absoluteBoundingBox: AbsoluteBoundingBox, transitionNodeID: String, visible: Bool, blendMode: BlendMode, constraints: Constraints, isMask: Bool, exportSettings: [ExportSettingElement], type: NodeType, id: String, strokes: [PaintElement], preserveRatio: Bool) {
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

/// Layout constraint relative to containing Frame
///
/// Horizontal and vertical layout constraints for node
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

/// A visual effect such as a shadow or blur
///
/// An array of effects attached to this node
/// (see effects sectionfor more details)
struct EffectElement: Codable {
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

/// An RGBA color
///
/// Solid color of the paint
///
/// Color attached to corresponding position
///
/// Color of the grid
///
/// Background color of the node
///
/// Background color of the canvas
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
struct ExportSettingElement: Codable {
    /// Constraint that determines sizing of exported asset
    let constraint: ExportSettingConstraint
    /// Image type, string enum
    let format: Format
    /// File suffix to append to all filenames
    let suffix: String
}

/// Sizing constraint for exports
///
/// Constraint that determines sizing of exported asset
struct ExportSettingConstraint: Codable {
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

/// A solid color, gradient, or image texture that can be applied as fills or strokes
///
/// An array of fill paints applied to the node
///
/// An array of stroke paints applied to the node
///
/// Paints applied to characters
struct PaintElement: Codable {
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
    let gradientStops: [ColorStopElement]?
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

/// A position color pair representing a gradient stop
///
/// Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly
/// between neighboring gradient stops.
struct ColorStopElement: Codable {
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
    /// Alpha channel value, between 0 and 1
    let a: Double
    /// Blue channel value, between 0 and 1
    let b: Double
    /// Green channel value, between 0 and 1
    let g: Double
    /// Red channel value, between 0 and 1
    let r: Double
}

/// A position color pair representing a gradient stop
struct ColorStop: Codable {
    /// Color attached to corresponding position
    let color: Olor
    /// Value between 0 and 1 representing position along gradient axis
    let position: Double
}

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

/// A description of a user
struct User: Codable {
    let handle, imgURL: String

    enum CodingKeys: String, CodingKey {
        case handle
        case imgURL = "img_url"
    }
}

/// A text box
struct Text: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
    /// Text contained within text box
    let characters: String
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
    let fills: [PaintElement]
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: AbsoluteBoundingBox
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [Tyle]
    /// Style of text including font family and weight (see type style
    /// section for more information)
    let style: Tyle
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]
}

/// Metadata for character formatting
///
/// Map from ID to TypeStyle for looking up style overrides
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
    let fills: [PaintElement]
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

/// A node of fixed size containing other nodes
struct Frame: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    let children: [DocumentElement]
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
/// A rectangle
///
/// Bounding box of the node in absolute space coordinates
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// A mapping from node IDs to component metadata. This is to help you determine which
/// components each instance comes from. Currently the only piece of metadata available on
/// components is the name of the component, but more properties will be forthcoming.
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
    let backgroundColor: Olor?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// An array of export settings representing images to export from this node
    let exportSettings: [ExportSettingElement]?
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]?
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]?
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
    let fills: [PaintElement]?
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]?
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

/// Guides to align and place objects within a frame
///
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
struct LayoutGridElement: Codable {
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

/// A rectangle
struct Rectangle: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
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
    let fills: [PaintElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
}

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

/// A rectangular region of the canvas that can be exported
struct Slice: Codable {
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: AbsoluteBoundingBox
    /// An array of export settings representing images to export from this node
    let exportSettings: [ExportSettingElement]
    /// a string uniquely identifying this node within the document
    let id: String
    /// the name given to the node by the user in the tool.
    let name: String
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// whether or not the node is visible on the canvas
    let visible: Bool
}

/// A regular star shape
struct Star: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
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
    let fills: [PaintElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
}

/// A straight line
struct Line: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
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
    let fills: [PaintElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
}

/// An instance of a component, changes to the component result in the same
/// changes applied to the instance
struct Instance: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]
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
    let exportSettings: [ExportSettingElement]
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    let componentID: String
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    let children: [DocumentElement]

    enum CodingKeys: String, CodingKey {
        case effects, layoutGrids, opacity, name, absoluteBoundingBox, transitionNodeID, visible, blendMode, backgroundColor, constraints, isMask, clipsContent, exportSettings
        case componentID = "componentId"
        case type, id, preserveRatio, children
    }
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
    let comments: [CommentElement]
}

/// A comment or reply left by a user
struct CommentElement: Codable {
    /// (MISSING IN DOCS)
    /// The content of the comment
    let message: String
    /// Enables basic storage and retrieval of dates and times.
    let createdAt: String
    /// The user who left the comment
    let user: CommentUser
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

/// A 2d vector
///
/// 2d vector offset within the frame.
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
    let nodeOffset: Offset?

    enum CodingKeys: String, CodingKey {
        case x, y
        case nodeID = "node_id"
        case nodeOffset = "node_offset"
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

/// A 2d vector
struct Vector2D: Codable {
    /// X coordinate of the vector
    let x: Double
    /// Y coordinate of the vector
    let y: Double
}

/// Metadata for character formatting
struct TypeStyle: Codable {
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
    let fills: [PaintElement]
    /// Font family of text (standard name)
    let fontFamily: String
    /// Horizontal text alignment as string enum
    let textAlignHorizontal: TextAlignHorizontal
    /// Space between characters in px
    let letterSpacing: Double
}

/// A group that has a boolean operation applied to it
struct BooleanGroup: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
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
    let fills: [PaintElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
    /// An array of nodes that are being boolean operated on
    let children: [DocumentElement]
}

/// Represents a single page
struct Canvas: Codable {
    /// Background color of the canvas
    let backgroundColor: Olor
    /// An array of top level layers on the canvas
    let children: [DocumentElement]
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSettingElement]
    /// a string uniquely identifying this node within the document
    let id: String
    /// the name given to the node by the user in the tool.
    let name: String
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// whether or not the node is visible on the canvas
    let visible: Bool
}

/// Node Properties
/// The root node
struct Document: Codable {
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

/// Format and size to export an asset at
struct ExportSetting: Codable {
    /// Constraint that determines sizing of exported asset
    let constraint: ExportSettingConstraint
    /// Image type, string enum
    let format: Format
    /// File suffix to append to all filenames
    let suffix: String
}

/// A node that can have instances created of it that share the same properties
struct Component: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    let children: [DocumentElement]
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
struct FileResponse: Codable {
    /// A mapping from node IDs to component metadata. This is to help you determine which
    /// components each instance comes from. Currently the only piece of metadata available on
    /// components is the name of the component, but more properties will be forthcoming.
    let components: [String: ComponentValue]
    /// The root node within the document
    let document: Ocument
    let schemaVersion: Double
}

/// A node that can have instances created of it that share the same properties
///
/// An array of nodes that are direct children of this node
///
/// An array of nodes that are being boolean operated on
///
/// An array of top level layers on the canvas
///
/// An array of canvases attached to the document
///
/// A mapping from node IDs to component metadata. This is to help you determine which
/// components each instance comes from. Currently the only piece of metadata available on
/// components is the name of the component, but more properties will be forthcoming.
struct ComponentValue: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    let children: [DocumentElement]
}

/// Node Properties
/// The root node
///
/// An array of nodes that are direct children of this node
///
/// An array of canvases attached to the document
///
/// An array of top level layers on the canvas
///
/// An array of nodes that are being boolean operated on
///
/// The root node within the document
struct Ocument: Codable {
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

/// A solid color, gradient, or image texture that can be applied as fills or strokes
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
    let gradientStops: [ColorStopElement]?
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

/// A regular n-sided polygon
struct RegularPolygon: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
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
    let fills: [PaintElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
}

/// An ellipse
struct Ellipse: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
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
    let fills: [PaintElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
}

/// A comment or reply left by a user
struct Comment: Codable {
    /// (MISSING IN DOCS)
    /// The content of the comment
    let message: String
    /// Enables basic storage and retrieval of dates and times.
    let createdAt: String
    /// The user who left the comment
    let user: CommentUser
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

/// A logical grouping of nodes
struct Group: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [EffectElement]
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]
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
    let exportSettings: [ExportSettingElement]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// a string uniquely identifying this node within the document
    let id: String
    /// Keep height and width constrained to same ratio
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    let children: [DocumentElement]
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
    func responseFrameOffset(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<FrameOffset>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseVector(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Vector>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseColor(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Color>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseColorStop(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<ColorStop>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseLayoutConstraint(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<LayoutConstraint>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseUser(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<User>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseText(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Text>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseFrame(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Frame>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseRectangle(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Rectangle>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseLayoutGrid(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<LayoutGrid>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseString(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<String>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseEffect(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Effect>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseSlice(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Slice>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseStar(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Star>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseLine(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Line>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseBlendMode(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<BlendMode>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseInstance(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Instance>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseCommentsResponse(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<CommentsResponse>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseVector2D(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Vector2D>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseTypeStyle(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<TypeStyle>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseBooleanGroup(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<BooleanGroup>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseCanvas(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Canvas>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseDocument(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Document>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseNodeType(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<NodeType>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseExportSetting(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<ExportSetting>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseComponent(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Component>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseFileResponse(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<FileResponse>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseConstraint(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Constraint>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responsePaint(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Paint>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseRegularPolygon(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<RegularPolygon>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseEllipse(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Ellipse>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseComment(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Comment>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }

    @discardableResult
    func responseGroup(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Group>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }
}

// MARK: Convenience initializers

extension FrameOffset {
    init(data: Data) throws {
        self = try JSONDecoder().decode(FrameOffset.self, from: data)
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

extension Vector {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Vector.self, from: data)
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

extension EffectElement {
    init(data: Data) throws {
        self = try JSONDecoder().decode(EffectElement.self, from: data)
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

extension ExportSettingElement {
    init(data: Data) throws {
        self = try JSONDecoder().decode(ExportSettingElement.self, from: data)
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

extension ExportSettingConstraint {
    init(data: Data) throws {
        self = try JSONDecoder().decode(ExportSettingConstraint.self, from: data)
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

extension PaintElement {
    init(data: Data) throws {
        self = try JSONDecoder().decode(PaintElement.self, from: data)
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

extension ColorStopElement {
    init(data: Data) throws {
        self = try JSONDecoder().decode(ColorStopElement.self, from: data)
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

extension Text {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Text.self, from: data)
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

extension Frame {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Frame.self, from: data)
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

extension LayoutGridElement {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LayoutGridElement.self, from: data)
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
    init(data: Data) throws {
        self = try JSONDecoder().decode(Rectangle.self, from: data)
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

extension Slice {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Slice.self, from: data)
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

extension Star {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Star.self, from: data)
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

extension Line {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Line.self, from: data)
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

extension Instance {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Instance.self, from: data)
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

extension CommentElement {
    init(data: Data) throws {
        self = try JSONDecoder().decode(CommentElement.self, from: data)
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

extension Vector2D {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Vector2D.self, from: data)
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

extension BooleanGroup {
    init(data: Data) throws {
        self = try JSONDecoder().decode(BooleanGroup.self, from: data)
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

extension ComponentValue {
    init(data: Data) throws {
        self = try JSONDecoder().decode(ComponentValue.self, from: data)
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

extension RegularPolygon {
    init(data: Data) throws {
        self = try JSONDecoder().decode(RegularPolygon.self, from: data)
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

extension Ellipse {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Ellipse.self, from: data)
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

extension Group {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Group.self, from: data)
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

extension Array where Element == String.Element {
    init(data: Data) throws {
        self = try JSONDecoder().decode(String.self, from: data)
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
