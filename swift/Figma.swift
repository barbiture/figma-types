// To parse the JSON, add this file to your project and do:
//
//   let regularPolygonNode = try RegularPolygonNode(json)
//   let ellipseNode = try EllipseNode(json)
//   let groupNode = try GroupNode(json)
//   let node = try Node(json)
//   let vector = try Vector(json)
//   let color = try Color(json)
//   let global = try Global(json)
//   let colorStop = try ColorStop(json)
//   let vectorNode = try VectorNode(json)
//   let layoutConstraint = try LayoutConstraint(json)
//   let booleanNode = try BooleanNode(json)
//   let user = try User(json)
//   let textNode = try TextNode(json)
//   let frameNode = try FrameNode(json)
//   let rectangle = try Rectangle(json)
//   let layoutGrid = try LayoutGrid(json)
//   let effect = try Effect(json)
//   let rectangleNode = try RectangleNode(json)
//   let blendMode = try BlendMode(json)
//   let sliceNode = try SliceNode(json)
//   let starNode = try StarNode(json)
//   let lineNode = try LineNode(json)
//   let instanceNode = try InstanceNode(json)
//   let typeStyle = try TypeStyle(json)
//   let canvasNode = try CanvasNode(json)
//   let exportSetting = try ExportSetting(json)
//   let documentNode = try DocumentNode(json)
//   let constraint = try Constraint(json)
//   let paint = try Paint(json)
//   let componentNode = try ComponentNode(json)
//   let comment = try Comment(json)

import Foundation

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
struct RegularPolygonNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// Opacity of the node
    let opacity: Double
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign
    /// The weight of strokes on the node
    let strokeWeight: Double
    /// An array of fill paints applied to the node
    let fills: [PaintElement]
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
}

/// A rectangle that expresses a bounding box in absolute coordinates
///
/// Bounding box of the node in absolute space coordinates
struct RegularPolygonNodeRectangle: Codable {
    /// X coordinate of top left corner of the rectangle
    let x: Double
    /// Y coordinate of top left corner of the rectangle
    let y: Double
    /// Width of the rectangle
    let width: Double
    /// Height of the rectangle
    let height: Double
}

/// Enum describing how layer blends with layers below
///
/// See type property for effect of this field
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
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
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
struct RegularPolygonNodeLayoutConstraint: Codable {
    /// * TOP: Node is laid out relative to top of the containing frame
    /// * BOTTOM: Node is laid out relative to bottom of the containing frame
    /// * CENTER: Node is vertically centered relative to containing frame
    /// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// * SCALE: Node scales vertically with containing frame
    let vertical: Vertical
    /// * LEFT: Node is laid out relative to left of the containing frame
    /// * RIGHT: Node is laid out relative to right of the containing frame
    /// * CENTER: Node is horizontally centered relative to containing frame
    /// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// * SCALE: Node scales horizontally with containing frame
    let horizontal: Horizontal
}

/// * LEFT: Node is laid out relative to left of the containing frame
/// * RIGHT: Node is laid out relative to right of the containing frame
/// * CENTER: Node is horizontally centered relative to containing frame
/// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// * SCALE: Node scales horizontally with containing frame
enum Horizontal: String, Codable {
    case center = "CENTER"
    case horizontalLEFT = "LEFT"
    case horizontalRIGHT = "RIGHT"
    case leftRight = "LEFT_RIGHT"
    case scale = "SCALE"
}

/// * TOP: Node is laid out relative to top of the containing frame
/// * BOTTOM: Node is laid out relative to bottom of the containing frame
/// * CENTER: Node is vertically centered relative to containing frame
/// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// * SCALE: Node scales vertically with containing frame
enum Vertical: String, Codable {
    case bottom = "BOTTOM"
    case center = "CENTER"
    case scale = "SCALE"
    case top = "TOP"
    case topBottom = "TOP_BOTTOM"
}

