// @flow

// To parse this data:
//
//   const Convert = require("./file");
//
//   const vector = Convert.toVector(json);
//   const color = Convert.toColor(json);
//   const colorStop = Convert.toColorStop(json);
//   const layoutConstraint = Convert.toLayoutConstraint(json);
//   const text = Convert.toText(json);
//   const frame = Convert.toFrame(json);
//   const rectangle = Convert.toRectangle(json);
//   const layoutGrid = Convert.toLayoutGrid(json);
//   const effect = Convert.toEffect(json);
//   const slice = Convert.toSlice(json);
//   const star = Convert.toStar(json);
//   const line = Convert.toLine(json);
//   const blendMode = Convert.toBlendMode(json);
//   const instance = Convert.toInstance(json);
//   const vector2D = Convert.toVector2D(json);
//   const typeStyle = Convert.toTypeStyle(json);
//   const booleanGroup = Convert.toBooleanGroup(json);
//   const canvas = Convert.toCanvas(json);
//   const document = Convert.toDocument(json);
//   const nodeType = Convert.toNodeType(json);
//   const exportSetting = Convert.toExportSetting(json);
//   const component = Convert.toComponent(json);
//   const fileResponse = Convert.toFileResponse(json);
//   const constraint = Convert.toConstraint(json);
//   const paint = Convert.toPaint(json);
//   const regularPolygon = Convert.toRegularPolygon(json);
//   const ellipse = Convert.toEllipse(json);
//   const group = Convert.toGroup(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

/**
 * A vector network, consisting of vertices and edges
 */
export type Vector = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
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
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
};

/**
 * A rectangle
 *
 * Bounding box of the node in absolute space coordinates
 *
 * An array of nodes that are being boolean operated on
 *
 * An array of nodes that are direct children of this node
 *
 * An array of top level layers on the canvas
 *
 * An array of canvases attached to the document
 */
export type AbsoluteBoundingBox = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius: number;
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
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
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
};

/**
 * How this node blends with nodes behind it in the scene
 * (see blend mode section for more details)
 */
export type BlendMode =
      "COLOR"
    | "COLOR_BURN"
    | "COLOR_DODGE"
    | "DARKEN"
    | "DIFFERENCE"
    | "EXCLUSION"
    | "HARD_LIGHT"
    | "HUE"
    | "LIGHTEN"
    | "LINEAR_BURN"
    | "LINEAR_DODGE"
    | "LUMINOSITY"
    | "MULTIPLY"
    | "NORMAL"
    | "OVERLAY"
    | "PASS_THROUGH"
    | "SATURATION"
    | "SCREEN"
    | "SOFT_LIGHT";

/**
 * Layout constraint relative to containing Frame
 *
 * Horizontal and vertical layout constraints for node
 */
export type Constraints = {
    /**
     * Horizontal constraint as an enum
     * "LEFT": Node is laid out relative to left of the containing frame
     * "RIGHT": Node is laid out relative to right of the containing frame
     * "CENTER": Node is horizontally centered relative to containing frame
     * "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
     * (node stretches with frame)
     * "SCALE": Node scales horizontally with containing frame
     */
    horizontal: Horizontal;
    /**
     * Vertical constraint as an enum
     * "TOP": Node is laid out relative to top of the containing frame
     * "BOTTOM": Node is laid out relative to bottom of the containing frame
     * "CENTER": Node is vertically centered relative to containing frame
     * "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
     * (node stretches with frame)
     * "SCALE": Node scales vertically with containing frame
     */
    vertical: Vertical;
};

/**
 * Horizontal constraint as an enum
 * "LEFT": Node is laid out relative to left of the containing frame
 * "RIGHT": Node is laid out relative to right of the containing frame
 * "CENTER": Node is horizontally centered relative to containing frame
 * "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
 * (node stretches with frame)
 * "SCALE": Node scales horizontally with containing frame
 */
export type Horizontal =
      "CENTER"
    | "LEFT"
    | "LEFT_RIGHT"
    | "RIGHT"
    | "SCALE";

/**
 * Vertical constraint as an enum
 * "TOP": Node is laid out relative to top of the containing frame
 * "BOTTOM": Node is laid out relative to bottom of the containing frame
 * "CENTER": Node is vertically centered relative to containing frame
 * "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
 * (node stretches with frame)
 * "SCALE": Node scales vertically with containing frame
 */
export type Vertical =
      "BOTTOM"
    | "CENTER"
    | "SCALE"
    | "TOP"
    | "TOP_BOTTOM";

/**
 * A visual effect such as a shadow or blur
 *
 * An array of effects attached to this node
 * (see effects sectionfor more details)
 */
