// To parse this data:
//
//   import { Convert, RegularPolygonNode, EllipseNode, GroupNode, Node, Vector, Color, Global, ColorStop, VectorNode, LayoutConstraint, BooleanNode, User, TextNode, FrameNode, Rectangle, LayoutGrid, Effect, RectangleNode, BlendMode, SliceNode, StarNode, LineNode, InstanceNode, TypeStyle, CanvasNode, ExportSetting, DocumentNode, Constraint, Paint, ComponentNode, Comment } from "./file";
//
//   const regularPolygonNode = Convert.toRegularPolygonNode(json);
//   const ellipseNode = Convert.toEllipseNode(json);
//   const groupNode = Convert.toGroupNode(json);
//   const node = Convert.toNode(json);
//   const vector = Convert.toVector(json);
//   const color = Convert.toColor(json);
//   const global = Convert.toGlobal(json);
//   const colorStop = Convert.toColorStop(json);
//   const vectorNode = Convert.toVectorNode(json);
//   const layoutConstraint = Convert.toLayoutConstraint(json);
//   const booleanNode = Convert.toBooleanNode(json);
//   const user = Convert.toUser(json);
//   const textNode = Convert.toTextNode(json);
//   const frameNode = Convert.toFrameNode(json);
//   const rectangle = Convert.toRectangle(json);
//   const layoutGrid = Convert.toLayoutGrid(json);
//   const effect = Convert.toEffect(json);
//   const rectangleNode = Convert.toRectangleNode(json);
//   const blendMode = Convert.toBlendMode(json);
//   const sliceNode = Convert.toSliceNode(json);
//   const starNode = Convert.toStarNode(json);
//   const lineNode = Convert.toLineNode(json);
//   const instanceNode = Convert.toInstanceNode(json);
//   const typeStyle = Convert.toTypeStyle(json);
//   const canvasNode = Convert.toCanvasNode(json);
//   const exportSetting = Convert.toExportSetting(json);
//   const documentNode = Convert.toDocumentNode(json);
//   const constraint = Convert.toConstraint(json);
//   const paint = Convert.toPaint(json);
//   const componentNode = Convert.toComponentNode(json);
//   const comment = Convert.toComment(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

/**
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface RegularPolygonNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight: number;
    /**
     * An array of fill paints applied to the node
     */
    fills: PaintElement[];
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
}

/**
 * A rectangle that expresses a bounding box in absolute coordinates
 *
 * Bounding box of the node in absolute space coordinates
 */
export interface RegularPolygonNodeRectangle {
    /**
     * X coordinate of top left corner of the rectangle
     */
    x: number;
    /**
     * Y coordinate of top left corner of the rectangle
     */
    y: number;
    /**
     * Width of the rectangle
     */
    width: number;
    /**
     * Height of the rectangle
     */
    height: number;
}

/**
 * Enum describing how layer blends with layers below
 *
 * See type property for effect of this field
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 */
export enum BlendMode {
    Color = "COLOR",
    ColorBurn = "COLOR_BURN",
    ColorDodge = "COLOR_DODGE",
    Darken = "DARKEN",
    Difference = "DIFFERENCE",
    Exclusion = "EXCLUSION",
    HardLight = "HARD_LIGHT",
    Hue = "HUE",
    Lighten = "LIGHTEN",
    LinearBurn = "LINEAR_BURN",
    LinearDodge = "LINEAR_DODGE",
    Luminosity = "LUMINOSITY",
    Multiply = "MULTIPLY",
    Normal = "NORMAL",
    Overlay = "OVERLAY",
    PassThrough = "PASS_THROUGH",
    Saturation = "SATURATION",
    Screen = "SCREEN",
    SoftLight = "SOFT_LIGHT",
}

/**
 * Layout constraint relative to containing Frame
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 */
export interface RegularPolygonNodeLayoutConstraint {
    /**
     * * TOP: Node is laid out relative to top of the containing frame
     * * BOTTOM: Node is laid out relative to bottom of the containing frame
     * * CENTER: Node is vertically centered relative to containing frame
     * * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
     * (node stretches with frame)
     * * SCALE: Node scales vertically with containing frame
     */
    vertical: Vertical;
    /**
     * * LEFT: Node is laid out relative to left of the containing frame
     * * RIGHT: Node is laid out relative to right of the containing frame
     * * CENTER: Node is horizontally centered relative to containing frame
     * * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
     * (node stretches with frame)
     * * SCALE: Node scales horizontally with containing frame
     */
    horizontal: Horizontal;
}

/**
 * * LEFT: Node is laid out relative to left of the containing frame
 * * RIGHT: Node is laid out relative to right of the containing frame
 * * CENTER: Node is horizontally centered relative to containing frame
 * * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
 * (node stretches with frame)
 * * SCALE: Node scales horizontally with containing frame
 */
export enum Horizontal {
    Center = "CENTER",
    Left = "LEFT",
    LeftRight = "LEFT_RIGHT",
    Right = "RIGHT",
    Scale = "SCALE",
}

/**
 * * TOP: Node is laid out relative to top of the containing frame
 * * BOTTOM: Node is laid out relative to bottom of the containing frame
 * * CENTER: Node is vertically centered relative to containing frame
 * * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
 * (node stretches with frame)
 * * SCALE: Node scales vertically with containing frame
 */
export enum Vertical {
    Bottom = "BOTTOM",
    Center = "CENTER",
    Scale = "SCALE",
    Top = "TOP",
    TopBottom = "TOP_BOTTOM",
}

/**
 * A visual effect such as a shadow or blur
 *
 * An array of effects attached to this node (see effects section for more details)
 */
export interface EffectElement {
    /**
     * Type of effect as a string enum
     */
    type: EffectType;
    /**
     * See type property for effect of this field
     */
    radius: number;
    /**
     * See type property for effect of this field
     */
    visible: boolean;
    /**
     * See type property for effect of this field
     */
    color: EffectColor;
    /**
     * See type property for effect of this field
     */
    blendMode: BlendMode;
    /**
     * See type property for effect of this field
     */
    offset: EffectVector;
}

/**
 * An RGBA color
 *
 * See type property for effect of this field
 *
 * (For solid paints) Solid color of the paint
 *
 * Color attached to corresponding position
 *
 * Color of the grid
 *
 * Background color of the node
 *
 * Background color of the canvas
 */
export interface EffectColor {
    /**
     * Red channel value, between 0 and 1
     */
    r: number;
    /**
     * Green channel value, between 0 and 1
     */
    g: number;
    /**
     * Blue channel value, between 0 and 1
     */
    b: number;
    /**
     * Alpha channel value, between 0 and 1
     */
    a: number;
}

/**
 * A 2d vector
 *
 * See type property for effect of this field
 *
 * (For gradient paints) This field contains three vectors, each of which are a position in
 * normalized object space (normalized object space is if the top left corner of the
 * bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
 * corresponds to the start of the gradient (value 0 for the purposes of calculating
 * gradient stops), the second position is the end of the gradient (value 1), and the third
 * handle position determines the width of the gradient (only relevant for non-linear
 * gradients).
 */