/// A visual effect such as a shadow or blur
///
/// An array of effects attached to this node (see effects section for more details)
struct EffectElement: Codable {
    /// Type of effect as a string enum
    let type: EffectType
    /// See type property for effect of this field
    let radius: Double
    /// See type property for effect of this field
    let visible: Bool
    /// See type property for effect of this field
    let color: EffectColor
    /// See type property for effect of this field
    let blendMode: BlendMode
    /// See type property for effect of this field
    let offset: EffectVector
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
struct EffectColor: Codable {
    /// Red channel value, between 0 and 1
    let r: Double
    /// Green channel value, between 0 and 1
    let g: Double
    /// Blue channel value, between 0 and 1
    let b: Double
    /// Alpha channel value, between 0 and 1
    let a: Double
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
struct EffectVector: Codable {
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
/// An array of export settings representing images to export from the canvas
///
/// A rectangular region of the canvas that can be exported
struct ExportSettingElement: Codable {
    /// File suffix to append to all filenames
    let suffix: String
    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    let format: Format
    /// Constraint that determines sizing of exported asset
    let constraint: ExportSettingConstraint
}

/// Sizing constraint for exports
///
/// Constraint that determines sizing of exported asset
struct ExportSettingConstraint: Codable {
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

/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
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
    /// Type of paint as a string enum
    let type: PaintType
    /// Is the paint enabled?
    let visible: Bool
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    let opacity: Double
    /// (For solid paints) Solid color of the paint
    let color: EffectColor?
    /// (For gradient paints) This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left corner of the
    /// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
    /// corresponds to the start of the gradient (value 0 for the purposes of calculating
    /// gradient stops), the second position is the end of the gradient (value 1), and the third
    /// handle position determines the width of the gradient (only relevant for non-linear
    /// gradients).
    let gradientHandlePositions: [EffectVector]?
    /// (For gradient paints) Positions of key points along the gradient axis with the colors
    /// anchored there. Colors along the gradient are interpolated smoothly between neighboring
    /// gradient stops.
    let gradientStops: [ColorStopElement]?
    /// (For image paints) Image scaling mode
    let scaleMode: ScaleMode?
}

/// A position color pair representing a gradient stop
///
/// (For gradient paints) Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly between neighboring
/// gradient stops.
struct ColorStopElement: Codable {
    /// Color attached to corresponding position
    let color: EffectColor
    /// Value between 0 and 1 representing position along gradient axis
    let position: Double
}

/// (For image paints) Image scaling mode
enum ScaleMode: String, Codable {
    case fill = "FILL"
    case fit = "FIT"
    case stretch = "STRETCH"
    case tile = "TILE"
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
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
enum StrokeAlign: String, Codable {
    case center = "CENTER"
    case inside = "INSIDE"
    case outside = "OUTSIDE"
}

/// The type of the node
enum RegularPolygonNodeType: String, Codable {
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
struct EllipseNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// Opacity of the node
    let opacity: Double
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign
    /// The weight of strokes on the node
    let strokeWeight: Double
    /// An array of fill paints applied to the node
    let fills: [PaintElement]
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
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
struct GroupNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]
    /// Opacity of the node
    let opacity: Double
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// Background color of the node
    let backgroundColor: EffectColor
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    let children: [PurpleNode]
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
struct PurpleNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    let children: [NodeNode]?
    /// Background color of the canvas
    ///
    /// Background color of the node
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    let exportSettings: [ExportSettingElement]?
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]?
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]?
    /// Opacity of the node
    let opacity: Double?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle?
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint?
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool?
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool?
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
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
    /// Style of text including font family and weight (see type style section for more
    /// information)
    let style: NodeTypeStyle?
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [String: NodeTypeStyle]?
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case id, name, visible, type, children, backgroundColor, exportSettings, effects, layoutGrids, opacity, absoluteBoundingBox, transitionNodeID, blendMode, constraints, isMask, clipsContent, preserveRatio, strokeAlign, strokeWeight, fills, strokes, cornerRadius, characters, style, characterStyleOverrides, styleOverrideTable
        case componentID = "componentId"
    }
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
struct NodeNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    let children: [NodeNode]?
    /// Background color of the canvas
    ///
    /// Background color of the node
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    let exportSettings: [ExportSettingElement]?
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]?
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]?
    /// Opacity of the node
    let opacity: Double?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle?
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint?
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool?
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool?
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
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
    /// Style of text including font family and weight (see type style section for more
    /// information)
    let style: NodeTypeStyle?
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [String: NodeTypeStyle]?
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case id, name, visible, type, children, backgroundColor, exportSettings, effects, layoutGrids, opacity, absoluteBoundingBox, transitionNodeID, blendMode, constraints, isMask, clipsContent, preserveRatio, strokeAlign, strokeWeight, fills, strokes, cornerRadius, characters, style, characterStyleOverrides, styleOverrideTable
        case componentID = "componentId"
    }
}