export type EffectElement = {
    blendMode?: BlendMode;
    color?:     Olor;
    offset?:    Offset;
    /**
     * Radius of the blur effect (applies to shadows as well)
     */
    radius: number;
    /**
     * Type of effect as a string enum
     */
    type: EffectType;
    /**
     * Is the effect active?
     */
    visible: boolean;
};

/**
 * An RGBA color
 *
 * Solid color of the paint
 *
 * Color attached to corresponding position
 *
 * Color of the grid
 *
 * Background color of the node
 *
 * Background color of the canvas
 */
export type Olor = {
    /**
     * Alpha channel value, between 0 and 1
     */
    a: number;
    /**
     * Blue channel value, between 0 and 1
     */
    b: number;
    /**
     * Green channel value, between 0 and 1
     */
    g: number;
    /**
     * Red channel value, between 0 and 1
     */
    r: number;
};

/**
 * A 2d vector
 *
 * This field contains three vectors, each of which are a position in
 * normalized object space (normalized object space is if the top left
 * corner of the bounding box of the object is (0, 0) and the bottom
 * right is (1,1)). The first position corresponds to the start of the
 * gradient (value 0 for the purposes of calculating gradient stops),
 * the second position is the end of the gradient (value 1), and the
 * third handle position determines the width of the gradient (only
 * relevant for non-linear gradients).
 */
export type Offset = {
    /**
     * X coordinate of the vector
     */
    x: number;
    /**
     * Y coordinate of the vector
     */
    y: number;
};

/**
 * Type of effect as a string enum
 */
export type EffectType =
      "BACKGROUND_BLUR"
    | "DROP_SHADOW"
    | "INNER_SHADOW"
    | "LAYER_BLUR";

/**
 * Format and size to export an asset at
 *
 * An array of export settings representing images to export from node
 *
 * An array of export settings representing images to export from this node
 *
 * An array of export settings representing images to export from the canvas
 */
export type ExportSettingElement = {
    /**
     * Constraint that determines sizing of exported asset
     */
    constraint: ExportSettingConstraint;
    /**
     * Image type, string enum
     */
    format: Format;
    /**
     * File suffix to append to all filenames
     */
    suffix: string;
};

/**
 * Sizing constraint for exports
 *
 * Constraint that determines sizing of exported asset
 */
export type ExportSettingConstraint = {
    /**
     * Type of constraint to apply; string enum with potential values below
     * "SCALE": Scale by value
     * "WIDTH": Scale proportionally and set width to value
     * "HEIGHT": Scale proportionally and set height to value
     */
    type: ConstraintType;
    /**
     * See type property for effect of this field
     */
    value: number;
};

/**
 * Type of constraint to apply; string enum with potential values below
 * "SCALE": Scale by value
 * "WIDTH": Scale proportionally and set width to value
 * "HEIGHT": Scale proportionally and set height to value
 */
export type ConstraintType =
      "HEIGHT"
    | "SCALE"
    | "WIDTH";

/**
 * Image type, string enum
 */
export type Format =
      "JPG"
    | "PNG"
    | "SVG";

/**
 * A solid color, gradient, or image texture that can be applied as fills or strokes
 *
 * An array of fill paints applied to the node
 *
 * An array of stroke paints applied to the node
 *
 * Paints applied to characters
 */
export type PaintElement = {
    /**
     * Solid color of the paint
     */
    color?: Olor;
    /**
     * This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left
     * corner of the bounding box of the object is (0, 0) and the bottom
     * right is (1,1)). The first position corresponds to the start of the
     * gradient (value 0 for the purposes of calculating gradient stops),
     * the second position is the end of the gradient (value 1), and the
     * third handle position determines the width of the gradient (only
     * relevant for non-linear gradients).
     */
    gradientHandlePositions?: Offset[];
    /**
     * Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly
     * between neighboring gradient stops.
     */
    gradientStops?: ColorStopElement[];
    /**
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     */
    opacity: number;
    /**
     * Image scaling mode
     */
    scaleMode?: string;
    /**
     * Type of paint as a string enum
     */
    type: PaintType;
    /**
     * Is the paint enabled?
     */
    visible: boolean;
};

/**
 * A position color pair representing a gradient stop
 *
 * Positions of key points along the gradient axis with the colors
 * anchored there. Colors along the gradient are interpolated smoothly
 * between neighboring gradient stops.
 */
export type ColorStopElement = {
    /**
     * Color attached to corresponding position
     */
    color: Olor;
    /**
     * Value between 0 and 1 representing position along gradient axis
     */
    position: number;
};

/**
 * Type of paint as a string enum
 */
export type PaintType =
      "EMOJI"
    | "GRADIENT_ANGULAR"
    | "GRADIENT_DIAMOND"
    | "GRADIENT_LINEAR"
    | "GRADIENT_RADIAL"
    | "IMAGE"
    | "SOLID";