export interface EffectVector {
    /**
     * X coordinate of the vector
     */
    x: number;
    /**
     * Y coordinate of the vector
     */
    y: number;
}

/**
 * Type of effect as a string enum
 */
export enum EffectType {
    BackgroundBlur = "BACKGROUND_BLUR",
    DropShadow = "DROP_SHADOW",
    InnerShadow = "INNER_SHADOW",
    LayerBlur = "LAYER_BLUR",
}

/**
 * Format and size to export an asset at
 *
 * An array of export settings representing images to export from node
 *
 * An array of export settings representing images to export from the canvas
 *
 * A rectangular region of the canvas that can be exported
 */
export interface ExportSettingElement {
    /**
     * File suffix to append to all filenames
     */
    suffix: string;
    /**
     * Type of constraint to apply; string enum with potential values below
     *
     * * "SCALE": Scale by value
     * * "WIDTH": Scale proportionally and set width to value
     * * "HEIGHT": Scale proportionally and set height to value
     */
    format: Format;
    /**
     * Constraint that determines sizing of exported asset
     */
    constraint: ExportSettingConstraint;
}

/**
 * Sizing constraint for exports
 *
 * Constraint that determines sizing of exported asset
 */
export interface ExportSettingConstraint {
    /**
     * Type of constraint to apply; string enum with potential values below
     *
     * * "SCALE": Scale by value
     * * "WIDTH": Scale proportionally and set width to value
     * * "HEIGHT": Scale proportionally and set height to value
     */
    type: ConstraintType;
    /**
     * See type property for effect of this field
     */
    value?: number;
}

/**
 * Type of constraint to apply; string enum with potential values below
 *
 * * "SCALE": Scale by value
 * * "WIDTH": Scale proportionally and set width to value
 * * "HEIGHT": Scale proportionally and set height to value
 */
export enum ConstraintType {
    Height = "HEIGHT",
    Scale = "SCALE",
    Width = "WIDTH",
}

/**
 * Type of constraint to apply; string enum with potential values below
 *
 * * "SCALE": Scale by value
 * * "WIDTH": Scale proportionally and set width to value
 * * "HEIGHT": Scale proportionally and set height to value
 */
export enum Format {
    Jpg = "JPG",
    PNG = "PNG",
    SVG = "SVG",
}

/**
 * A solid color, gradient, or image texture that can be applied as fills or strokes
 *
 * An array of fill paints applied to the node
 *
 * An array of stroke paints applied to the node
 *
 * Paints applied to characters
 */
export interface PaintElement {
    /**
     * Type of paint as a string enum
     */
    type: PaintType;
    /**
     * Is the paint enabled?
     */
    visible: boolean;
    /**
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     */
    opacity: number;
    /**
     * (For solid paints) Solid color of the paint
     */
    color?: EffectColor;
    /**
     * (For gradient paints) This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left corner of the
     * bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
     * corresponds to the start of the gradient (value 0 for the purposes of calculating
     * gradient stops), the second position is the end of the gradient (value 1), and the third
     * handle position determines the width of the gradient (only relevant for non-linear
     * gradients).
     */
    gradientHandlePositions?: EffectVector[];
    /**
     * (For gradient paints) Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly between neighboring
     * gradient stops.
     */
    gradientStops?: ColorStopElement[];
    /**
     * (For image paints) Image scaling mode
     */
    scaleMode?: ScaleMode;
}

/**
 * A position color pair representing a gradient stop
 *
 * (For gradient paints) Positions of key points along the gradient axis with the colors
 * anchored there. Colors along the gradient are interpolated smoothly between neighboring
 * gradient stops.
 */
export interface ColorStopElement {
    /**
     * Color attached to corresponding position
     */
    color: EffectColor;
    /**
     * Value between 0 and 1 representing position along gradient axis
     */
    position: number;
}

/**
 * (For image paints) Image scaling mode
 */
export enum ScaleMode {
    Fill = "FILL",
    Fit = "FIT",
    Stretch = "STRETCH",
    Tile = "TILE",
}

/**
 * Type of paint as a string enum
 */
export enum PaintType {
    Emoji = "EMOJI",
    GradientAngular = "GRADIENT_ANGULAR",
    GradientDiamond = "GRADIENT_DIAMOND",
    GradientLinear = "GRADIENT_LINEAR",
    GradientRadial = "GRADIENT_RADIAL",
    Image = "IMAGE",
    Solid = "SOLID",
}

/**
 * Where stroke is drawn relative to the vector outline as a string enum
 *
 * * INSIDE: draw stroke inside the shape boundary
 * * OUTSIDE: draw stroke outside the shape boundary
 * * CENTER: draw stroke centered along the shape boundary
 */
export enum StrokeAlign {
    Center = "CENTER",
    Inside = "INSIDE",
    Outside = "OUTSIDE",
}

/**
 * The type of the node
 */
export enum RegularPolygonNodeType {
    Boolean = "BOOLEAN",
    Canvas = "CANVAS",
    Component = "COMPONENT",
    Document = "DOCUMENT",
    Ellipse = "ELLIPSE",
    Frame = "FRAME",
    Group = "GROUP",
    Instance = "INSTANCE",
    Line = "LINE",
    Rectangle = "RECTANGLE",
    RegularPolygon = "REGULAR_POLYGON",
    Slice = "SLICE",
    Star = "STAR",
    Text = "TEXT",
    Vector = "VECTOR",
}

/**
 * An ellipse
 *
 * A regular n-sided polygon
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface EllipseNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight: number;
    /**
     * An array of fill paints applied to the node
     */
    fills: PaintElement[];
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
}

/**
 * A logical grouping of nodes
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface GroupNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * Background color of the node
     */
    backgroundColor: EffectColor;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are direct children of this node
     */
    children: Node1[];
}

/**
 * An array of nodes that are direct children of this node
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface Node1 {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    children?: NodeNode[];
    /**
     * Background color of the canvas
     *
     * Background color of the node
     */
    backgroundColor?: EffectColor;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * A rectangular region of the canvas that can be exported
     */
    exportSettings?: ExportSettingElement[];
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects?: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode?: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints?: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask?: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent?: boolean;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio?: boolean;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign?: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight?: number;
    /**
     * An array of fill paints applied to the node
     */
    fills?: PaintElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: PaintElement[];
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius?: number;
    /**
     * Text contained within text box
     */
    characters?: string;
    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    style?: NodeTypeStyle;
    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: { [key: string]: NodeTypeStyle };
    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    componentId?: string;
}

/**
 * An array of canvases attached to the document
 *
 * An array of nodes that are direct children of this node
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 *
 * An array of top level layers on the canvas
 *
 * An array of nodes that are being boolean operated on
 */
export interface NodeNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    children?: NodeNode[];
    /**
     * Background color of the canvas
     *
     * Background color of the node
     */
    backgroundColor?: EffectColor;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * A rectangular region of the canvas that can be exported
     */
    exportSettings?: ExportSettingElement[];
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects?: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode?: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints?: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask?: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent?: boolean;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio?: boolean;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign?: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight?: number;
    /**
     * An array of fill paints applied to the node
     */
    fills?: PaintElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: PaintElement[];
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius?: number;
    /**
     * Text contained within text box
     */
    characters?: string;
    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    style?: NodeTypeStyle;
    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: { [key: string]: NodeTypeStyle };
    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    componentId?: string;
}

