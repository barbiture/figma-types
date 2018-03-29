// To parse this data:
//
//   import { Convert, FileResponse, ImageResponse, CommentsResponse } from "./file";
//
//   const fileResponse = Convert.toFileResponse(json);
//   const imageResponse = Convert.toImageResponse(json);
//   const commentsResponse = Convert.toCommentsResponse(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

/**
 * GET /v1/files/:key
 *
 * > Description
 *
 * Returns the document refered to by :key as a JSON object. The file key can be parsed from
 * any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
 * contains a Node of type DOCUMENT.
 *
 * The "components" key contains a mapping from node IDs to component metadata. This is to
 * help you determine which components each instance comes from. Currently the only piece of
 * metadata available on components is the name of the component, but more properties will
 * be forthcoming.
 *
 * > Path parameters
 *
 * key String
 * File to export JSON from
 */
export interface FileResponse {
    /**
     * The root node within the document
     */
    document: Document;
    /**
     * A mapping from node IDs to component metadata. This is to help you determine which
     * components each instance comes from. Currently the only piece of metadata available on
     * components is the name of the component, but more properties will be forthcoming.
     */
    components:    { [key: string]: Component };
    schemaVersion: number;
}

/**
 * A mapping from node IDs to component metadata. This is to help you determine which
 * components each instance comes from. Currently the only piece of metadata available on
 * components is the name of the component, but more properties will be forthcoming.
 *
 * A node that can have instances created of it that share the same properties
 *
 * An array of canvases attached to the document
 *
 * Properties are shared across all nodes
 *
 * The root node within the document
 *
 * A rectangular region of the canvas that can be exported
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * See type property for effect of this field
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Opacity of the node
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
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
 * Is the grid currently visible?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * Does this node clip content outside of its bounds?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the paint enabled?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * File suffix to append to all filenames
 *
 * Node ID of node to transition to in prototyping
 *
 * A group that has a boolean operation applied to it
 *
 * A text box
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
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
export interface Component {
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
    type: NodeType;
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects: Effect[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGrid[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionID?: string;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: Rectangle;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode: BlendMode;
    /**
     * Background color of the node
     */
    backgroundColor: Color;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints: LayoutConstraint;
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
    exportSettings: ExportSetting[];
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
 * A rectangle that expresses a bounding box in absolute coordinates
 *
 * Bounding box of the node in absolute space coordinates
 *
 * An array of canvases attached to the document
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
 * An RGBA color
 *
 * Background color of the canvas
 *
 * See type property for effect of this field
 *
 * Color of the grid
 *
 * Background color of the node
 *
 * (For solid paints) Solid color of the paint
 *
 * Color attached to corresponding position
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
 * An array of nodes that are direct children of this node
 *
 * An array of canvases attached to the document
 *
 * The root node within the document
 *
 * Properties are shared across all nodes
 *
 * A rectangular region of the canvas that can be exported
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * See type property for effect of this field
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Opacity of the node
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
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
 * Is the grid currently visible?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * Does this node clip content outside of its bounds?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the paint enabled?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * File suffix to append to all filenames
 *
 * Node ID of node to transition to in prototyping
 *
 * A group that has a boolean operation applied to it
 *
 * A text box
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
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
 * A logical grouping of nodes
 *
 * A regular star shape
 *
 * A straight line
 *
 * An ellipse
 *
 * A regular n-sided polygon
 *
 * A rectangle that expresses a bounding box in absolute coordinates
 *
 * Bounding box of the node in absolute space coordinates
 *
 * A node that can have instances created of it that share the same properties
 */