/**
 * Where stroke is drawn relative to the vector outline as a string enum
 * "INSIDE": draw stroke inside the shape boundary
 * "OUTSIDE": draw stroke outside the shape boundary
 * "CENTER": draw stroke centered along the shape boundary
 */
export type StrokeAlign =
      "CENTER"
    | "INSIDE"
    | "OUTSIDE";

/**
 * the type of the node, refer to table below for details
 */
export type NodeType =
      "BOOLEAN"
    | "CANVAS"
    | "COMPONENT"
    | "DOCUMENT"
    | "ELLIPSE"
    | "FRAME"
    | "GROUP"
    | "INSTANCE"
    | "LINE"
    | "RECTANGLE"
    | "REGULAR_POLYGON"
    | "SLICE"
    | "STAR"
    | "TEXT"
    | "VECTOR";

/**
 * An RGBA color
 */
export type Color = {
    /**
     * Alpha channel value, between 0 and 1
     */
    a: number;
    /**
     * Blue channel value, between 0 and 1
     */
    b: number;
    /**
     * Green channel value, between 0 and 1
     */
    g: number;
    /**
     * Red channel value, between 0 and 1
     */
    r: number;
};

/**
 * A position color pair representing a gradient stop
 */
export type ColorStop = {
    /**
     * Color attached to corresponding position
     */
    color: Olor;
    /**
     * Value between 0 and 1 representing position along gradient axis
     */
    position: number;
};

/**
 * Layout constraint relative to containing Frame
 */
export type LayoutConstraint = {
    /**
     * Horizontal constraint as an enum
     * "LEFT": Node is laid out relative to left of the containing frame
     * "RIGHT": Node is laid out relative to right of the containing frame
     * "CENTER": Node is horizontally centered relative to containing frame
     * "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
     * (node stretches with frame)
     * "SCALE": Node scales horizontally with containing frame
     */
    horizontal: Horizontal;
    /**
     * Vertical constraint as an enum
     * "TOP": Node is laid out relative to top of the containing frame
     * "BOTTOM": Node is laid out relative to bottom of the containing frame
     * "CENTER": Node is vertically centered relative to containing frame
     * "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
     * (node stretches with frame)
     * "SCALE": Node scales vertically with containing frame
     */
    vertical: Vertical;
};

/**
 * A text box
 */
export type Text = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * Text contained within text box
     */
    characters: string;
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
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
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable: Tyle[];
    /**
     * Style of text including font family and weight (see type style
     * section for more information)
     */
    style: Tyle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
    /**
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     */
    characterStyleOverrides: number[];
};

/**
 * Metadata for character formatting
 *
 * Map from ID to TypeStyle for looking up style overrides
 *
 * Style of text including font family and weight (see type style
 * section for more information)
 */
export type Tyle = {
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
};

/**
 * Horizontal text alignment as string enum
 */
export type TextAlignHorizontal =
      "CENTER"
    | "JUSTIFIED"
    | "LEFT"
    | "RIGHT";

/**
 * Vertical text alignment as string enum
 */
export type TextAlignVertical =
      "BOTTOM"
    | "CENTER"
    | "TOP";

/**
 * A node of fixed size containing other nodes
 */
export type Frame = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Background color of the node
     */
    backgroundColor: Olor;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
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
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are direct children of this node
     */
    children: DocumentElement[];
};

/**
 * An array of nodes that are direct children of this node
 *
 * An array of nodes that are being boolean operated on
 *
 * An array of top level layers on the canvas
 *
 * An array of canvases attached to the document
 *
 * Node Properties
 * The root node
 *
 * The root node within the document
 *
 * Represents a single page
 *
 * A node of fixed size containing other nodes
 *
 * A logical grouping of nodes
 *
 * A vector network, consisting of vertices and edges
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * An ellipse
 *
 * A regular n-sided polygon
 *
 * A rectangle
 *
 * Bounding box of the node in absolute space coordinates
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * A mapping from node IDs to component metadata. This is to help you determine which
 * components each instance comes from. Currently the only piece of metadata available on
 * components is the name of the component, but more properties will be forthcoming.
 *
 * An instance of a component, changes to the component result in the same
 * changes applied to the instance
 */
export type DocumentElement = {
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    children?: DocumentElement[];
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * Background color of the canvas
     *
     * Background color of the node
     */
    backgroundColor?: Olor;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * An array of export settings representing images to export from this node
     */
    exportSettings?: ExportSettingElement[];
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects?: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode?: BlendMode;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints?: Constraints;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask?: boolean;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent?: boolean;
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio?: boolean;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
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
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: Tyle[];
    /**
     * Style of text including font family and weight (see type style
     * section for more information)
     */
    style?: Tyle;
    /**
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     */
    componentId?: string;
};