/**
 * Guides to align and place objects within a frame
 *
 * An array of layout grids attached to this node (see layout grids section for more
 * details). GROUP nodes do not have this attribute
 */
export interface LayoutGridElement {
    /**
     * * COLUMNS: Vertical grid
     * * ROWS: Horizontal grid
     * * GRID: Square grid
     */
    pattern: Pattern;
    /**
     * Width of column grid or height of row grid or square grid spacing
     */
    sectionSize: number;
    /**
     * Is the grid currently visible?
     */
    visible: boolean;
    /**
     * Color of the grid
     */
    color: EffectColor;
    /**
     * Positioning of grid as a string enum
     *
     * * MIN: Grid starts at the left or top of the frame
     * * MAX: Grid starts at the right or bottom of the frame
     * * CENTER: Grid is center aligned
     */
    alignment: Alignment;
    /**
     * Spacing in between columns and rows
     */
    gutterSize: number;
    /**
     * Spacing before the first column or row
     */
    offset: number;
    /**
     * Number of columns or rows
     */
    count: number;
}

/**
 * Positioning of grid as a string enum
 *
 * * MIN: Grid starts at the left or top of the frame
 * * MAX: Grid starts at the right or bottom of the frame
 * * CENTER: Grid is center aligned
 */
export enum Alignment {
    Center = "CENTER",
    Max = "MAX",
    Min = "MIN",
}

/**
 * * COLUMNS: Vertical grid
 * * ROWS: Horizontal grid
 * * GRID: Square grid
 */
export enum Pattern {
    Columns = "COLUMNS",
    Grid = "GRID",
    Rows = "ROWS",
}

/**
 * Metadata for character formatting
 *
 * Style of text including font family and weight (see type style section for more
 * information)
 *
 * Map from ID to TypeStyle for looking up style overrides
 */
export interface NodeTypeStyle {
    /**
     * Line height in px
     */
    lineHeightPx: number;
    /**
     * PostScript font name
     */
    fontPostScriptName: string;
    /**
     * Numeric font weight
     */
    fontWeight: number;
    /**
     * Line height as a percentage of normal line height
     */
    lineHeightPercent: number;
    /**
     * Vertical text alignment as string enum
     */
    textAlignVertical: TextAlignVertical;
    /**
     * Font size in px
     */
    fontSize: number;
    /**
     * Is text italicized?
     */
    italic: boolean;
    /**
     * Paints applied to characters
     */
    fills: PaintElement[];
    /**
     * Font family of text (standard name)
     */
    fontFamily: string;
    /**
     * Horizontal text alignment as string enum
     */
    textAlignHorizontal: TextAlignHorizontal;
    /**
     * Space between characters in px
     */
    letterSpacing: number;
}

/**
 * Horizontal text alignment as string enum
 */
export enum TextAlignHorizontal {
    Center = "CENTER",
    Justified = "JUSTIFIED",
    Left = "LEFT",
    Right = "RIGHT",
}

/**
 * Vertical text alignment as string enum
 */
export enum TextAlignVertical {
    Bottom = "BOTTOM",
    Center = "CENTER",
    Top = "TOP",
}

/**
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface Node {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    children?: NodeNode[];
    /**
     * Background color of the canvas
     *
     * Background color of the node
     */
    backgroundColor?: EffectColor;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * A rectangular region of the canvas that can be exported
     */
    exportSettings?: ExportSettingElement[];
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects?: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode?: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints?: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask?: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent?: boolean;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio?: boolean;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign?: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight?: number;
    /**
     * An array of fill paints applied to the node
     */
    fills?: PaintElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: PaintElement[];
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius?: number;
    /**
     * Text contained within text box
     */
    characters?: string;
    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    style?: NodeTypeStyle;
    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: { [key: string]: NodeTypeStyle };
    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    componentId?: string;
}

/**
 * A 2d vector
 */
export interface Vector {
    /**
     * X coordinate of the vector
     */
    x: number;
    /**
     * Y coordinate of the vector
     */
    y: number;
}

/**
 * An RGBA color
 */
export interface Color {
    /**
     * Red channel value, between 0 and 1
     */
    r: number;
    /**
     * Green channel value, between 0 and 1
     */
    g: number;
    /**
     * Blue channel value, between 0 and 1
     */
    b: number;
    /**
     * Alpha channel value, between 0 and 1
     */
    a: number;
}

/**
 * Properties are shared across all nodes
 */
export interface Global {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
}

/**
 * A position color pair representing a gradient stop
 */
export interface ColorStop {
    /**
     * Color attached to corresponding position
     */
    color: EffectColor;
    /**
     * Value between 0 and 1 representing position along gradient axis
     */
    position: number;
}

/**
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface VectorNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight: number;
    /**
     * An array of fill paints applied to the node
     */
    fills: PaintElement[];
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
}

/**
 * Layout constraint relative to containing Frame
 */
export interface LayoutConstraint {
    /**
     * * TOP: Node is laid out relative to top of the containing frame
     * * BOTTOM: Node is laid out relative to bottom of the containing frame
     * * CENTER: Node is vertically centered relative to containing frame
     * * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
     * (node stretches with frame)
     * * SCALE: Node scales vertically with containing frame
     */
    vertical: Vertical;
    /**
     * * LEFT: Node is laid out relative to left of the containing frame
     * * RIGHT: Node is laid out relative to right of the containing frame
     * * CENTER: Node is horizontally centered relative to containing frame
     * * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
     * (node stretches with frame)
     * * SCALE: Node scales horizontally with containing frame
     */
    horizontal: Horizontal;
}

/**
 * A group that has a boolean operation applied to it
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface BooleanNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight: number;
    /**
     * An array of fill paints applied to the node
     */
    fills: PaintElement[];
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are being boolean operated on
     */
    children: Node2[];
}

/**
 * An array of nodes that are being boolean operated on
 *
 * An array of nodes that are direct children of this node
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface Node2 {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    children?: NodeNode[];
    /**
     * Background color of the canvas
     *
     * Background color of the node
     */
    backgroundColor?: EffectColor;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * A rectangular region of the canvas that can be exported
     */
    exportSettings?: ExportSettingElement[];
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects?: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode?: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints?: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask?: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent?: boolean;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio?: boolean;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign?: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight?: number;
    /**
     * An array of fill paints applied to the node
     */
    fills?: PaintElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: PaintElement[];
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius?: number;
    /**
     * Text contained within text box
     */
    characters?: string;
    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    style?: NodeTypeStyle;
    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: { [key: string]: NodeTypeStyle };
    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    componentId?: string;
}

/**
 * A description of a user
 */
export interface User {
    handle:  string;
    img_url: string;
}

/**
 * A text box
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface TextNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight: number;
    /**
     * An array of fill paints applied to the node
     */
    fills: PaintElement[];
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
    /**
     * Text contained within text box
     */
    characters: string;
    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    style: NodeTypeStyle;
    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    characterStyleOverrides: number[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable: { [key: string]: NodeTypeStyle };
}