/// Guides to align and place objects within a frame
///
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
struct LayoutGridElement: Codable {
    /// * COLUMNS: Vertical grid
    /// * ROWS: Horizontal grid
    /// * GRID: Square grid
    let pattern: Pattern
    /// Width of column grid or height of row grid or square grid spacing
    let sectionSize: Double
    /// Is the grid currently visible?
    let visible: Bool
    /// Color of the grid
    let color: EffectColor
    /// Positioning of grid as a string enum
    ///
    /// * MIN: Grid starts at the left or top of the frame
    /// * MAX: Grid starts at the right or bottom of the frame
    /// * CENTER: Grid is center aligned
    let alignment: Alignment
    /// Spacing in between columns and rows
    let gutterSize: Double
    /// Spacing before the first column or row
    let offset: Double
    /// Number of columns or rows
    let count: Double
}

/// Positioning of grid as a string enum
///
/// * MIN: Grid starts at the left or top of the frame
/// * MAX: Grid starts at the right or bottom of the frame
/// * CENTER: Grid is center aligned
enum Alignment: String, Codable {
    case center = "CENTER"
    case max = "MAX"
    case min = "MIN"
}

/// * COLUMNS: Vertical grid
/// * ROWS: Horizontal grid
/// * GRID: Square grid
enum Pattern: String, Codable {
    case columns = "COLUMNS"
    case grid = "GRID"
    case rows = "ROWS"
}

/// Metadata for character formatting
///
/// Style of text including font family and weight (see type style section for more
/// information)
///
/// Map from ID to TypeStyle for looking up style overrides
struct NodeTypeStyle: Codable {
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
struct Node: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    let children: [NodeNode]?
    /// Background color of the canvas
    ///
    /// Background color of the node
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    let exportSettings: [ExportSettingElement]?
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]?
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]?
    /// Opacity of the node
    let opacity: Double?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle?
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint?
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool?
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool?
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
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
    /// Style of text including font family and weight (see type style section for more
    /// information)
    let style: NodeTypeStyle?
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [String: NodeTypeStyle]?
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case id, name, visible, type, children, backgroundColor, exportSettings, effects, layoutGrids, opacity, absoluteBoundingBox, transitionNodeID, blendMode, constraints, isMask, clipsContent, preserveRatio, strokeAlign, strokeWeight, fills, strokes, cornerRadius, characters, style, characterStyleOverrides, styleOverrideTable
        case componentID = "componentId"
    }
}

/// A 2d vector
struct Vector: Codable {
    /// X coordinate of the vector
    let x: Double
    /// Y coordinate of the vector
    let y: Double
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
    let type: RegularPolygonNodeType
}

/// A position color pair representing a gradient stop
struct ColorStop: Codable {
    /// Color attached to corresponding position
    let color: EffectColor
    /// Value between 0 and 1 representing position along gradient axis
    let position: Double
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
struct VectorNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// Opacity of the node
    let opacity: Double
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign
    /// The weight of strokes on the node
    let strokeWeight: Double
    /// An array of fill paints applied to the node
    let fills: [PaintElement]
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
}