/**
 * Guides to align and place objects within a frame
 *
 * An array of layout grids attached to this node (see layout grids section
 * for more details). GROUP nodes do not have this attribute
 */
export type LayoutGridElement = {
    /**
     * Positioning of grid as a string enum
     * "MIN": Grid starts at the left or top of the frame
     * "MAX": Grid starts at the right or bottom of the frame
     * "CENTER": Grid is center aligned
     */
    alignment: Alignment;
    /**
     * Color of the grid
     */
    color: Olor;
    /**
     * Number of columns or rows
     */
    count: number;
    /**
     * Spacing in between columns and rows
     */
    gutterSize: number;
    /**
     * Spacing before the first column or row
     */
    offset: number;
    /**
     * Orientation of the grid as a string enum
     * "COLUMNS": Vertical grid
     * "ROWS": Horizontal grid
     * "GRID": Square grid
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
};

/**
 * Positioning of grid as a string enum
 * "MIN": Grid starts at the left or top of the frame
 * "MAX": Grid starts at the right or bottom of the frame
 * "CENTER": Grid is center aligned
 */
export type Alignment =
      "CENTER"
    | "MAX"
    | "MIN";

/**
 * Orientation of the grid as a string enum
 * "COLUMNS": Vertical grid
 * "ROWS": Horizontal grid
 * "GRID": Square grid
 */
export type Pattern =
      "COLUMNS"
    | "GRID"
    | "ROWS";

/**
 * A rectangle
 */
export type Rectangle = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius: number;
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
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
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
};

/**
 * Guides to align and place objects within a frame
 */
export type LayoutGrid = {
    /**
     * Positioning of grid as a string enum
     * "MIN": Grid starts at the left or top of the frame
     * "MAX": Grid starts at the right or bottom of the frame
     * "CENTER": Grid is center aligned
     */
    alignment: Alignment;
    /**
     * Color of the grid
     */
    color: Olor;
    /**
     * Number of columns or rows
     */
    count: number;
    /**
     * Spacing in between columns and rows
     */
    gutterSize: number;
    /**
     * Spacing before the first column or row
     */
    offset: number;
    /**
     * Orientation of the grid as a string enum
     * "COLUMNS": Vertical grid
     * "ROWS": Horizontal grid
     * "GRID": Square grid
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
};

/**
 * A visual effect such as a shadow or blur
 */
export type Effect = {
    blendMode?: BlendMode;
    color?:     Olor;
    offset?:    Offset;
    /**
     * Radius of the blur effect (applies to shadows as well)
     */
    radius: number;
    /**
     * Type of effect as a string enum
     */
    type: EffectType;
    /**
     * Is the effect active?
     */
    visible: boolean;
};

/**
 * A rectangular region of the canvas that can be exported
 */
export type Slice = {
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * An array of export settings representing images to export from this node
     */
    exportSettings: ExportSettingElement[];
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
};

/**
 * A regular star shape
 */
export type Star = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
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
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
};

/**
 * A straight line
 */
export type Line = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
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
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
};

/**
 * An instance of a component, changes to the component result in the same
 * changes applied to the instance
 */
export type Instance = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Background color of the node
     */
    backgroundColor: Olor;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
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
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     */
    componentId: string;
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are direct children of this node
     */
    children: DocumentElement[];
};

/**
 * A 2d vector
 */
export type Vector2D = {
    /**
     * X coordinate of the vector
     */
    x: number;
    /**
     * Y coordinate of the vector
     */
    y: number;
};

/**
 * Metadata for character formatting
 */
export type TypeStyle = {
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
};

/**
 * A group that has a boolean operation applied to it
 */
export type BooleanGroup = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
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
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are being boolean operated on
     */
    children: DocumentElement[];
};

/**
 * Represents a single page
 */
export type Canvas = {
    /**
     * Background color of the canvas
     */
    backgroundColor: Olor;
    /**
     * An array of top level layers on the canvas
     */
    children: DocumentElement[];
    /**
     * An array of export settings representing images to export from the canvas
     */
    exportSettings: ExportSettingElement[];
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
};

/**
 * Node Properties
 * The root node
 */
export type Document = {
    /**
     * An array of canvases attached to the document
     */
    children: DocumentElement[];
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
};

/**
 * Format and size to export an asset at
 */
export type ExportSetting = {
    /**
     * Constraint that determines sizing of exported asset
     */
    constraint: ExportSettingConstraint;
    /**
     * Image type, string enum
     */
    format: Format;
    /**
     * File suffix to append to all filenames
     */
    suffix: string;
};

/**
 * A node that can have instances created of it that share the same properties
 */