/**
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface FrameNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * Background color of the node
     */
    backgroundColor: EffectColor;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are direct children of this node
     */
    children: FrameNodeNode[];
}

/**
 * An array of nodes that are direct children of this node
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface FrameNodeNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    children?: NodeNode[];
    /**
     * Background color of the canvas
     *
     * Background color of the node
     */
    backgroundColor?: EffectColor;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * A rectangular region of the canvas that can be exported
     */
    exportSettings?: ExportSettingElement[];
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects?: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode?: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints?: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask?: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent?: boolean;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio?: boolean;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign?: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight?: number;
    /**
     * An array of fill paints applied to the node
     */
    fills?: PaintElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: PaintElement[];
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius?: number;
    /**
     * Text contained within text box
     */
    characters?: string;
    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    style?: NodeTypeStyle;
    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: { [key: string]: NodeTypeStyle };
    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    componentId?: string;
}

/**
 * A rectangle that expresses a bounding box in absolute coordinates
 */
export interface Rectangle {
    /**
     * X coordinate of top left corner of the rectangle
     */
    x: number;
    /**
     * Y coordinate of top left corner of the rectangle
     */
    y: number;
    /**
     * Width of the rectangle
     */
    width: number;
    /**
     * Height of the rectangle
     */
    height: number;
}

/**
 * Guides to align and place objects within a frame
 */
export interface LayoutGrid {
    /**
     * * COLUMNS: Vertical grid
     * * ROWS: Horizontal grid
     * * GRID: Square grid
     */
    pattern: Pattern;
    /**
     * Width of column grid or height of row grid or square grid spacing
     */
    sectionSize: number;
    /**
     * Is the grid currently visible?
     */
    visible: boolean;
    /**
     * Color of the grid
     */
    color: EffectColor;
    /**
     * Positioning of grid as a string enum
     *
     * * MIN: Grid starts at the left or top of the frame
     * * MAX: Grid starts at the right or bottom of the frame
     * * CENTER: Grid is center aligned
     */
    alignment: Alignment;
    /**
     * Spacing in between columns and rows
     */
    gutterSize: number;
    /**
     * Spacing before the first column or row
     */
    offset: number;
    /**
     * Number of columns or rows
     */
    count: number;
}

/**
 * A visual effect such as a shadow or blur
 */
export interface Effect {
    /**
     * Type of effect as a string enum
     */
    type: EffectType;
    /**
     * See type property for effect of this field
     */
    radius: number;
    /**
     * See type property for effect of this field
     */
    visible: boolean;
    /**
     * See type property for effect of this field
     */
    color: EffectColor;
    /**
     * See type property for effect of this field
     */
    blendMode: BlendMode;
    /**
     * See type property for effect of this field
     */
    offset: EffectVector;
}

/**
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface RectangleNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight: number;
    /**
     * An array of fill paints applied to the node
     */
    fills: PaintElement[];
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius: number;
}

/**
 * A rectangular region of the canvas that can be exported
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface SliceNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * A rectangular region of the canvas that can be exported
     */
    exportSettings: ExportSettingElement[];
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
}

/**
 * A regular star shape
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface StarNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight: number;
    /**
     * An array of fill paints applied to the node
     */
    fills: PaintElement[];
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
}

/**
 * A straight line
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface LineNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight: number;
    /**
     * An array of fill paints applied to the node
     */
    fills: PaintElement[];
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
}

/**
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * A logical grouping of nodes
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface InstanceNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * Background color of the node
     */
    backgroundColor: EffectColor;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are direct children of this node
     */
    children: Node1[];
    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    componentId: string;
}

/**
 * Metadata for character formatting
 */
export interface TypeStyle {
    /**
     * Line height in px
     */
    lineHeightPx: number;
    /**
     * PostScript font name
     */
    fontPostScriptName: string;
    /**
     * Numeric font weight
     */
    fontWeight: number;
    /**
     * Line height as a percentage of normal line height
     */
    lineHeightPercent: number;
    /**
     * Vertical text alignment as string enum
     */
    textAlignVertical: TextAlignVertical;
    /**
     * Font size in px
     */
    fontSize: number;
    /**
     * Is text italicized?
     */
    italic: boolean;
    /**
     * Paints applied to characters
     */
    fills: PaintElement[];
    /**
     * Font family of text (standard name)
     */
    fontFamily: string;
    /**
     * Horizontal text alignment as string enum
     */
    textAlignHorizontal: TextAlignHorizontal;
    /**
     * Space between characters in px
     */
    letterSpacing: number;
}

/**
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface CanvasNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of top level layers on the canvas
     */
    children: Node3[];
    /**
     * Background color of the canvas
     */
    backgroundColor: EffectColor;
    /**
     * An array of export settings representing images to export from the canvas
     */
    exportSettings: ExportSettingElement[];
}

/**
 * An array of top level layers on the canvas
 *
 * An array of nodes that are direct children of this node
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface Node3 {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    children?: NodeNode[];
    /**
     * Background color of the canvas
     *
     * Background color of the node
     */
    backgroundColor?: EffectColor;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * A rectangular region of the canvas that can be exported
     */
    exportSettings?: ExportSettingElement[];
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects?: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode?: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints?: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask?: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent?: boolean;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio?: boolean;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign?: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight?: number;
    /**
     * An array of fill paints applied to the node
     */
    fills?: PaintElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: PaintElement[];
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius?: number;
    /**
     * Text contained within text box
     */
    characters?: string;
    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    style?: NodeTypeStyle;
    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: { [key: string]: NodeTypeStyle };
    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    componentId?: string;
}

/**
 * Format and size to export an asset at
 */
export interface ExportSetting {
    /**
     * File suffix to append to all filenames
     */
    suffix: string;
    /**
     * Type of constraint to apply; string enum with potential values below
     *
     * * "SCALE": Scale by value
     * * "WIDTH": Scale proportionally and set width to value
     * * "HEIGHT": Scale proportionally and set height to value
     */
    format: Format;
    /**
     * Constraint that determines sizing of exported asset
     */
    constraint: ExportSettingConstraint;
}

/**
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface DocumentNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of canvases attached to the document
     */
    children: Node4[];
}

/**
 * An array of canvases attached to the document
 *
 * An array of nodes that are direct children of this node
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface Node4 {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    children?: NodeNode[];
    /**
     * Background color of the canvas
     *
     * Background color of the node
     */
    backgroundColor?: EffectColor;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * A rectangular region of the canvas that can be exported
     */
    exportSettings?: ExportSettingElement[];
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects?: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode?: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints?: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask?: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent?: boolean;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio?: boolean;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    strokeAlign?: StrokeAlign;
    /**
     * The weight of strokes on the node
     */
    strokeWeight?: number;
    /**
     * An array of fill paints applied to the node
     */
    fills?: PaintElement[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: PaintElement[];
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius?: number;
    /**
     * Text contained within text box
     */
    characters?: string;
    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    style?: NodeTypeStyle;
    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: { [key: string]: NodeTypeStyle };
    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    componentId?: string;
}

