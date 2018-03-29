// To parse the JSON, add this file to your project and do:
//
//   let fileResponse = try FileResponse(json)

import Foundation

/// GET /v1/files/:key
///
/// Returns the document refered to by :key as a JSON object. The file key can be parsed from
/// any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
/// contains a Node of type DOCUMENT.
struct FileResponse: Codable {
    /// The root node within the document
    let document: Document
    /// A mapping from node IDs to component metadata. This is to help you determine which
    /// components each instance comes from. Currently the only piece of metadata available on
    /// components is the name of the component, but more properties will be forthcoming.
    let components: [String: Component]
    let schemaVersion: Double
}

/// A mapping from node IDs to component metadata. This is to help you determine which
/// components each instance comes from. Currently the only piece of metadata available on
/// components is the name of the component, but more properties will be forthcoming.
///
/// A node that can have instances created of it that share the same properties
///
/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
///
/// The root node within the document
///
/// A rectangular region of the canvas that can be exported
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
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Opacity of the node
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
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
/// Is the grid currently visible?
///
/// Does this node mask sibling nodes in front of it?
///
/// Does this node clip content outside of its bounds?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the paint enabled?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// File suffix to append to all filenames
///
/// Node ID of node to transition to in prototyping
///
/// A group that has a boolean operation applied to it
///
/// A text box
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
struct Component: Codable {
    /// A string uniquely identifying this node within the document
    let id: String
    /// The name given to the node by the user in the tool
    let name: String
    /// Whether or not the node is visible on the canvas
    let visible: Bool
    /// The type of the node
    let type: NodeType
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [Effect]
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGrid]
    /// Opacity of the node
    let opacity: Double
    /// Node ID of node to transition to in prototyping
    let transitionID: String?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: Rectangle
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode
    /// Background color of the node
    let backgroundColor: Color
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: LayoutConstraint
    /// Does this node mask sibling nodes in front of it?
    let isMask: Bool
    /// Does this node clip content outside of its bounds?
    let clipsContent: Bool
    /// An array of export settings representing images to export from node
    let exportSettings: [ExportSetting]
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    let children: [PurpleNode]
}

/// A rectangle that expresses a bounding box in absolute coordinates
///
/// Bounding box of the node in absolute space coordinates
///
/// An array of canvases attached to the document
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

/// An RGBA color
///
/// Background color of the canvas
///
/// See type property for effect of this field
///
/// Color of the grid
///
/// Background color of the node
///
/// (For solid paints) Solid color of the paint
///
/// Color attached to corresponding position
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

/// An array of nodes that are direct children of this node
///
/// An array of canvases attached to the document
///
/// The root node within the document
///
/// Properties are shared across all nodes
///
/// A rectangular region of the canvas that can be exported
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
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Opacity of the node
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
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
/// Is the grid currently visible?
///
/// Does this node mask sibling nodes in front of it?
///
/// Does this node clip content outside of its bounds?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the paint enabled?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// File suffix to append to all filenames
///
/// Node ID of node to transition to in prototyping
///
/// A group that has a boolean operation applied to it
///
/// A text box
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// A logical grouping of nodes
///
/// A regular star shape
///
/// A straight line
///
/// An ellipse
///
/// A regular n-sided polygon
///
/// A rectangle that expresses a bounding box in absolute coordinates
///
/// Bounding box of the node in absolute space coordinates
///
/// A node that can have instances created of it that share the same properties
struct PurpleNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String?
    /// The name given to the node by the user in the tool
    let name: String?
    /// Whether or not the node is visible on the canvas
    let visible: Bool?
    /// The type of the node
    let type: NodeType?
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
    let backgroundColor: Color?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    let exportSettings: [ExportSetting]?
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [Effect]?
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGrid]?
    /// Opacity of the node
    let opacity: Double?
    /// Node ID of node to transition to in prototyping
    let transitionID: String?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: Rectangle?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: LayoutConstraint?
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
    let fills: [Paint]?
    /// An array of stroke paints applied to the node
    let strokes: [Paint]?
    /// X coordinate of top left corner of the rectangle
    let x: Double?
    /// Y coordinate of top left corner of the rectangle
    let y: Double?
    /// Width of the rectangle
    let width: Double?
    /// Height of the rectangle
    let height: Double?
    /// Text contained within text box
    let characters: String?
    /// Style of text including font family and weight (see type style section for more
    /// information)
    let style: TypeStyle?
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [String: TypeStyle]?
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case id, name, visible, type, children, backgroundColor, exportSettings, effects, layoutGrids, opacity, transitionID, absoluteBoundingBox, blendMode, constraints, isMask, clipsContent, preserveRatio, strokeAlign, strokeWeight, fills, strokes, x, y, width, height, characters, style, characterStyleOverrides, styleOverrideTable
        case componentID = "componentId"
    }
}