/// Layout constraint relative to containing Frame
struct LayoutConstraint: Codable {
    /// * TOP: Node is laid out relative to top of the containing frame
    /// * BOTTOM: Node is laid out relative to bottom of the containing frame
    /// * CENTER: Node is vertically centered relative to containing frame
    /// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// * SCALE: Node scales vertically with containing frame
    let vertical: Vertical
    /// * LEFT: Node is laid out relative to left of the containing frame
    /// * RIGHT: Node is laid out relative to right of the containing frame
    /// * CENTER: Node is horizontally centered relative to containing frame
    /// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// * SCALE: Node scales horizontally with containing frame
    let horizontal: Horizontal
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
struct BooleanNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// Opacity of the node
    let opacity: Double
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign
    /// The weight of strokes on the node
    let strokeWeight: Double
    /// An array of fill paints applied to the node
    let fills: [PaintElement]
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
    /// An array of nodes that are being boolean operated on
    let children: [FluffyNode]
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
struct FluffyNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    let children: [NodeNode]?
    /// Background color of the canvas
    ///
    /// Background color of the node
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    let exportSettings: [ExportSettingElement]?
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]?
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]?
    /// Opacity of the node
    let opacity: Double?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle?
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint?
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool?
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool?
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
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
    /// Style of text including font family and weight (see type style section for more
    /// information)
    let style: NodeTypeStyle?
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [String: NodeTypeStyle]?
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case id, name, visible, type, children, backgroundColor, exportSettings, effects, layoutGrids, opacity, absoluteBoundingBox, transitionNodeID, blendMode, constraints, isMask, clipsContent, preserveRatio, strokeAlign, strokeWeight, fills, strokes, cornerRadius, characters, style, characterStyleOverrides, styleOverrideTable
        case componentID = "componentId"
    }
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
struct TextNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// Opacity of the node
    let opacity: Double
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign
    /// The weight of strokes on the node
    let strokeWeight: Double
    /// An array of fill paints applied to the node
    let fills: [PaintElement]
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
    /// Text contained within text box
    let characters: String
    /// Style of text including font family and weight (see type style section for more
    /// information)
    let style: NodeTypeStyle
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [String: NodeTypeStyle]
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
struct FrameNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]
    /// Opacity of the node
    let opacity: Double
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// Background color of the node
    let backgroundColor: EffectColor
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    let children: [FrameNodeNode]
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
struct FrameNodeNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    let children: [NodeNode]?
    /// Background color of the canvas
    ///
    /// Background color of the node
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    let exportSettings: [ExportSettingElement]?
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]?
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]?
    /// Opacity of the node
    let opacity: Double?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle?
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint?
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool?
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool?
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
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
    /// Style of text including font family and weight (see type style section for more
    /// information)
    let style: NodeTypeStyle?
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [String: NodeTypeStyle]?
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case id, name, visible, type, children, backgroundColor, exportSettings, effects, layoutGrids, opacity, absoluteBoundingBox, transitionNodeID, blendMode, constraints, isMask, clipsContent, preserveRatio, strokeAlign, strokeWeight, fills, strokes, cornerRadius, characters, style, characterStyleOverrides, styleOverrideTable
        case componentID = "componentId"
    }
}

/// A rectangle that expresses a bounding box in absolute coordinates
struct Rectangle: Codable {
    /// X coordinate of top left corner of the rectangle
    let x: Double
    /// Y coordinate of top left corner of the rectangle
    let y: Double
    /// Width of the rectangle
    let width: Double
    /// Height of the rectangle
    let height: Double
}