export type Component = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Background color of the node
     */
    backgroundColor: Olor;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
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
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are direct children of this node
     */
    children: DocumentElement[];
};

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
export type FileResponse = {
    /**
     * A mapping from node IDs to component metadata. This is to help you determine which
     * components each instance comes from. Currently the only piece of metadata available on
     * components is the name of the component, but more properties will be forthcoming.
     */
    components: { [key: string]: ComponentValue };
    /**
     * The root node within the document
     */
    document:      Ocument;
    schemaVersion: number;
};

/**
 * A node that can have instances created of it that share the same properties
 *
 * An array of nodes that are direct children of this node
 *
 * An array of nodes that are being boolean operated on
 *
 * An array of top level layers on the canvas
 *
 * An array of canvases attached to the document
 *
 * A mapping from node IDs to component metadata. This is to help you determine which
 * components each instance comes from. Currently the only piece of metadata available on
 * components is the name of the component, but more properties will be forthcoming.
 */
export type ComponentValue = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Background color of the node
     */
    backgroundColor: Olor;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
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
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are direct children of this node
     */
    children: DocumentElement[];
};

/**
 * Node Properties
 * The root node
 *
 * An array of nodes that are direct children of this node
 *
 * An array of canvases attached to the document
 *
 * An array of top level layers on the canvas
 *
 * An array of nodes that are being boolean operated on
 *
 * The root node within the document
 */
export type Ocument = {
    /**
     * An array of canvases attached to the document
     */
    children: DocumentElement[];
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
};

/**
 * Sizing constraint for exports
 */
export type Constraint = {
    /**
     * Type of constraint to apply; string enum with potential values below
     * "SCALE": Scale by value
     * "WIDTH": Scale proportionally and set width to value
     * "HEIGHT": Scale proportionally and set height to value
     */
    type: ConstraintType;
    /**
     * See type property for effect of this field
     */
    value: number;
};

/**
 * A solid color, gradient, or image texture that can be applied as fills or strokes
 */
export type Paint = {
    /**
     * Solid color of the paint
     */
    color?: Olor;
    /**
     * This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left
     * corner of the bounding box of the object is (0, 0) and the bottom
     * right is (1,1)). The first position corresponds to the start of the
     * gradient (value 0 for the purposes of calculating gradient stops),
     * the second position is the end of the gradient (value 1), and the
     * third handle position determines the width of the gradient (only
     * relevant for non-linear gradients).
     */
    gradientHandlePositions?: Offset[];
    /**
     * Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly
     * between neighboring gradient stops.
     */
    gradientStops?: ColorStopElement[];
    /**
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     */
    opacity: number;
    /**
     * Image scaling mode
     */
    scaleMode?: string;
    /**
     * Type of paint as a string enum
     */
    type: PaintType;
    /**
     * Is the paint enabled?
     */
    visible: boolean;
};

/**
 * A regular n-sided polygon
 */
export type RegularPolygon = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
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
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
};

/**
 * An ellipse
 */
export type Ellipse = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
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
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSettingElement[];
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * An array of stroke paints applied to the node
     */
    strokes: PaintElement[];
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
};

/**
 * A logical grouping of nodes
 */
export type Group = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: EffectElement[];
    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGridElement[];
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: AbsoluteBoundingBox;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: string;
    /**
     * whether or not the node is visible on the canvas
     */
    visible: boolean;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Background color of the node
     */
    backgroundColor: Olor;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: Constraints;
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
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are direct children of this node
     */
    children: DocumentElement[];
};

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
function toVector(json: string): Vector {
    return cast(JSON.parse(json), o("Vector"));
}

function vectorToJson(value: Vector): string {
    return JSON.stringify(value, null, 2);
}

function toColor(json: string): Color {
    return cast(JSON.parse(json), o("Color"));
}

function colorToJson(value: Color): string {
    return JSON.stringify(value, null, 2);
}

function toColorStop(json: string): ColorStop {
    return cast(JSON.parse(json), o("ColorStop"));
}

function colorStopToJson(value: ColorStop): string {
    return JSON.stringify(value, null, 2);
}

function toLayoutConstraint(json: string): LayoutConstraint {
    return cast(JSON.parse(json), o("LayoutConstraint"));
}

function layoutConstraintToJson(value: LayoutConstraint): string {
    return JSON.stringify(value, null, 2);
}

function toText(json: string): Text {
    return cast(JSON.parse(json), o("Text"));
}

function textToJson(value: Text): string {
    return JSON.stringify(value, null, 2);
}

function toFrame(json: string): Frame {
    return cast(JSON.parse(json), o("Frame"));
}

function frameToJson(value: Frame): string {
    return JSON.stringify(value, null, 2);
}