/// An array of canvases attached to the document
///
/// The root node within the document
///
/// Properties are shared across all nodes
///
/// A rectangular region of the canvas that can be exported
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
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Opacity of the node
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
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
/// Is the grid currently visible?
///
/// Does this node mask sibling nodes in front of it?
///
/// Does this node clip content outside of its bounds?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the paint enabled?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// File suffix to append to all filenames
///
/// Node ID of node to transition to in prototyping
///
/// A group that has a boolean operation applied to it
///
/// A text box
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// A logical grouping of nodes
///
/// A regular star shape
///
/// A straight line
///
/// An ellipse
///
/// A regular n-sided polygon
///
/// A rectangle that expresses a bounding box in absolute coordinates
///
/// Bounding box of the node in absolute space coordinates
///
/// A node that can have instances created of it that share the same properties
///
/// An array of top level layers on the canvas
///
/// An array of nodes that are direct children of this node
///
/// An array of nodes that are being boolean operated on
struct NodeNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String?
    /// The name given to the node by the user in the tool
    let name: String?
    /// Whether or not the node is visible on the canvas
    let visible: Bool?
    /// The type of the node
    let type: NodeType?
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
    let backgroundColor: Color?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    let exportSettings: [ExportSetting]?
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [Effect]?
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGrid]?
    /// Opacity of the node
    let opacity: Double?
    /// Node ID of node to transition to in prototyping
    let transitionID: String?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: Rectangle?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: LayoutConstraint?
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
    let fills: [Paint]?
    /// An array of stroke paints applied to the node
    let strokes: [Paint]?
    /// X coordinate of top left corner of the rectangle
    let x: Double?
    /// Y coordinate of top left corner of the rectangle
    let y: Double?
    /// Width of the rectangle
    let width: Double?
    /// Height of the rectangle
    let height: Double?
    /// Text contained within text box
    let characters: String?
    /// Style of text including font family and weight (see type style section for more
    /// information)
    let style: TypeStyle?
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [String: TypeStyle]?
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case id, name, visible, type, children, backgroundColor, exportSettings, effects, layoutGrids, opacity, transitionID, absoluteBoundingBox, blendMode, constraints, isMask, clipsContent, preserveRatio, strokeAlign, strokeWeight, fills, strokes, x, y, width, height, characters, style, characterStyleOverrides, styleOverrideTable
        case componentID = "componentId"
    }
}