/// Guides to align and place objects within a frame
struct LayoutGrid: Codable {
    /// * COLUMNS: Vertical grid
    /// * ROWS: Horizontal grid
    /// * GRID: Square grid
    let pattern: Pattern
    /// Width of column grid or height of row grid or square grid spacing
    let sectionSize: Double
    /// Is the grid currently visible?
    let visible: Bool
    /// Color of the grid
    let color: EffectColor
    /// Positioning of grid as a string enum
    ///
    /// * MIN: Grid starts at the left or top of the frame
    /// * MAX: Grid starts at the right or bottom of the frame
    /// * CENTER: Grid is center aligned
    let alignment: Alignment
    /// Spacing in between columns and rows
    let gutterSize: Double
    /// Spacing before the first column or row
    let offset: Double
    /// Number of columns or rows
    let count: Double
}

/// A visual effect such as a shadow or blur
struct Effect: Codable {
    /// Type of effect as a string enum
    let type: EffectType
    /// See type property for effect of this field
    let radius: Double
    /// See type property for effect of this field
    let visible: Bool
    /// See type property for effect of this field
    let color: EffectColor
    /// See type property for effect of this field
    let blendMode: BlendMode
    /// See type property for effect of this field
    let offset: EffectVector
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
struct RectangleNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// Opacity of the node
    let opacity: Double
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign
    /// The weight of strokes on the node
    let strokeWeight: Double
    /// An array of fill paints applied to the node
    let fills: [PaintElement]
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
    /// Radius of each corner of the rectangle
    let cornerRadius: Double
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
struct SliceNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// A rectangular region of the canvas that can be exported
    let exportSettings: [ExportSettingElement]
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
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
struct StarNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// Opacity of the node
    let opacity: Double
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign
    /// The weight of strokes on the node
    let strokeWeight: Double
    /// An array of fill paints applied to the node
    let fills: [PaintElement]
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
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
struct LineNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// Opacity of the node
    let opacity: Double
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign
    /// The weight of strokes on the node
    let strokeWeight: Double
    /// An array of fill paints applied to the node
    let fills: [PaintElement]
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// An array of stroke paints applied to the node
    let strokes: [PaintElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
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
struct InstanceNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]
    /// Opacity of the node
    let opacity: Double
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// Background color of the node
    let backgroundColor: EffectColor
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    let children: [PurpleNode]
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    let componentID: String

    enum CodingKeys: String, CodingKey {
        case id, name, visible, type, effects, layoutGrids, opacity, absoluteBoundingBox, transitionNodeID, blendMode, backgroundColor, constraints, isMask, clipsContent, exportSettings, preserveRatio, children
        case componentID = "componentId"
    }
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
struct CanvasNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of top level layers on the canvas
    let children: [TentacledNode]
    /// Background color of the canvas
    let backgroundColor: EffectColor
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSettingElement]
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
struct TentacledNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    let children: [NodeNode]?
    /// Background color of the canvas
    ///
    /// Background color of the node
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    let exportSettings: [ExportSettingElement]?
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]?
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]?
    /// Opacity of the node
    let opacity: Double?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle?
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint?
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool?
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool?
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
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
    /// Style of text including font family and weight (see type style section for more
    /// information)
    let style: NodeTypeStyle?
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [String: NodeTypeStyle]?
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case id, name, visible, type, children, backgroundColor, exportSettings, effects, layoutGrids, opacity, absoluteBoundingBox, transitionNodeID, blendMode, constraints, isMask, clipsContent, preserveRatio, strokeAlign, strokeWeight, fills, strokes, cornerRadius, characters, style, characterStyleOverrides, styleOverrideTable
        case componentID = "componentId"
    }
}