function toRectangle(json: string): Rectangle {
    return cast(JSON.parse(json), o("Rectangle"));
}

function rectangleToJson(value: Rectangle): string {
    return JSON.stringify(value, null, 2);
}

function toLayoutGrid(json: string): LayoutGrid {
    return cast(JSON.parse(json), o("LayoutGrid"));
}

function layoutGridToJson(value: LayoutGrid): string {
    return JSON.stringify(value, null, 2);
}

function toEffect(json: string): Effect {
    return cast(JSON.parse(json), o("Effect"));
}

function effectToJson(value: Effect): string {
    return JSON.stringify(value, null, 2);
}

function toSlice(json: string): Slice {
    return cast(JSON.parse(json), o("Slice"));
}

function sliceToJson(value: Slice): string {
    return JSON.stringify(value, null, 2);
}

function toStar(json: string): Star {
    return cast(JSON.parse(json), o("Star"));
}

function starToJson(value: Star): string {
    return JSON.stringify(value, null, 2);
}

function toLine(json: string): Line {
    return cast(JSON.parse(json), o("Line"));
}

function lineToJson(value: Line): string {
    return JSON.stringify(value, null, 2);
}

function toBlendMode(json: string): BlendMode {
    return cast(JSON.parse(json), e("BlendMode"));
}

function blendModeToJson(value: BlendMode): string {
    return JSON.stringify(value, null, 2);
}

function toInstance(json: string): Instance {
    return cast(JSON.parse(json), o("Instance"));
}

function instanceToJson(value: Instance): string {
    return JSON.stringify(value, null, 2);
}

function toVector2D(json: string): Vector2D {
    return cast(JSON.parse(json), o("Vector2D"));
}

function vector2DToJson(value: Vector2D): string {
    return JSON.stringify(value, null, 2);
}

function toTypeStyle(json: string): TypeStyle {
    return cast(JSON.parse(json), o("TypeStyle"));
}

function typeStyleToJson(value: TypeStyle): string {
    return JSON.stringify(value, null, 2);
}

function toBooleanGroup(json: string): BooleanGroup {
    return cast(JSON.parse(json), o("BooleanGroup"));
}

function booleanGroupToJson(value: BooleanGroup): string {
    return JSON.stringify(value, null, 2);
}

function toCanvas(json: string): Canvas {
    return cast(JSON.parse(json), o("Canvas"));
}

function canvasToJson(value: Canvas): string {
    return JSON.stringify(value, null, 2);
}

function toDocument(json: string): Document {
    return cast(JSON.parse(json), o("Document"));
}

function documentToJson(value: Document): string {
    return JSON.stringify(value, null, 2);
}

function toNodeType(json: string): NodeType {
    return cast(JSON.parse(json), e("NodeType"));
}

function nodeTypeToJson(value: NodeType): string {
    return JSON.stringify(value, null, 2);
}

function toExportSetting(json: string): ExportSetting {
    return cast(JSON.parse(json), o("ExportSetting"));
}

function exportSettingToJson(value: ExportSetting): string {
    return JSON.stringify(value, null, 2);
}

function toComponent(json: string): Component {
    return cast(JSON.parse(json), o("Component"));
}

function componentToJson(value: Component): string {
    return JSON.stringify(value, null, 2);
}

function toFileResponse(json: string): FileResponse {
    return cast(JSON.parse(json), o("FileResponse"));
}

function fileResponseToJson(value: FileResponse): string {
    return JSON.stringify(value, null, 2);
}

function toConstraint(json: string): Constraint {
    return cast(JSON.parse(json), o("Constraint"));
}

function constraintToJson(value: Constraint): string {
    return JSON.stringify(value, null, 2);
}

function toPaint(json: string): Paint {
    return cast(JSON.parse(json), o("Paint"));
}

function paintToJson(value: Paint): string {
    return JSON.stringify(value, null, 2);
}

function toRegularPolygon(json: string): RegularPolygon {
    return cast(JSON.parse(json), o("RegularPolygon"));
}

function regularPolygonToJson(value: RegularPolygon): string {
    return JSON.stringify(value, null, 2);
}

function toEllipse(json: string): Ellipse {
    return cast(JSON.parse(json), o("Ellipse"));
}

function ellipseToJson(value: Ellipse): string {
    return JSON.stringify(value, null, 2);
}

function toGroup(json: string): Group {
    return cast(JSON.parse(json), o("Group"));
}