/// Layout constraint relative to containing Frame
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
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
struct Effect: Codable {
    /// Type of effect as a string enum
    let type: EffectType
    /// See type property for effect of this field
    let radius: Double
    /// See type property for effect of this field
    let visible: Bool
    /// See type property for effect of this field
    let color: Color
    /// See type property for effect of this field
    let blendMode: BlendMode
    /// See type property for effect of this field
    let offset: Vector2D
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
struct Vector2D: Codable {
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
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
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
    let constraint: Constraint
}

/// Sizing constraint for exports
///
/// Constraint that determines sizing of exported asset
struct Constraint: Codable {
    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    let type: ConstraintType
    /// See type property for effect of this field
    let value: Double
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
struct Paint: Codable {
    /// Type of paint as a string enum
    let type: PaintType
    /// Is the paint enabled?
    let visible: Bool
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    let opacity: Double
    /// (For solid paints) Solid color of the paint
    let color: Color?
    /// (For gradient paints) This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left corner of the
    /// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
    /// corresponds to the start of the gradient (value 0 for the purposes of calculating
    /// gradient stops), the second position is the end of the gradient (value 1), and the third
    /// handle position determines the width of the gradient (only relevant for non-linear
    /// gradients).
    let gradientHandlePositions: [Vector2D]?
    /// (For gradient paints) Positions of key points along the gradient axis with the colors
    /// anchored there. Colors along the gradient are interpolated smoothly between neighboring
    /// gradient stops.
    let gradientStops: [ColorStop]?
    /// (For image paints) Image scaling mode
    let scaleMode: ScaleMode?
}

/// A position color pair representing a gradient stop
///
/// (For gradient paints) Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly between neighboring
/// gradient stops.
struct ColorStop: Codable {
    /// Color attached to corresponding position
    let color: Color
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

/// Guides to align and place objects within a frame
///
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
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
    let color: Color
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

/// Metadata for character formatting
///
/// Style of text including font family and weight (see type style section for more
/// information)
///
/// Map from ID to TypeStyle for looking up style overrides
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

/// The root node within the document
///
/// Properties are shared across all nodes
///
/// An array of canvases attached to the document
///
/// A rectangular region of the canvas that can be exported
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
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Opacity of the node
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
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
/// Is the grid currently visible?
///
/// Does this node mask sibling nodes in front of it?
///
/// Does this node clip content outside of its bounds?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the paint enabled?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// File suffix to append to all filenames
///
/// Node ID of node to transition to in prototyping
///
/// A group that has a boolean operation applied to it
///
/// A text box
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
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
    let children: [FluffyNode]
}

/// An array of canvases attached to the document
///
/// The root node within the document
///
/// Properties are shared across all nodes
///
/// A rectangular region of the canvas that can be exported
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
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Opacity of the node
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
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
/// Is the grid currently visible?
///
/// Does this node mask sibling nodes in front of it?
///
/// Does this node clip content outside of its bounds?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the paint enabled?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// File suffix to append to all filenames
///
/// Node ID of node to transition to in prototyping
///
/// A group that has a boolean operation applied to it
///
/// A text box
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// A logical grouping of nodes
///
/// A regular star shape
///
/// A straight line
///
/// An ellipse
///
/// A regular n-sided polygon
///
/// A rectangle that expresses a bounding box in absolute coordinates
///
/// Bounding box of the node in absolute space coordinates
///
/// A node that can have instances created of it that share the same properties
struct FluffyNode: Codable {
    /// A string uniquely identifying this node within the document
    let id: String?
    /// The name given to the node by the user in the tool
    let name: String?
    /// Whether or not the node is visible on the canvas
    let visible: Bool?
    /// The type of the node
    let type: NodeType?
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
    let backgroundColor: Color?
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from node
    ///
    /// A rectangular region of the canvas that can be exported
    let exportSettings: [ExportSetting]?
    /// An array of effects attached to this node (see effects section for more details)
    let effects: [Effect]?
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGrid]?
    /// Opacity of the node
    let opacity: Double?
    /// Node ID of node to transition to in prototyping
    let transitionID: String?
    /// Bounding box of the node in absolute space coordinates
    let absoluteBoundingBox: Rectangle?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let blendMode: BlendMode?
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    let constraints: LayoutConstraint?
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
    let fills: [Paint]?
    /// An array of stroke paints applied to the node
    let strokes: [Paint]?
    /// X coordinate of top left corner of the rectangle
    let x: Double?
    /// Y coordinate of top left corner of the rectangle
    let y: Double?
    /// Width of the rectangle
    let width: Double?
    /// Height of the rectangle
    let height: Double?
    /// Text contained within text box
    let characters: String?
    /// Style of text including font family and weight (see type style section for more
    /// information)
    let style: TypeStyle?
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [String: TypeStyle]?
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    let componentID: String?

    enum CodingKeys: String, CodingKey {
        case id, name, visible, type, children, backgroundColor, exportSettings, effects, layoutGrids, opacity, transitionID, absoluteBoundingBox, blendMode, constraints, isMask, clipsContent, preserveRatio, strokeAlign, strokeWeight, fills, strokes, x, y, width, height, characters, style, characterStyleOverrides, styleOverrideTable
        case componentID = "componentId"
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
