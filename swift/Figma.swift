// To parse the JSON, add this file to your project and do:
//
//   let fileResponse = try FileResponse(json)
//   let commentsResponse = try CommentsResponse(json)
//   let commentRequest = try CommentRequest(json)
//   let projectsResponse = try ProjectsResponse(json)
//   let projectFilesResponse = try ProjectFilesResponse(json)

import Foundation

struct FileResponse: Codable {
    /// Node Properties
    /// The root node
    /// The root node within the document
    let document: Document
    /// A mapping from node IDs to component metadata. This is to help you determine which
    /// components each instance comes from. Currently the only piece of metadata available on
    /// components is the name of the component, but more properties will be forthcoming.
    let components: [String: Component]
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
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
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let opacity: Double
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let name: String
    /// Bounding box of the node in absolute space coordinates
    /// A rectangle
    let absoluteBoundingBox: Rectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let visible: Bool
    /// Enum describing how layer blends with layers below
    /// This type is a string enum with the following possible values
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    let blendMode: BlendMode
    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
    let backgroundColor: Color
    /// Horizontal and vertical layout constraints for node
    /// Layout constraint relative to containing Frame
    let constraints: LayoutConstraint
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let isMask: Bool
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let clipsContent: Bool
    /// An array of export settings representing images to export from node
    /// An array of export settings representing images to export from this node
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSetting]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let id: String
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let preserveRatio: Bool
    /// An array of nodes that are direct children of this node
    /// An array of nodes that are being boolean operated on
    /// An array of top level layers on the canvas
    /// An array of canvases attached to the document
    let children: [Node]
}