export interface Node1 {
    /**
     * A string uniquely identifying this node within the document
     */
    id?: string;
    /**
     * The name given to the node by the user in the tool
     */
    name?: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible?: boolean;
    /**
     * The type of the node
     */
    type?: NodeType;
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
    backgroundColor?: Color;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * A rectangular region of the canvas that can be exported
     */
    exportSettings?: ExportSetting[];
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects?: Effect[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGrid[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionID?: string;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: Rectangle;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode?: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints?: LayoutConstraint;
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
    fills?: Paint[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: Paint[];
    /**
     * X coordinate of top left corner of the rectangle
     */
    x?: number;
    /**
     * Y coordinate of top left corner of the rectangle
     */
    y?: number;
    /**
     * Width of the rectangle
     */
    width?: number;
    /**
     * Height of the rectangle
     */
    height?: number;
    /**
     * Text contained within text box
     */
    characters?: string;
    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    style?: TypeStyle;
    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: { [key: string]: TypeStyle };
    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    componentId?: string;
}

/**
 * An array of canvases attached to the document
 *
 * The root node within the document
 *
 * Properties are shared across all nodes
 *
 * A rectangular region of the canvas that can be exported
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * See type property for effect of this field
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Opacity of the node
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
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
 * Is the grid currently visible?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * Does this node clip content outside of its bounds?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the paint enabled?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * File suffix to append to all filenames
 *
 * Node ID of node to transition to in prototyping
 *
 * A group that has a boolean operation applied to it
 *
 * A text box
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
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
 * A logical grouping of nodes
 *
 * A regular star shape
 *
 * A straight line
 *
 * An ellipse
 *
 * A regular n-sided polygon
 *
 * A rectangle that expresses a bounding box in absolute coordinates
 *
 * Bounding box of the node in absolute space coordinates
 *
 * A node that can have instances created of it that share the same properties
 *
 * An array of top level layers on the canvas
 *
 * An array of nodes that are direct children of this node
 *
 * An array of nodes that are being boolean operated on
 */
export interface NodeNode {
    /**
     * A string uniquely identifying this node within the document
     */
    id?: string;
    /**
     * The name given to the node by the user in the tool
     */
    name?: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible?: boolean;
    /**
     * The type of the node
     */
    type?: NodeType;
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
    backgroundColor?: Color;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * A rectangular region of the canvas that can be exported
     */
    exportSettings?: ExportSetting[];
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects?: Effect[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGrid[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionID?: string;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: Rectangle;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode?: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints?: LayoutConstraint;
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
    fills?: Paint[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: Paint[];
    /**
     * X coordinate of top left corner of the rectangle
     */
    x?: number;
    /**
     * Y coordinate of top left corner of the rectangle
     */
    y?: number;
    /**
     * Width of the rectangle
     */
    width?: number;
    /**
     * Height of the rectangle
     */
    height?: number;
    /**
     * Text contained within text box
     */
    characters?: string;
    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    style?: TypeStyle;
    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: { [key: string]: TypeStyle };
    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    componentId?: string;
}

/**
 * Layout constraint relative to containing Frame
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
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
    color: Color;
    /**
     * See type property for effect of this field
     */
    blendMode: BlendMode;
    /**
     * See type property for effect of this field
     */
    offset: Vector2D;
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
export interface Vector2D {
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
 * An array of export settings representing images to export from the canvas
 *
 * An array of export settings representing images to export from node
 *
 * A rectangular region of the canvas that can be exported
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
    constraint: Constraint;
}

/**
 * Sizing constraint for exports
 *
 * Constraint that determines sizing of exported asset
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
    value: number;
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
    color?: Color;
    /**
     * (For gradient paints) This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left corner of the
     * bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
     * corresponds to the start of the gradient (value 0 for the purposes of calculating
     * gradient stops), the second position is the end of the gradient (value 1), and the third
     * handle position determines the width of the gradient (only relevant for non-linear
     * gradients).
     */
    gradientHandlePositions?: Vector2D[];
    /**
     * (For gradient paints) Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly between neighboring
     * gradient stops.
     */
    gradientStops?: ColorStop[];
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
export interface ColorStop {
    /**
     * Color attached to corresponding position
     */
    color: Color;
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
 * Guides to align and place objects within a frame
 *
 * An array of layout grids attached to this node (see layout grids section for more
 * details). GROUP nodes do not have this attribute
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
    color: Color;
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
 * Metadata for character formatting
 *
 * Style of text including font family and weight (see type style section for more
 * information)
 *
 * Map from ID to TypeStyle for looking up style overrides
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
    fills: Paint[];
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
 * The type of the node
 */
export enum NodeType {
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
 * The root node within the document
 *
 * Properties are shared across all nodes
 *
 * An array of canvases attached to the document
 *
 * A rectangular region of the canvas that can be exported
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * See type property for effect of this field
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Opacity of the node
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
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
 * Is the grid currently visible?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * Does this node clip content outside of its bounds?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the paint enabled?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * File suffix to append to all filenames
 *
 * Node ID of node to transition to in prototyping
 *
 * A group that has a boolean operation applied to it
 *
 * A text box
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
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
export interface Document {
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
    type: NodeType;
    /**
     * An array of canvases attached to the document
     */
    children: Node2[];
}

/**
 * An array of canvases attached to the document
 *
 * The root node within the document
 *
 * Properties are shared across all nodes
 *
 * A rectangular region of the canvas that can be exported
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * See type property for effect of this field
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Opacity of the node
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
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
 * Is the grid currently visible?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * Does this node clip content outside of its bounds?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the paint enabled?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * File suffix to append to all filenames
 *
 * Node ID of node to transition to in prototyping
 *
 * A group that has a boolean operation applied to it
 *
 * A text box
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
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
 * A logical grouping of nodes
 *
 * A regular star shape
 *
 * A straight line
 *
 * An ellipse
 *
 * A regular n-sided polygon
 *
 * A rectangle that expresses a bounding box in absolute coordinates
 *
 * Bounding box of the node in absolute space coordinates
 *
 * A node that can have instances created of it that share the same properties
 */
export interface Node2 {
    /**
     * A string uniquely identifying this node within the document
     */
    id?: string;
    /**
     * The name given to the node by the user in the tool
     */
    name?: string;
    /**
     * Whether or not the node is visible on the canvas
     */
    visible?: boolean;
    /**
     * The type of the node
     */
    type?: NodeType;
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
    backgroundColor?: Color;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * A rectangular region of the canvas that can be exported
     */
    exportSettings?: ExportSetting[];
    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    effects?: Effect[];
    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGrid[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionID?: string;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: Rectangle;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    blendMode?: BlendMode;
    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    constraints?: LayoutConstraint;
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
    fills?: Paint[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: Paint[];
    /**
     * X coordinate of top left corner of the rectangle
     */
    x?: number;
    /**
     * Y coordinate of top left corner of the rectangle
     */
    y?: number;
    /**
     * Width of the rectangle
     */
    width?: number;
    /**
     * Height of the rectangle
     */
    height?: number;
    /**
     * Text contained within text box
     */
    characters?: string;
    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    style?: TypeStyle;
    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: { [key: string]: TypeStyle };
    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    componentId?: string;
}

/**
 * GET /v1/images/:key
 *
 * > Description
 *
 * If no error occurs, "images" will be populated with a map from node IDs to URLs of the
 * rendered images, and "status" will be omitted.
 *
 * Important: the image map may contain values that are null. This indicates that rendering
 * of that specific node has failed. This may be due to the node id not existing, or other
 * reasons such has the node having no renderable components. It is guaranteed that any node
 * that was requested for rendering will be represented in this map whether or not the
 * render succeeded.
 *
 * > Path parameters
 *
 * key String
 * File to export images from
 *
 * > Query parameters
 *
 * ids String
 * A comma separated list of node IDs to render
 *
 * scale Number
 * A number between 0.01 and 4, the image scaling factor
 *
 * format String
 * A string enum for the image output format, can be "jpg", "png", or "svg"
 */
export interface ImageResponse {
    images: { [key: string]: string };
    status: number;
    err?:   string;
}

/**
 * GET /v1/files/:key/comments
 *
 * > Description
 * A list of comments left on the file.
 *
 * > Path parameters
 * key String
 * File to get comments from
 */
export interface CommentsResponse {
    comments: Comment[];
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
    user: User;
}

/**
 * A description of a user
 *
 * The user who left the comment
 */
export interface User {
    handle:  string;
    img_url: string;
}

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
export module Convert {
    export function toFileResponse(json: string): FileResponse {
        return cast(JSON.parse(json), o("FileResponse"));
    }

    export function fileResponseToJson(value: FileResponse): string {
        return JSON.stringify(value, null, 2);
    }

    export function toImageResponse(json: string): ImageResponse {
        return cast(JSON.parse(json), o("ImageResponse"));
    }

    export function imageResponseToJson(value: ImageResponse): string {
        return JSON.stringify(value, null, 2);
    }

    export function toCommentsResponse(json: string): CommentsResponse {
        return cast(JSON.parse(json), o("CommentsResponse"));
    }

    export function commentsResponseToJson(value: CommentsResponse): string {
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
        "FileResponse": {
            document: o("Document"),
            components: m(o("Component")),
            schemaVersion: 3.14,
        },
        "Component": {
            id: "",
            name: "",
            visible: false,
            type: e("NodeType"),
            effects: a(o("Effect")),
            layoutGrids: a(o("LayoutGrid")),
            opacity: 3.14,
            transitionID: u(null, ""),
            absoluteBoundingBox: o("Rectangle"),
            blendMode: e("BlendMode"),
            backgroundColor: o("Color"),
            constraints: o("LayoutConstraint"),
            isMask: false,
            clipsContent: false,
            exportSettings: a(o("ExportSetting")),
            preserveRatio: false,
            children: a(o("Node1")),
        },
        "Rectangle": {
            x: 3.14,
            y: 3.14,
            width: 3.14,
            height: 3.14,
        },
        "Color": {
            r: 3.14,
            g: 3.14,
            b: 3.14,
            a: 3.14,
        },
        "Node1": {
            id: u(null, ""),
            name: u(null, ""),
            visible: u(null, false),
            type: u(null, e("NodeType")),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("Color")),
            exportSettings: u(null, a(o("ExportSetting"))),
            effects: u(null, a(o("Effect"))),
            layoutGrids: u(null, a(o("LayoutGrid"))),
            opacity: u(null, 3.14),
            transitionID: u(null, ""),
            absoluteBoundingBox: u(null, o("Rectangle")),
            blendMode: u(null, e("BlendMode")),
            constraints: u(null, o("LayoutConstraint")),
            isMask: u(null, false),
            clipsContent: u(null, false),
            preserveRatio: u(null, false),
            strokeAlign: u(null, e("StrokeAlign")),
            strokeWeight: u(null, 3.14),
            fills: u(null, a(o("Paint"))),
            strokes: u(null, a(o("Paint"))),
            x: u(null, 3.14),
            y: u(null, 3.14),
            width: u(null, 3.14),
            height: u(null, 3.14),
            characters: u(null, ""),
            style: u(null, o("TypeStyle")),
            characterStyleOverrides: u(null, a(3.14)),
            styleOverrideTable: u(null, m(o("TypeStyle"))),
            componentId: u(null, ""),
        },
        "NodeNode": {
            id: u(null, ""),
            name: u(null, ""),
            visible: u(null, false),
            type: u(null, e("NodeType")),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("Color")),
            exportSettings: u(null, a(o("ExportSetting"))),
            effects: u(null, a(o("Effect"))),
            layoutGrids: u(null, a(o("LayoutGrid"))),
            opacity: u(null, 3.14),
            transitionID: u(null, ""),
            absoluteBoundingBox: u(null, o("Rectangle")),
            blendMode: u(null, e("BlendMode")),
            constraints: u(null, o("LayoutConstraint")),
            isMask: u(null, false),
            clipsContent: u(null, false),
            preserveRatio: u(null, false),
            strokeAlign: u(null, e("StrokeAlign")),
            strokeWeight: u(null, 3.14),
            fills: u(null, a(o("Paint"))),
            strokes: u(null, a(o("Paint"))),
            x: u(null, 3.14),
            y: u(null, 3.14),
            width: u(null, 3.14),
            height: u(null, 3.14),
            characters: u(null, ""),
            style: u(null, o("TypeStyle")),
            characterStyleOverrides: u(null, a(3.14)),
            styleOverrideTable: u(null, m(o("TypeStyle"))),
            componentId: u(null, ""),
        },
        "LayoutConstraint": {
            vertical: e("Vertical"),
            horizontal: e("Horizontal"),
        },
        "Effect": {
            type: e("EffectType"),
            radius: 3.14,
            visible: false,
            color: o("Color"),
            blendMode: e("BlendMode"),
            offset: o("Vector2D"),
        },
        "Vector2D": {
            x: 3.14,
            y: 3.14,
        },
        "ExportSetting": {
            suffix: "",
            format: e("Format"),
            constraint: o("Constraint"),
        },
        "Constraint": {
            type: e("ConstraintType"),
            value: 3.14,
        },
        "Paint": {
            type: e("PaintType"),
            visible: false,
            opacity: 3.14,
            color: u(null, o("Color")),
            gradientHandlePositions: u(null, a(o("Vector2D"))),
            gradientStops: u(null, a(o("ColorStop"))),
            scaleMode: u(null, e("ScaleMode")),
        },
        "ColorStop": {
            color: o("Color"),
            position: 3.14,
        },
        "LayoutGrid": {
            pattern: e("Pattern"),
            sectionSize: 3.14,
            visible: false,
            color: o("Color"),
            alignment: e("Alignment"),
            gutterSize: 3.14,
            offset: 3.14,
            count: 3.14,
        },
        "TypeStyle": {
            lineHeightPx: 3.14,
            fontPostScriptName: "",
            fontWeight: 3.14,
            lineHeightPercent: 3.14,
            textAlignVertical: e("TextAlignVertical"),
            fontSize: 3.14,
            italic: false,
            fills: a(o("Paint")),
            fontFamily: "",
            textAlignHorizontal: e("TextAlignHorizontal"),
            letterSpacing: 3.14,
        },
        "Document": {
            id: "",
            name: "",
            visible: false,
            type: e("NodeType"),
            children: a(o("Node2")),
        },
        "Node2": {
            id: u(null, ""),
            name: u(null, ""),
            visible: u(null, false),
            type: u(null, e("NodeType")),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("Color")),
            exportSettings: u(null, a(o("ExportSetting"))),
            effects: u(null, a(o("Effect"))),
            layoutGrids: u(null, a(o("LayoutGrid"))),
            opacity: u(null, 3.14),
            transitionID: u(null, ""),
            absoluteBoundingBox: u(null, o("Rectangle")),
            blendMode: u(null, e("BlendMode")),
            constraints: u(null, o("LayoutConstraint")),
            isMask: u(null, false),
            clipsContent: u(null, false),
            preserveRatio: u(null, false),
            strokeAlign: u(null, e("StrokeAlign")),
            strokeWeight: u(null, 3.14),
            fills: u(null, a(o("Paint"))),
            strokes: u(null, a(o("Paint"))),
            x: u(null, 3.14),
            y: u(null, 3.14),
            width: u(null, 3.14),
            height: u(null, 3.14),
            characters: u(null, ""),
            style: u(null, o("TypeStyle")),
            characterStyleOverrides: u(null, a(3.14)),
            styleOverrideTable: u(null, m(o("TypeStyle"))),
            componentId: u(null, ""),
        },
        "ImageResponse": {
            images: m(""),
            status: 3.14,
            err: u(null, ""),
        },
        "CommentsResponse": {
            comments: a(o("Comment")),
        },
        "Comment": {
            id: "",
            file_key: "",
            parent_id: u(null, ""),
            user: o("User"),
        },
        "User": {
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
        "StrokeAlign": [
            "CENTER",
            "INSIDE",
            "OUTSIDE",
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
        "NodeType": [
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
    };
}