/**
 * Sizing constraint for exports
 */
export interface Constraint {
    /**
     * Type of constraint to apply; string enum with potential values below
     *
     * * "SCALE": Scale by value
     * * "WIDTH": Scale proportionally and set width to value
     * * "HEIGHT": Scale proportionally and set height to value
     */
    type: ConstraintType;
    /**
     * See type property for effect of this field
     */
    value?: number;
}

/**
 * A solid color, gradient, or image texture that can be applied as fills or strokes
 */
export interface Paint {
    /**
     * Type of paint as a string enum
     */
    type: PaintType;
    /**
     * Is the paint enabled?
     */
    visible: boolean;
    /**
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     */
    opacity: number;
    /**
     * (For solid paints) Solid color of the paint
     */
    color?: EffectColor;
    /**
     * (For gradient paints) This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left corner of the
     * bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
     * corresponds to the start of the gradient (value 0 for the purposes of calculating
     * gradient stops), the second position is the end of the gradient (value 1), and the third
     * handle position determines the width of the gradient (only relevant for non-linear
     * gradients).
     */
    gradientHandlePositions?: EffectVector[];
    /**
     * (For gradient paints) Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly between neighboring
     * gradient stops.
     */
    gradientStops?: ColorStopElement[];
    /**
     * (For image paints) Image scaling mode
     */
    scaleMode?: ScaleMode;
}

/**
 * A node that can have instances created of it that share the same properties
 *
 * A logical grouping of nodes
 *
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface ComponentNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id: string;
    /**
     * The name given to the node by the user in the tool
     */
    name: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * The type of the node
     */
    type: RegularPolygonNodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: RegularPolygonNodeRectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * Background color of the node
     */
    backgroundColor: EffectColor;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: RegularPolygonNodeLayoutConstraint;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are direct children of this node
     */
    children: Node1[];
}

/**
 * A comment or reply left by a user
 */
export interface Comment {
    /**
     * Unique identifier for comment
     */
    id: string;
    /**
     * The file in which the comment lives
     */
    file_key: string;
    /**
     * If present, the id of the comment to which this is the reply
     */
    parent_id?: string;
    /**
     * The user who left the comment
     */
    user: CommentUser;
}

/**
 * A description of a user
 *
 * The user who left the comment
 */
export interface CommentUser {
    handle:  string;
    img_url: string;
}

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
export module Convert {
    export function toRegularPolygonNode(json: string): RegularPolygonNode {
        return cast(JSON.parse(json), o("RegularPolygonNode"));
    }