/// Bounding box of the node in absolute space coordinates
/// A rectangle
class Rectangle: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [Effect]
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let cornerRadius: Double
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let opacity: Double
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let name: String
    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let strokeWeight: Double
    /// An array of fill paints applied to the node
    /// An array of stroke paints applied to the node
    /// Paints applied to characters
    let fills: [Paint]
    /// Bounding box of the node in absolute space coordinates
    /// A rectangle
    let absoluteBoundingBox: Rectangle
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let visible: Bool
    /// Enum describing how layer blends with layers below
    /// This type is a string enum with the following possible values
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    let blendMode: BlendMode
    /// Horizontal and vertical layout constraints for node
    /// Layout constraint relative to containing Frame
    let constraints: LayoutConstraint
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let isMask: Bool
    /// An array of export settings representing images to export from node
    /// An array of export settings representing images to export from this node
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSetting]
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let id: String
    /// An array of fill paints applied to the node
    /// An array of stroke paints applied to the node
    /// Paints applied to characters
    let strokes: [Paint]
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let preserveRatio: Bool

    init(effects: [Effect], cornerRadius: Double, opacity: Double, name: String, strokeAlign: StrokeAlign, strokeWeight: Double, fills: [Paint], absoluteBoundingBox: Rectangle, transitionNodeID: String?, visible: Bool, blendMode: BlendMode, constraints: LayoutConstraint, isMask: Bool, exportSettings: [ExportSetting], type: NodeType, id: String, strokes: [Paint], preserveRatio: Bool) {
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

/// Enum describing how layer blends with layers below
/// This type is a string enum with the following possible values
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
/// Layout constraint relative to containing Frame
struct LayoutConstraint: Codable {
    /// Vertical constraint as an enum
    /// "TOP": Node is laid out relative to top of the containing frame
    /// "BOTTOM": Node is laid out relative to bottom of the containing frame
    /// "CENTER": Node is vertically centered relative to containing frame
    /// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// "SCALE": Node scales vertically with containing frame
    let vertical: Vertical
    /// Horizontal constraint as an enum
    /// "LEFT": Node is laid out relative to left of the containing frame
    /// "RIGHT": Node is laid out relative to right of the containing frame
    /// "CENTER": Node is horizontally centered relative to containing frame
    /// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// "SCALE": Node scales horizontally with containing frame
    let horizontal: Horizontal
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
/// A visual effect such as a shadow or blur
struct Effect: Codable {
    /// Type of effect as a string enum
    let type: EffectType
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let visible: Bool
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let radius: Double
    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
    let color: Color?
    /// Enum describing how layer blends with layers below
    /// This type is a string enum with the following possible values
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    let blendMode: BlendMode?
    /// 2d vector offset within the frame.
    /// A 2d vector
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    let offset: Vector2?
}

/// Background color of the node
/// An RGBA color
/// Solid color of the paint
/// Color attached to corresponding position
/// Color of the grid
/// Background color of the canvas
struct Color: Codable {
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let r: Double
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let g: Double
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let b: Double
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let a: Double
}

/// 2d vector offset within the frame.
/// A 2d vector
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
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let x: Double
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
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
/// Format and size to export an asset at
/// An array of export settings representing images to export from the canvas
/// An array of export settings representing images to export from this node
struct ExportSetting: Codable {
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let suffix: String
    /// Image type, string enum
    let format: Format
    /// Constraint that determines sizing of exported asset
    /// Sizing constraint for exports
    let constraint: Constraint
}

/// Constraint that determines sizing of exported asset
/// Sizing constraint for exports
struct Constraint: Codable {
    /// Type of constraint to apply; string enum with potential values below
    /// "SCALE": Scale by value
    /// "WIDTH": Scale proportionally and set width to value
    /// "HEIGHT": Scale proportionally and set height to value
    let type: ConstraintType
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
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
/// A solid color, gradient, or image texture that can be applied as fills or strokes
/// An array of stroke paints applied to the node
/// Paints applied to characters
struct Paint: Codable {
    /// Type of paint as a string enum
    let type: PaintType
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let visible: Bool
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let opacity: Double
    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
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
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let scaleMode: String?
}

/// Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly
/// between neighboring gradient stops.
/// A position color pair representing a gradient stop
struct ColorStop: Codable {
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let position: Double
    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
    let color: Color
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
/// An array of nodes that are being boolean operated on
/// An array of top level layers on the canvas
/// An array of canvases attached to the document
/// Node Properties
/// The root node
/// The root node within the document
/// Represents a single page
/// A node of fixed size containing other nodes
/// A logical grouping of nodes
/// A vector network, consisting of vertices and edges
/// A group that has a boolean operation applied to it
/// A regular star shape
/// A straight line
/// An ellipse
/// A regular n-sided polygon
/// Bounding box of the node in absolute space coordinates
/// A rectangle
/// A text box
/// A rectangular region of the canvas that can be exported
/// A node that can have instances created of it that share the same properties
/// An instance of a component, changes to the component result in the same
/// changes applied to the instance
struct Node: Codable {
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    let effects: [Effect]?
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    let layoutGrids: [LayoutGrid]?
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let cornerRadius: Double?
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let characters: String?
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let opacity: Double?
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let name: String
    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    let strokeAlign: StrokeAlign?
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let strokeWeight: Double?
    /// An array of fill paints applied to the node
    /// An array of stroke paints applied to the node
    /// Paints applied to characters
    let fills: [Paint]?
    /// Bounding box of the node in absolute space coordinates
    /// A rectangle
    let absoluteBoundingBox: Rectangle?
    /// Map from ID to TypeStyle for looking up style overrides
    let styleOverrideTable: [TypeStyle]?
    /// Map from ID to TypeStyle for looking up style overrides
    /// Metadata for character formatting
    /// Style of text including font family and weight (see type style
    /// section for more information)
    let style: TypeStyle?
    /// Node ID of node to transition to in prototyping
    let transitionNodeID: String?
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let visible: Bool
    /// Enum describing how layer blends with layers below
    /// This type is a string enum with the following possible values
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    let blendMode: BlendMode?
    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
    let backgroundColor: Color?
    /// Horizontal and vertical layout constraints for node
    /// Layout constraint relative to containing Frame
    let constraints: LayoutConstraint?
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let isMask: Bool?
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let clipsContent: Bool?
    /// An array of export settings representing images to export from node
    /// An array of export settings representing images to export from this node
    /// An array of export settings representing images to export from the canvas
    let exportSettings: [ExportSetting]?
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let componentID: String?
    /// the type of the node, refer to table below for details
    let type: NodeType
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let id: String
    /// An array of fill paints applied to the node
    /// An array of stroke paints applied to the node
    /// Paints applied to characters
    let strokes: [Paint]?
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let preserveRatio: Bool?
    /// An array of nodes that are direct children of this node
    /// An array of nodes that are being boolean operated on
    /// An array of top level layers on the canvas
    /// An array of canvases attached to the document
    let children: [Node]?
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    let characterStyleOverrides: [Double]?

    enum CodingKeys: String, CodingKey {
        case effects, layoutGrids, cornerRadius, characters, opacity, name, strokeAlign, strokeWeight, fills, absoluteBoundingBox, styleOverrideTable, style, transitionNodeID, visible, blendMode, backgroundColor, constraints, isMask, clipsContent, exportSettings
        case componentID = "componentId"
        case type, id, strokes, preserveRatio, children, characterStyleOverrides
    }
}

/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
/// Guides to align and place objects within a frame
struct LayoutGrid: Codable {
    /// Orientation of the grid as a string enum
    /// "COLUMNS": Vertical grid
    /// "ROWS": Horizontal grid
    /// "GRID": Square grid
    let pattern: Pattern
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let sectionSize: Double
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let visible: Bool
    /// Background color of the node
    /// An RGBA color
    /// Solid color of the paint
    /// Color attached to corresponding position
    /// Color of the grid
    /// Background color of the canvas
    let color: Color
    /// Positioning of grid as a string enum
    /// "MIN": Grid starts at the left or top of the frame
    /// "MAX": Grid starts at the right or bottom of the frame
    /// "CENTER": Grid is center aligned
    let alignment: Alignment
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let gutterSize: Double
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let offset: Double
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let count: Double
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
/// Metadata for character formatting
/// Style of text including font family and weight (see type style
/// section for more information)
struct TypeStyle: Codable {
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let lineHeightPx: Double
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let fontPostScriptName: String
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let fontWeight: Double
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let lineHeightPercent: Double
    /// Vertical text alignment as string enum
    let textAlignVertical: TextAlignVertical
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let fontSize: Double
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let italic: Bool
    /// An array of fill paints applied to the node
    /// An array of stroke paints applied to the node
    /// Paints applied to characters
    let fills: [Paint]
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let fontFamily: String
    /// Horizontal text alignment as string enum
    let textAlignHorizontal: TextAlignHorizontal
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
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
/// The root node within the document
struct Document: Codable {
    /// An array of nodes that are direct children of this node
    /// An array of nodes that are being boolean operated on
    /// An array of top level layers on the canvas
    /// An array of canvases attached to the document
    let children: [Node]
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let id: String
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let name: String
    /// Is the effect active?
    /// Is the grid currently visible?
    /// Is the paint enabled?
    /// whether or not the node is visible on the canvas
    /// Does this node mask sibling nodes in front of it?
    /// Keep height and width constrained to same ratio
    /// Does this node clip content outside of its bounds?
    /// Is text italicized?
    let visible: Bool
    /// the type of the node, refer to table below for details
    let type: NodeType
}

struct CommentsResponse: Codable {
    let comments: [Comment]
}

/// A comment or reply left by a user
struct Comment: Codable {
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let message: String
    /// Enables basic storage and retrieval of dates and times.
    let createdAt: String
    /// A description of a user
    /// The user who left the comment
    let user: User
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let orderID: Double
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let parentID: String
    /// 2d vector offset within the frame.
    /// A 2d vector
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    /// A relative offset within a frame
    let clientMeta: ClientMeta
    /// If set, when the comment was resolved
    let resolvedAt: String?
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let id: String
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
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

/// 2d vector offset within the frame.
/// A 2d vector
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
/// A relative offset within a frame
struct ClientMeta: Codable {
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let x: Double?
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let y: Double?
    /// Unique id specifying the frame.
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    let nodeID: [String]?
    /// 2d vector offset within the frame.
    /// A 2d vector
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    let nodeOffset: Vector2?

    enum CodingKeys: String, CodingKey {
        case x, y
        case nodeID = "node_id"
        case nodeOffset = "node_offset"
    }
}

/// A description of a user
/// The user who left the comment
struct User: Codable {
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let handle: String
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let imgURL: String

    enum CodingKeys: String, CodingKey {
        case handle
        case imgURL = "img_url"
    }
}

struct CommentRequest: Codable {
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let message: String
    /// 2d vector offset within the frame.
    /// A 2d vector
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    /// A relative offset within a frame
    let clientMeta: ClientMeta

    enum CodingKeys: String, CodingKey {
        case message
        case clientMeta = "client_meta"
    }
}

struct ProjectsResponse: Codable {
    let projects: [Project]
}

struct Project: Codable {
    /// X coordinate of the vector
    /// Y coordinate of the vector
    /// Radius of the blur effect (applies to shadows as well)
    /// Red channel value, between 0 and 1
    /// Green channel value, between 0 and 1
    /// Blue channel value, between 0 and 1
    /// Alpha channel value, between 0 and 1
    /// Width of column grid or height of row grid or square grid spacing
    /// Spacing in between columns and rows
    /// Spacing before the first column or row
    /// Number of columns or rows
    /// Opacity of the node
    /// Radius of each corner of the rectangle
    /// The weight of strokes on the node
    /// Overall opacity of paint (colors within the paint can also have opacity
    /// values which would blend with this)
    /// Value between 0 and 1 representing position along gradient axis
    /// See type property for effect of this field
    /// Line height in px
    /// Numeric font weight
    /// Line height as a percentage of normal line height
    /// Font size in px
    /// Space between characters in px
    /// Array with same number of elements as characeters in text box,
    /// each element is a reference to the styleOverrideTable defined
    /// below and maps to the corresponding character in the characters
    /// field. Elements with value 0 have the default type style
    /// Only set for top level comments. The number displayed with the
    /// comment in the UI
    let id: Double
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let name: String
}

struct ProjectFilesResponse: Codable {
    let files: [File]
}

struct File: Codable {
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let key: String
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let name: String
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let thumbnailURL: String
    /// Allows manipulation and formatting of text strings and determination and location of
    /// substrings within strings.
    /// the name given to the node by the user in the tool.
    /// Image scaling mode
    /// File suffix to append to all filenames
    /// a string uniquely identifying this node within the document
    /// Text contained within text box
    /// PostScript font name
    /// Font family of text (standard name)
    /// ID of component that this instance came from, refers to components
    /// table (see endpoints section below)
    /// (MISSING IN DOCS)
    /// The content of the comment
    /// If present, the id of the comment to which this is the reply
    /// Unique identifier for comment
    /// The file in which the comment lives
    /// utc date in iso8601
    let lastModified: String

    enum CodingKeys: String, CodingKey {
        case key, name
        case thumbnailURL = "thumbnail_url"
        case lastModified = "last_modified"
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
