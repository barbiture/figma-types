import Foundation

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct RegularPolygonNode {
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
struct RegularPolygonNodeRectangle {
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
enum BlendMode {
    case color
    case colorBurn
    case colorDodge
    case darken
    case difference
    case exclusion
    case hardLight
    case hue
    case lighten
    case linearBurn
    case linearDodge
    case luminosity
    case multiply
    case normal
    case overlay
    case passThrough
    case saturation
    case screen
    case softLight
}

/// Layout constraint relative to containing Frame
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
struct RegularPolygonNodeLayoutConstraint {
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
enum Horizontal {
    case center
    case horizontalLEFT
    case horizontalRIGHT
    case leftRight
    case scale
}

/// * TOP: Node is laid out relative to top of the containing frame
/// * BOTTOM: Node is laid out relative to bottom of the containing frame
/// * CENTER: Node is vertically centered relative to containing frame
/// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// * SCALE: Node scales vertically with containing frame
enum Vertical {
    case bottom
    case center
    case scale
    case top
    case topBottom
}

/// A visual effect such as a shadow or blur
///
/// An array of effects attached to this node (see effects section for more details)
struct EffectElement {
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
struct EffectColor {
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
struct EffectVector {
    /// X coordinate of the vector
    let x: Double
    /// Y coordinate of the vector
    let y: Double
}

/// Type of effect as a string enum
enum EffectType {
    case backgroundBlur
    case dropShadow
    case innerShadow
    case layerBlur
}

/// Format and size to export an asset at
///
/// An array of export settings representing images to export from node
///
/// An array of export settings representing images to export from the canvas
struct ExportSettingElement {
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
struct ExportSettingConstraint {
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
enum ConstraintType {
    case height
    case scale
    case width
}

/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
enum Format {
    case jpg
    case png
    case svg
}

/// A solid color, gradient, or image texture that can be applied as fills or strokes
///
/// An array of fill paints applied to the node
///
/// An array of stroke paints applied to the node
struct PaintElement {
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
struct ColorStopElement {
    /// Color attached to corresponding position
    let color: EffectColor
    /// Value between 0 and 1 representing position along gradient axis
    let position: Double
}

/// (For image paints) Image scaling mode
enum ScaleMode {
    case fill
    case fit
    case stretch
    case tile
}

/// Type of paint as a string enum
enum PaintType {
    case emoji
    case gradientAngular
    case gradientDiamond
    case gradientLinear
    case gradientRadial
    case image
    case solid
}

/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
enum StrokeAlign {
    case center
    case inside
    case outside
}

/// The type of the node
enum RegularPolygonNodeType {
    case boolean
    case canvas
    case component
    case document
    case ellipse
    case frame
    case group
    case instance
    case line
    case rectangle
    case regularPolygon
    case slice
    case star
    case text
    case vector
}

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct EllipseNode {
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

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct GroupNode {
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
    let children: [GroupNodeNode]
}

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct GroupNodeNode {
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
    let children: [NodeNode]
    /// Background color of the canvas
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSettingElement]?
}

/// An array of canvases attached to the document
///
/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
///
/// An array of top level layers on the canvas
struct NodeNode {
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
    let children: [NodeNode]
    /// Background color of the canvas
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSettingElement]?
}

/// Guides to align and place objects within a frame
///
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
struct LayoutGridElement {
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
enum Alignment {
    case center
    case max
    case min
}

/// * COLUMNS: Vertical grid
/// * ROWS: Horizontal grid
/// * GRID: Square grid
enum Pattern {
    case columns
    case grid
    case rows
}

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct Node {
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
    let children: [NodeNode]
    /// Background color of the canvas
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSettingElement]?
}

/// A 2d vector
struct Vector {
    /// X coordinate of the vector
    let x: Double
    /// Y coordinate of the vector
    let y: Double
}

/// An RGBA color
struct Color {
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
struct Global {
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
struct ColorStop {
    /// Color attached to corresponding position
    let color: EffectColor
    /// Value between 0 and 1 representing position along gradient axis
    let position: Double
}

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct VectorNode {
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
struct LayoutConstraint {
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

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct BooleanNode {
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
    let children: [BooleanNodeNode]
}

/// An array of nodes that are being boolean operated on
///
/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct BooleanNodeNode {
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
    let children: [NodeNode]
    /// Background color of the canvas
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSettingElement]?
}

/// A description of a user
struct User {
    let handle, imgURL: String
}

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct FrameNode {
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct PurpleNode {
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
    let children: [NodeNode]
    /// Background color of the canvas
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSettingElement]?
}

/// A rectangle that expresses a bounding box in absolute coordinates
struct Rectangle {
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
struct LayoutGrid {
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
struct Effect {
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

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct StarNode {
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

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct LineNode {
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

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct CanvasNode {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of top level layers on the canvas
    let children: [FluffyNode]
    /// Background color of the canvas
    let backgroundColor: EffectColor
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSettingElement]
}

/// An array of top level layers on the canvas
///
/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct FluffyNode {
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
    let children: [NodeNode]
    /// Background color of the canvas
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSettingElement]?
}

/// Format and size to export an asset at
struct ExportSetting {
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

/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct DocumentNode {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: RegularPolygonNodeType
    /// An array of canvases attached to the document
    let children: [TentacledNode]
}

/// An array of canvases attached to the document
///
/// An array of nodes that are direct children of this node
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
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
struct TentacledNode {
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
    let children: [NodeNode]
    /// Background color of the canvas
    let backgroundColor: EffectColor?
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSettingElement]?
}

/// Sizing constraint for exports
struct Constraint {
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
struct Paint {
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

/// A comment or reply left by a user
struct Comment {
    /// Unique identifier for comment
    let id: String
    /// The file in which the comment lives
    let fileKey: String
    /// If present, the id of the comment to which this is the reply
    let parentID: String?
    /// The user who left the comment
    let user: CommentUser
}

/// A description of a user
///
/// The user who left the comment
struct CommentUser {
    let handle, imgURL: String
}