    export function regularPolygonNodeToJson(value: RegularPolygonNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toEllipseNode(json: string): EllipseNode {
        return cast(JSON.parse(json), o("EllipseNode"));
    }

    export function ellipseNodeToJson(value: EllipseNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toGroupNode(json: string): GroupNode {
        return cast(JSON.parse(json), o("GroupNode"));
    }

    export function groupNodeToJson(value: GroupNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toNode(json: string): Node {
        return cast(JSON.parse(json), o("Node"));
    }

    export function nodeToJson(value: Node): string {
        return JSON.stringify(value, null, 2);
    }

    export function toVector(json: string): Vector {
        return cast(JSON.parse(json), o("Vector"));
    }

    export function vectorToJson(value: Vector): string {
        return JSON.stringify(value, null, 2);
    }

    export function toColor(json: string): Color {
        return cast(JSON.parse(json), o("Color"));
    }

    export function colorToJson(value: Color): string {
        return JSON.stringify(value, null, 2);
    }

    export function toGlobal(json: string): Global {
        return cast(JSON.parse(json), o("Global"));
    }

    export function globalToJson(value: Global): string {
        return JSON.stringify(value, null, 2);
    }

    export function toColorStop(json: string): ColorStop {
        return cast(JSON.parse(json), o("ColorStop"));
    }

    export function colorStopToJson(value: ColorStop): string {
        return JSON.stringify(value, null, 2);
    }

    export function toVectorNode(json: string): VectorNode {
        return cast(JSON.parse(json), o("VectorNode"));
    }

    export function vectorNodeToJson(value: VectorNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toLayoutConstraint(json: string): LayoutConstraint {
        return cast(JSON.parse(json), o("LayoutConstraint"));
    }

    export function layoutConstraintToJson(value: LayoutConstraint): string {
        return JSON.stringify(value, null, 2);
    }

    export function toBooleanNode(json: string): BooleanNode {
        return cast(JSON.parse(json), o("BooleanNode"));
    }

    export function booleanNodeToJson(value: BooleanNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toUser(json: string): User {
        return cast(JSON.parse(json), o("User"));
    }

    export function userToJson(value: User): string {
        return JSON.stringify(value, null, 2);
    }

    export function toTextNode(json: string): TextNode {
        return cast(JSON.parse(json), o("TextNode"));
    }

    export function textNodeToJson(value: TextNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toFrameNode(json: string): FrameNode {
        return cast(JSON.parse(json), o("FrameNode"));
    }

    export function frameNodeToJson(value: FrameNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toRectangle(json: string): Rectangle {
        return cast(JSON.parse(json), o("Rectangle"));
    }

    export function rectangleToJson(value: Rectangle): string {
        return JSON.stringify(value, null, 2);
    }

    export function toLayoutGrid(json: string): LayoutGrid {
        return cast(JSON.parse(json), o("LayoutGrid"));
    }

    export function layoutGridToJson(value: LayoutGrid): string {
        return JSON.stringify(value, null, 2);
    }

    export function toEffect(json: string): Effect {
        return cast(JSON.parse(json), o("Effect"));
    }

    export function effectToJson(value: Effect): string {
        return JSON.stringify(value, null, 2);
    }

    export function toRectangleNode(json: string): RectangleNode {
        return cast(JSON.parse(json), o("RectangleNode"));
    }

    export function rectangleNodeToJson(value: RectangleNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toBlendMode(json: string): BlendMode {
        return cast(JSON.parse(json), e("BlendMode"));
    }

    export function blendModeToJson(value: BlendMode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toSliceNode(json: string): SliceNode {
        return cast(JSON.parse(json), o("SliceNode"));
    }

    export function sliceNodeToJson(value: SliceNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toStarNode(json: string): StarNode {
        return cast(JSON.parse(json), o("StarNode"));
    }

    export function starNodeToJson(value: StarNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toLineNode(json: string): LineNode {
        return cast(JSON.parse(json), o("LineNode"));
    }

    export function lineNodeToJson(value: LineNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toInstanceNode(json: string): InstanceNode {
        return cast(JSON.parse(json), o("InstanceNode"));
    }

    export function instanceNodeToJson(value: InstanceNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toTypeStyle(json: string): TypeStyle {
        return cast(JSON.parse(json), o("TypeStyle"));
    }

    export function typeStyleToJson(value: TypeStyle): string {
        return JSON.stringify(value, null, 2);
    }

    export function toCanvasNode(json: string): CanvasNode {
        return cast(JSON.parse(json), o("CanvasNode"));
    }

    export function canvasNodeToJson(value: CanvasNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toExportSetting(json: string): ExportSetting {
        return cast(JSON.parse(json), o("ExportSetting"));
    }

    export function exportSettingToJson(value: ExportSetting): string {
        return JSON.stringify(value, null, 2);
    }

    export function toDocumentNode(json: string): DocumentNode {
        return cast(JSON.parse(json), o("DocumentNode"));
    }

    export function documentNodeToJson(value: DocumentNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toConstraint(json: string): Constraint {
        return cast(JSON.parse(json), o("Constraint"));
    }

    export function constraintToJson(value: Constraint): string {
        return JSON.stringify(value, null, 2);
    }

    export function toPaint(json: string): Paint {
        return cast(JSON.parse(json), o("Paint"));
    }

    export function paintToJson(value: Paint): string {
        return JSON.stringify(value, null, 2);
    }

    export function toComponentNode(json: string): ComponentNode {
        return cast(JSON.parse(json), o("ComponentNode"));
    }

    export function componentNodeToJson(value: ComponentNode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toComment(json: string): Comment {
        return cast(JSON.parse(json), o("Comment"));
    }

    export function commentToJson(value: Comment): string {
        return JSON.stringify(value, null, 2);
    }
    
    function cast<T>(obj: any, typ: any): T {
        if (!isValid(typ, obj)) {
            throw `Invalid value`;
        }
        return obj;
    }

    function isValid(typ: any, val: any): boolean {
        if (typ === undefined) return true;
        if (typ === null) return val === null || val === undefined;
        return typ.isUnion  ? isValidUnion(typ.typs, val)
                : typ.isArray  ? isValidArray(typ.typ, val)
                : typ.isMap    ? isValidMap(typ.typ, val)
                : typ.isEnum   ? isValidEnum(typ.name, val)
                : typ.isObject ? isValidObject(typ.cls, val)
                :                isValidPrimitive(typ, val);
    }

    function isValidPrimitive(typ: string, val: any) {
        return typeof typ === typeof val;
    }

    function isValidUnion(typs: any[], val: any): boolean {
        // val must validate against one typ in typs
        return typs.find(typ => isValid(typ, val)) !== undefined;
    }

    function isValidEnum(enumName: string, val: any): boolean {
        const cases = typeMap[enumName];
        return cases.indexOf(val) !== -1;
    }

    function isValidArray(typ: any, val: any): boolean {
        // val must be an array with no invalid elements
        return Array.isArray(val) && val.every(element => {
            return isValid(typ, element);
        });
    }

    function isValidMap(typ: any, val: any): boolean {
        if (val === null || typeof val !== "object" || Array.isArray(val)) return false;
        // all values in the map must be typ
        return Object.keys(val).every(prop => {
            if (!Object.prototype.hasOwnProperty.call(val, prop)) return true;
            return isValid(typ, val[prop]);
        });
    }

    function isValidObject(className: string, val: any): boolean {
        if (val === null || typeof val !== "object" || Array.isArray(val)) return false;
        let typeRep = typeMap[className];
        return Object.keys(typeRep).every(prop => {
            if (!Object.prototype.hasOwnProperty.call(typeRep, prop)) return true;
            return isValid(typeRep[prop], val[prop]);
        });
    }

    function a(typ: any) {
        return { typ, isArray: true };
    }

    function e(name: string) {
        return { name, isEnum: true };
    }

    function u(...typs: any[]) {
        return { typs, isUnion: true };
    }

    function m(typ: any) {
        return { typ, isMap: true };
    }

    function o(className: string) {
        return { cls: className, isObject: true };
    }

    const typeMap: any = {
        "RegularPolygonNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            opacity: 3.14,
            strokeAlign: e("StrokeAlign"),
            strokeWeight: 3.14,
            fills: a(o("PaintElement")),
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            exportSettings: a(o("ExportSettingElement")),
            strokes: a(o("PaintElement")),
            preserveRatio: false,
        },
        "RegularPolygonNodeRectangle": {
            x: 3.14,
            y: 3.14,
            width: 3.14,
            height: 3.14,
        },
        "RegularPolygonNodeLayoutConstraint": {
            vertical: e("Vertical"),
            horizontal: e("Horizontal"),
        },
        "EffectElement": {
            type: e("EffectType"),
            radius: 3.14,
            visible: false,
            color: o("EffectColor"),
            blendMode: e("BlendMode"),
            offset: o("EffectVector"),
        },
        "EffectColor": {
            r: 3.14,
            g: 3.14,
            b: 3.14,
            a: 3.14,
        },
        "EffectVector": {
            x: 3.14,
            y: 3.14,
        },
        "ExportSettingElement": {
            suffix: "",
            format: e("Format"),
            constraint: o("ExportSettingConstraint"),
        },
        "ExportSettingConstraint": {
            type: e("ConstraintType"),
            value: u(null, 3.14),
        },
        "PaintElement": {
            type: e("PaintType"),
            visible: false,
            opacity: 3.14,
            color: u(null, o("EffectColor")),
            gradientHandlePositions: u(null, a(o("EffectVector"))),
            gradientStops: u(null, a(o("ColorStopElement"))),
            scaleMode: u(null, e("ScaleMode")),
        },
        "ColorStopElement": {
            color: o("EffectColor"),
            position: 3.14,
        },
        "EllipseNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            opacity: 3.14,
            strokeAlign: e("StrokeAlign"),
            strokeWeight: 3.14,
            fills: a(o("PaintElement")),
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            exportSettings: a(o("ExportSettingElement")),
            strokes: a(o("PaintElement")),
            preserveRatio: false,
        },
        "GroupNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            layoutGrids: a(o("LayoutGridElement")),
            opacity: 3.14,
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            backgroundColor: o("EffectColor"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            clipsContent: false,
            exportSettings: a(o("ExportSettingElement")),
            preserveRatio: false,
            children: a(o("Node1")),
        },
        "Node1": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("EffectColor")),
            exportSettings: u(null, a(o("ExportSettingElement"))),
            effects: u(null, a(o("EffectElement"))),
            layoutGrids: u(null, a(o("LayoutGridElement"))),
            opacity: u(null, 3.14),
            absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
            transitionNodeID: u(null, ""),
            blendMode: u(null, e("BlendMode")),
            constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
            isMask: u(null, false),
            clipsContent: u(null, false),
            preserveRatio: u(null, false),
            strokeAlign: u(null, e("StrokeAlign")),
            strokeWeight: u(null, 3.14),
            fills: u(null, a(o("PaintElement"))),
            strokes: u(null, a(o("PaintElement"))),
            cornerRadius: u(null, 3.14),
            characters: u(null, ""),
            style: u(null, o("NodeTypeStyle")),
            characterStyleOverrides: u(null, a(3.14)),
            styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
            componentId: u(null, ""),
        },
        "NodeNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("EffectColor")),
            exportSettings: u(null, a(o("ExportSettingElement"))),
            effects: u(null, a(o("EffectElement"))),
            layoutGrids: u(null, a(o("LayoutGridElement"))),
            opacity: u(null, 3.14),
            absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
            transitionNodeID: u(null, ""),
            blendMode: u(null, e("BlendMode")),
            constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
            isMask: u(null, false),
            clipsContent: u(null, false),
            preserveRatio: u(null, false),
            strokeAlign: u(null, e("StrokeAlign")),
            strokeWeight: u(null, 3.14),
            fills: u(null, a(o("PaintElement"))),
            strokes: u(null, a(o("PaintElement"))),
            cornerRadius: u(null, 3.14),
            characters: u(null, ""),
            style: u(null, o("NodeTypeStyle")),
            characterStyleOverrides: u(null, a(3.14)),
            styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
            componentId: u(null, ""),
        },
        "LayoutGridElement": {
            pattern: e("Pattern"),
            sectionSize: 3.14,
            visible: false,
            color: o("EffectColor"),
            alignment: e("Alignment"),
            gutterSize: 3.14,
            offset: 3.14,
            count: 3.14,
        },
        "NodeTypeStyle": {
            lineHeightPx: 3.14,
            fontPostScriptName: "",
            fontWeight: 3.14,
            lineHeightPercent: 3.14,
            textAlignVertical: e("TextAlignVertical"),
            fontSize: 3.14,
            italic: false,
            fills: a(o("PaintElement")),
            fontFamily: "",
            textAlignHorizontal: e("TextAlignHorizontal"),
            letterSpacing: 3.14,
        },
        "Node": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("EffectColor")),
            exportSettings: u(null, a(o("ExportSettingElement"))),
            effects: u(null, a(o("EffectElement"))),
            layoutGrids: u(null, a(o("LayoutGridElement"))),
            opacity: u(null, 3.14),
            absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
            transitionNodeID: u(null, ""),
            blendMode: u(null, e("BlendMode")),
            constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
            isMask: u(null, false),
            clipsContent: u(null, false),
            preserveRatio: u(null, false),
            strokeAlign: u(null, e("StrokeAlign")),
            strokeWeight: u(null, 3.14),
            fills: u(null, a(o("PaintElement"))),
            strokes: u(null, a(o("PaintElement"))),
            cornerRadius: u(null, 3.14),
            characters: u(null, ""),
            style: u(null, o("NodeTypeStyle")),
            characterStyleOverrides: u(null, a(3.14)),
            styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
            componentId: u(null, ""),
        },
        "Vector": {
            x: 3.14,
            y: 3.14,
        },
        "Color": {
            r: 3.14,
            g: 3.14,
            b: 3.14,
            a: 3.14,
        },
        "Global": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
        },
        "ColorStop": {
            color: o("EffectColor"),
            position: 3.14,
        },
        "VectorNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            opacity: 3.14,
            strokeAlign: e("StrokeAlign"),
            strokeWeight: 3.14,
            fills: a(o("PaintElement")),
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            exportSettings: a(o("ExportSettingElement")),
            strokes: a(o("PaintElement")),
            preserveRatio: false,
        },
        "LayoutConstraint": {
            vertical: e("Vertical"),
            horizontal: e("Horizontal"),
        },
        "BooleanNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            opacity: 3.14,
            strokeAlign: e("StrokeAlign"),
            strokeWeight: 3.14,
            fills: a(o("PaintElement")),
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            exportSettings: a(o("ExportSettingElement")),
            strokes: a(o("PaintElement")),
            preserveRatio: false,
            children: a(o("Node2")),
        },
        "Node2": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("EffectColor")),
            exportSettings: u(null, a(o("ExportSettingElement"))),
            effects: u(null, a(o("EffectElement"))),
            layoutGrids: u(null, a(o("LayoutGridElement"))),
            opacity: u(null, 3.14),
            absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
            transitionNodeID: u(null, ""),
            blendMode: u(null, e("BlendMode")),
            constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
            isMask: u(null, false),
            clipsContent: u(null, false),
            preserveRatio: u(null, false),
            strokeAlign: u(null, e("StrokeAlign")),
            strokeWeight: u(null, 3.14),
            fills: u(null, a(o("PaintElement"))),
            strokes: u(null, a(o("PaintElement"))),
            cornerRadius: u(null, 3.14),
            characters: u(null, ""),
            style: u(null, o("NodeTypeStyle")),
            characterStyleOverrides: u(null, a(3.14)),
            styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
            componentId: u(null, ""),
        },
        "User": {
            handle: "",
            img_url: "",
        },
        "TextNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            opacity: 3.14,
            strokeAlign: e("StrokeAlign"),
            strokeWeight: 3.14,
            fills: a(o("PaintElement")),
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            exportSettings: a(o("ExportSettingElement")),
            strokes: a(o("PaintElement")),
            preserveRatio: false,
            characters: "",
            style: o("NodeTypeStyle"),
            characterStyleOverrides: a(3.14),
            styleOverrideTable: m(o("NodeTypeStyle")),
        },
        "FrameNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            layoutGrids: a(o("LayoutGridElement")),
            opacity: 3.14,
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            backgroundColor: o("EffectColor"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            clipsContent: false,
            exportSettings: a(o("ExportSettingElement")),
            preserveRatio: false,
            children: a(o("FrameNodeNode")),
        },
        "FrameNodeNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("EffectColor")),
            exportSettings: u(null, a(o("ExportSettingElement"))),
            effects: u(null, a(o("EffectElement"))),
            layoutGrids: u(null, a(o("LayoutGridElement"))),
            opacity: u(null, 3.14),
            absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
            transitionNodeID: u(null, ""),
            blendMode: u(null, e("BlendMode")),
            constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
            isMask: u(null, false),
            clipsContent: u(null, false),
            preserveRatio: u(null, false),
            strokeAlign: u(null, e("StrokeAlign")),
            strokeWeight: u(null, 3.14),
            fills: u(null, a(o("PaintElement"))),
            strokes: u(null, a(o("PaintElement"))),
            cornerRadius: u(null, 3.14),
            characters: u(null, ""),
            style: u(null, o("NodeTypeStyle")),
            characterStyleOverrides: u(null, a(3.14)),
            styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
            componentId: u(null, ""),
        },
        "Rectangle": {
            x: 3.14,
            y: 3.14,
            width: 3.14,
            height: 3.14,
        },
        "LayoutGrid": {
            pattern: e("Pattern"),
            sectionSize: 3.14,
            visible: false,
            color: o("EffectColor"),
            alignment: e("Alignment"),
            gutterSize: 3.14,
            offset: 3.14,
            count: 3.14,
        },
        "Effect": {
            type: e("EffectType"),
            radius: 3.14,
            visible: false,
            color: o("EffectColor"),
            blendMode: e("BlendMode"),
            offset: o("EffectVector"),
        },
        "RectangleNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            opacity: 3.14,
            strokeAlign: e("StrokeAlign"),
            strokeWeight: 3.14,
            fills: a(o("PaintElement")),
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            exportSettings: a(o("ExportSettingElement")),
            strokes: a(o("PaintElement")),
            preserveRatio: false,
            cornerRadius: 3.14,
        },
        "SliceNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            exportSettings: a(o("ExportSettingElement")),
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        },
        "StarNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            opacity: 3.14,
            strokeAlign: e("StrokeAlign"),
            strokeWeight: 3.14,
            fills: a(o("PaintElement")),
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            exportSettings: a(o("ExportSettingElement")),
            strokes: a(o("PaintElement")),
            preserveRatio: false,
        },
        "LineNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            opacity: 3.14,
            strokeAlign: e("StrokeAlign"),
            strokeWeight: 3.14,
            fills: a(o("PaintElement")),
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            exportSettings: a(o("ExportSettingElement")),
            strokes: a(o("PaintElement")),
            preserveRatio: false,
        },
        "InstanceNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            layoutGrids: a(o("LayoutGridElement")),
            opacity: 3.14,
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            backgroundColor: o("EffectColor"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            clipsContent: false,
            exportSettings: a(o("ExportSettingElement")),
            preserveRatio: false,
            children: a(o("Node1")),
            componentId: "",
        },
        "TypeStyle": {
            lineHeightPx: 3.14,
            fontPostScriptName: "",
            fontWeight: 3.14,
            lineHeightPercent: 3.14,
            textAlignVertical: e("TextAlignVertical"),
            fontSize: 3.14,
            italic: false,
            fills: a(o("PaintElement")),
            fontFamily: "",
            textAlignHorizontal: e("TextAlignHorizontal"),
            letterSpacing: 3.14,
        },
        "CanvasNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            children: a(o("Node3")),
            backgroundColor: o("EffectColor"),
            exportSettings: a(o("ExportSettingElement")),
        },
        "Node3": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("EffectColor")),
            exportSettings: u(null, a(o("ExportSettingElement"))),
            effects: u(null, a(o("EffectElement"))),
            layoutGrids: u(null, a(o("LayoutGridElement"))),
            opacity: u(null, 3.14),
            absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
            transitionNodeID: u(null, ""),
            blendMode: u(null, e("BlendMode")),
            constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
            isMask: u(null, false),
            clipsContent: u(null, false),
            preserveRatio: u(null, false),
            strokeAlign: u(null, e("StrokeAlign")),
            strokeWeight: u(null, 3.14),
            fills: u(null, a(o("PaintElement"))),
            strokes: u(null, a(o("PaintElement"))),
            cornerRadius: u(null, 3.14),
            characters: u(null, ""),
            style: u(null, o("NodeTypeStyle")),
            characterStyleOverrides: u(null, a(3.14)),
            styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
            componentId: u(null, ""),
        },
        "ExportSetting": {
            suffix: "",
            format: e("Format"),
            constraint: o("ExportSettingConstraint"),
        },
        "DocumentNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            children: a(o("Node4")),
        },
        "Node4": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("EffectColor")),
            exportSettings: u(null, a(o("ExportSettingElement"))),
            effects: u(null, a(o("EffectElement"))),
            layoutGrids: u(null, a(o("LayoutGridElement"))),
            opacity: u(null, 3.14),
            absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
            transitionNodeID: u(null, ""),
            blendMode: u(null, e("BlendMode")),
            constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
            isMask: u(null, false),
            clipsContent: u(null, false),
            preserveRatio: u(null, false),
            strokeAlign: u(null, e("StrokeAlign")),
            strokeWeight: u(null, 3.14),
            fills: u(null, a(o("PaintElement"))),
            strokes: u(null, a(o("PaintElement"))),
            cornerRadius: u(null, 3.14),
            characters: u(null, ""),
            style: u(null, o("NodeTypeStyle")),
            characterStyleOverrides: u(null, a(3.14)),
            styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
            componentId: u(null, ""),
        },
        "Constraint": {
            type: e("ConstraintType"),
            value: u(null, 3.14),
        },
        "Paint": {
            type: e("PaintType"),
            visible: false,
            opacity: 3.14,
            color: u(null, o("EffectColor")),
            gradientHandlePositions: u(null, a(o("EffectVector"))),
            gradientStops: u(null, a(o("ColorStopElement"))),
            scaleMode: u(null, e("ScaleMode")),
        },
        "ComponentNode": {
            id: "",
            name: "",
            visible: false,
            type: e("RegularPolygonNodeType"),
            effects: a(o("EffectElement")),
            layoutGrids: a(o("LayoutGridElement")),
            opacity: 3.14,
            absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
            transitionNodeID: u(null, ""),
            blendMode: e("BlendMode"),
            backgroundColor: o("EffectColor"),
            constraints: o("RegularPolygonNodeLayoutConstraint"),
            isMask: false,
            clipsContent: false,
            exportSettings: a(o("ExportSettingElement")),
            preserveRatio: false,
            children: a(o("Node1")),
        },
        "Comment": {
            id: "",
            file_key: "",
            parent_id: u(null, ""),
            user: o("CommentUser"),
        },
        "CommentUser": {
            handle: "",
            img_url: "",
        },
        "BlendMode": [
            "COLOR",
            "COLOR_BURN",
            "COLOR_DODGE",
            "DARKEN",
            "DIFFERENCE",
            "EXCLUSION",
            "HARD_LIGHT",
            "HUE",
            "LIGHTEN",
            "LINEAR_BURN",
            "LINEAR_DODGE",
            "LUMINOSITY",
            "MULTIPLY",
            "NORMAL",
            "OVERLAY",
            "PASS_THROUGH",
            "SATURATION",
            "SCREEN",
            "SOFT_LIGHT",
        ],
        "Horizontal": [
            "CENTER",
            "LEFT",
            "LEFT_RIGHT",
            "RIGHT",
            "SCALE",
        ],
        "Vertical": [
            "BOTTOM",
            "CENTER",
            "SCALE",
            "TOP",
            "TOP_BOTTOM",
        ],
        "EffectType": [
            "BACKGROUND_BLUR",
            "DROP_SHADOW",
            "INNER_SHADOW",
            "LAYER_BLUR",
        ],
        "ConstraintType": [
            "HEIGHT",
            "SCALE",
            "WIDTH",
        ],
        "Format": [
            "JPG",
            "PNG",
            "SVG",
        ],
        "ScaleMode": [
            "FILL",
            "FIT",
            "STRETCH",
            "TILE",
        ],
        "PaintType": [
            "EMOJI",
            "GRADIENT_ANGULAR",
            "GRADIENT_DIAMOND",
            "GRADIENT_LINEAR",
            "GRADIENT_RADIAL",
            "IMAGE",
            "SOLID",
        ],
        "StrokeAlign": [
            "CENTER",
            "INSIDE",
            "OUTSIDE",
        ],
        "RegularPolygonNodeType": [
            "BOOLEAN",
            "CANVAS",
            "COMPONENT",
            "DOCUMENT",
            "ELLIPSE",
            "FRAME",
            "GROUP",
            "INSTANCE",
            "LINE",
            "RECTANGLE",
            "REGULAR_POLYGON",
            "SLICE",
            "STAR",
            "TEXT",
            "VECTOR",
        ],
        "Alignment": [
            "CENTER",
            "MAX",
            "MIN",
        ],
        "Pattern": [
            "COLUMNS",
            "GRID",
            "ROWS",
        ],
        "TextAlignHorizontal": [
            "CENTER",
            "JUSTIFIED",
            "LEFT",
            "RIGHT",
        ],
        "TextAlignVertical": [
            "BOTTOM",
            "CENTER",
            "TOP",
        ],
    };
}