/// Format and size to export an asset at
struct ExportSetting: Codable {
    /// File suffix to append to all filenames
    let suffix: String
    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    let format: Format
    /// Constraint that determines sizing of exported asset
    let constraint: ExportSettingConstraint
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
struct DocumentNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of canvases attached to the document
    let children: [StickyNode]
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
struct StickyNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of canvases attached to the document
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    let children: [NodeNode]?
    /// Background color of the canvas
    ///
    /// Background color of the node
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    let exportSettings: [ExportSettingElement]?
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]?
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]?
    /// Opacity of the node
    let opacity: Double?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle?
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint?
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool?
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool?
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
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
    /// Style of text including font family and weight (see type style section for more
    /// information)
    let style: NodeTypeStyle?
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [String: NodeTypeStyle]?
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case id, name, visible, type, children, backgroundColor, exportSettings, effects, layoutGrids, opacity, absoluteBoundingBox, transitionNodeID, blendMode, constraints, isMask, clipsContent, preserveRatio, strokeAlign, strokeWeight, fills, strokes, cornerRadius, characters, style, characterStyleOverrides, styleOverrideTable
        case componentID = "componentId"
    }
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

/// A solid color, gradient, or image texture that can be applied as fills or strokes
struct Paint: Codable {
    /// Type of paint as a string enum
    let type: PaintType
    /// Is the paint enabled?
    let visible: Bool
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    let opacity: Double
    /// (For solid paints) Solid color of the paint
    let color: EffectColor?
    /// (For gradient paints) This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left corner of the
    /// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
    /// corresponds to the start of the gradient (value 0 for the purposes of calculating
    /// gradient stops), the second position is the end of the gradient (value 1), and the third
    /// handle position determines the width of the gradient (only relevant for non-linear
    /// gradients).
    let gradientHandlePositions: [EffectVector]?
    /// (For gradient paints) Positions of key points along the gradient axis with the colors
    /// anchored there. Colors along the gradient are interpolated smoothly between neighboring
    /// gradient stops.
    let gradientStops: [ColorStopElement]?
    /// (For image paints) Image scaling mode
    let scaleMode: ScaleMode?
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
struct ComponentNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [EffectElement]
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGridElement]
    /// Opacity of the node
    let opacity: Double
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: RegularPolygonNodeRectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// Background color of the node
    let backgroundColor: EffectColor
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: RegularPolygonNodeLayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSettingElement]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    let children: [PurpleNode]
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

extension RegularPolygonNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(RegularPolygonNode.self, from: data)
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

extension RegularPolygonNodeRectangle {
    init(data: Data) throws {
        self = try JSONDecoder().decode(RegularPolygonNodeRectangle.self, from: data)
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

extension RegularPolygonNodeLayoutConstraint {
    init(data: Data) throws {
        self = try JSONDecoder().decode(RegularPolygonNodeLayoutConstraint.self, from: data)
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

extension EffectColor {
    init(data: Data) throws {
        self = try JSONDecoder().decode(EffectColor.self, from: data)
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

extension EffectVector {
    init(data: Data) throws {
        self = try JSONDecoder().decode(EffectVector.self, from: data)
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

extension EllipseNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(EllipseNode.self, from: data)
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

extension GroupNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(GroupNode.self, from: data)
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

extension NodeTypeStyle {
    init(data: Data) throws {
        self = try JSONDecoder().decode(NodeTypeStyle.self, from: data)
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

extension VectorNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(VectorNode.self, from: data)
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

extension BooleanNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(BooleanNode.self, from: data)
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

extension TextNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(TextNode.self, from: data)
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

extension FrameNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(FrameNode.self, from: data)
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

extension FrameNodeNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(FrameNodeNode.self, from: data)
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

extension RectangleNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(RectangleNode.self, from: data)
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

extension SliceNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(SliceNode.self, from: data)
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

extension StarNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(StarNode.self, from: data)
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

extension LineNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LineNode.self, from: data)
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

extension InstanceNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(InstanceNode.self, from: data)
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

extension CanvasNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(CanvasNode.self, from: data)
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

extension TentacledNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(TentacledNode.self, from: data)
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

extension DocumentNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(DocumentNode.self, from: data)
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

extension StickyNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(StickyNode.self, from: data)
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

extension ComponentNode {
    init(data: Data) throws {
        self = try JSONDecoder().decode(ComponentNode.self, from: data)
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