function groupToJson(value: Group): string {
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
    "Vector": {
        effects: a(o("EffectElement")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("Constraints"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "AbsoluteBoundingBox": {
        effects: a(o("EffectElement")),
        cornerRadius: 3.14,
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("Constraints"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "Constraints": {
        horizontal: e("Horizontal"),
        vertical: e("Vertical"),
    },
    "EffectElement": {
        blendMode: u(null, e("BlendMode")),
        color: u(null, o("Olor")),
        offset: u(null, o("Offset")),
        radius: 3.14,
        type: e("EffectType"),
        visible: false,
    },
    "Olor": {
        a: 3.14,
        b: 3.14,
        g: 3.14,
        r: 3.14,
    },
    "Offset": {
        x: 3.14,
        y: 3.14,
    },
    "ExportSettingElement": {
        constraint: o("ExportSettingConstraint"),
        format: e("Format"),
        suffix: "",
    },
    "ExportSettingConstraint": {
        type: e("ConstraintType"),
        value: 3.14,
    },
    "PaintElement": {
        color: u(null, o("Olor")),
        gradientHandlePositions: u(null, a(o("Offset"))),
        gradientStops: u(null, a(o("ColorStopElement"))),
        opacity: 3.14,
        scaleMode: u(null, ""),
        type: e("PaintType"),
        visible: false,
    },
    "ColorStopElement": {
        color: o("Olor"),
        position: 3.14,
    },
    "Color": {
        a: 3.14,
        b: 3.14,
        g: 3.14,
        r: 3.14,
    },
    "ColorStop": {
        color: o("Olor"),
        position: 3.14,
    },
    "LayoutConstraint": {
        horizontal: e("Horizontal"),
        vertical: e("Vertical"),
    },
    "Text": {
        effects: a(o("EffectElement")),
        characters: "",
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        styleOverrideTable: a(o("Tyle")),
        style: o("Tyle"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("Constraints"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        strokes: a(o("PaintElement")),
        preserveRatio: false,
        characterStyleOverrides: a(3.14),
    },
    "Tyle": {
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
    "Frame": {
        effects: a(o("EffectElement")),
        layoutGrids: a(o("LayoutGridElement")),
        opacity: 3.14,
        name: "",
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        backgroundColor: o("Olor"),
        constraints: o("Constraints"),
        isMask: false,
        clipsContent: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        preserveRatio: false,
        children: a(o("DocumentElement")),
    },
    "DocumentElement": {
        children: u(null, a(o("DocumentElement"))),
        id: "",
        name: "",
        type: e("NodeType"),
        visible: false,
        backgroundColor: u(null, o("Olor")),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        preserveRatio: u(null, false),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        strokes: u(null, a(o("PaintElement"))),
        cornerRadius: u(null, 3.14),
        characters: u(null, ""),
        styleOverrideTable: u(null, a(o("Tyle"))),
        style: u(null, o("Tyle")),
        characterStyleOverrides: u(null, a(3.14)),
        componentId: u(null, ""),
    },
    "LayoutGridElement": {
        alignment: e("Alignment"),
        color: o("Olor"),
        count: 3.14,
        gutterSize: 3.14,
        offset: 3.14,
        pattern: e("Pattern"),
        sectionSize: 3.14,
        visible: false,
    },
    "Rectangle": {
        effects: a(o("EffectElement")),
        cornerRadius: 3.14,
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("Constraints"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "LayoutGrid": {
        alignment: e("Alignment"),
        color: o("Olor"),
        count: 3.14,
        gutterSize: 3.14,
        offset: 3.14,
        pattern: e("Pattern"),
        sectionSize: 3.14,
        visible: false,
    },
    "Effect": {
        blendMode: u(null, e("BlendMode")),
        color: u(null, o("Olor")),
        offset: u(null, o("Offset")),
        radius: 3.14,
        type: e("EffectType"),
        visible: false,
    },
    "Slice": {
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        exportSettings: a(o("ExportSettingElement")),
        id: "",
        name: "",
        type: e("NodeType"),
        visible: false,
    },
    "Star": {
        effects: a(o("EffectElement")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("Constraints"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "Line": {
        effects: a(o("EffectElement")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("Constraints"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "Instance": {
        effects: a(o("EffectElement")),
        layoutGrids: a(o("LayoutGridElement")),
        opacity: 3.14,
        name: "",
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        backgroundColor: o("Olor"),
        constraints: o("Constraints"),
        isMask: false,
        clipsContent: false,
        exportSettings: a(o("ExportSettingElement")),
        componentId: "",
        type: e("NodeType"),
        id: "",
        preserveRatio: false,
        children: a(o("DocumentElement")),
    },
    "Vector2D": {
        x: 3.14,
        y: 3.14,
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
    "BooleanGroup": {
        effects: a(o("EffectElement")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("Constraints"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        strokes: a(o("PaintElement")),
        preserveRatio: false,
        children: a(o("DocumentElement")),
    },
    "Canvas": {
        backgroundColor: o("Olor"),
        children: a(o("DocumentElement")),
        exportSettings: a(o("ExportSettingElement")),
        id: "",
        name: "",
        type: e("NodeType"),
        visible: false,
    },
    "Document": {
        children: a(o("DocumentElement")),
        id: "",
        name: "",
        type: e("NodeType"),
        visible: false,
    },
    "ExportSetting": {
        constraint: o("ExportSettingConstraint"),
        format: e("Format"),
        suffix: "",
    },
    "Component": {
        effects: a(o("EffectElement")),
        layoutGrids: a(o("LayoutGridElement")),
        opacity: 3.14,
        name: "",
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        backgroundColor: o("Olor"),
        constraints: o("Constraints"),
        isMask: false,
        clipsContent: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        preserveRatio: false,
        children: a(o("DocumentElement")),
    },
    "FileResponse": {
        components: m(o("ComponentValue")),
        document: o("Ocument"),
        schemaVersion: 3.14,
    },
    "ComponentValue": {
        effects: a(o("EffectElement")),
        layoutGrids: a(o("LayoutGridElement")),
        opacity: 3.14,
        name: "",
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        backgroundColor: o("Olor"),
        constraints: o("Constraints"),
        isMask: false,
        clipsContent: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        preserveRatio: false,
        children: a(o("DocumentElement")),
    },
    "Ocument": {
        children: a(o("DocumentElement")),
        id: "",
        name: "",
        type: e("NodeType"),
        visible: false,
    },
    "Constraint": {
        type: e("ConstraintType"),
        value: 3.14,
    },
    "Paint": {
        color: u(null, o("Olor")),
        gradientHandlePositions: u(null, a(o("Offset"))),
        gradientStops: u(null, a(o("ColorStopElement"))),
        opacity: 3.14,
        scaleMode: u(null, ""),
        type: e("PaintType"),
        visible: false,
    },
    "RegularPolygon": {
        effects: a(o("EffectElement")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("Constraints"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "Ellipse": {
        effects: a(o("EffectElement")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("Constraints"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "Group": {
        effects: a(o("EffectElement")),
        layoutGrids: a(o("LayoutGridElement")),
        opacity: 3.14,
        name: "",
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        backgroundColor: o("Olor"),
        constraints: o("Constraints"),
        isMask: false,
        clipsContent: false,
        exportSettings: a(o("ExportSettingElement")),
        type: e("NodeType"),
        id: "",
        preserveRatio: false,
        children: a(o("DocumentElement")),
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
};

module.exports = {
    "vectorToJson": vectorToJson,
    "toVector": toVector,
    "colorToJson": colorToJson,
    "toColor": toColor,
    "colorStopToJson": colorStopToJson,
    "toColorStop": toColorStop,
    "layoutConstraintToJson": layoutConstraintToJson,
    "toLayoutConstraint": toLayoutConstraint,
    "textToJson": textToJson,
    "toText": toText,
    "frameToJson": frameToJson,
    "toFrame": toFrame,
    "rectangleToJson": rectangleToJson,
    "toRectangle": toRectangle,
    "layoutGridToJson": layoutGridToJson,
    "toLayoutGrid": toLayoutGrid,
    "effectToJson": effectToJson,
    "toEffect": toEffect,
    "sliceToJson": sliceToJson,
    "toSlice": toSlice,
    "starToJson": starToJson,
    "toStar": toStar,
    "lineToJson": lineToJson,
    "toLine": toLine,
    "blendModeToJson": blendModeToJson,
    "toBlendMode": toBlendMode,
    "instanceToJson": instanceToJson,
    "toInstance": toInstance,
    "vector2DToJson": vector2DToJson,
    "toVector2D": toVector2D,
    "typeStyleToJson": typeStyleToJson,
    "toTypeStyle": toTypeStyle,
    "booleanGroupToJson": booleanGroupToJson,
    "toBooleanGroup": toBooleanGroup,
    "canvasToJson": canvasToJson,
    "toCanvas": toCanvas,
    "documentToJson": documentToJson,
    "toDocument": toDocument,
    "nodeTypeToJson": nodeTypeToJson,
    "toNodeType": toNodeType,
    "exportSettingToJson": exportSettingToJson,
    "toExportSetting": toExportSetting,
    "componentToJson": componentToJson,
    "toComponent": toComponent,
    "fileResponseToJson": fileResponseToJson,
    "toFileResponse": toFileResponse,
    "constraintToJson": constraintToJson,
    "toConstraint": toConstraint,
    "paintToJson": paintToJson,
    "toPaint": toPaint,
    "regularPolygonToJson": regularPolygonToJson,
    "toRegularPolygon": toRegularPolygon,
    "ellipseToJson": ellipseToJson,
    "toEllipse": toEllipse,
    "groupToJson": groupToJson,
    "toGroup": toGroup,
};
