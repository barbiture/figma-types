// To parse this data:
//
//   import { Convert, FileResponse, CommentsResponse, CommentRequest, ProjectsResponse, ProjectFilesResponse } from "./file";
//
//   const fileResponse = Convert.toFileResponse(json);
//   const commentsResponse = Convert.toCommentsResponse(json);
//   const commentRequest = Convert.toCommentRequest(json);
//   const projectsResponse = Convert.toProjectsResponse(json);
//   const projectFilesResponse = Convert.toProjectFilesResponse(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

export interface FileResponse {
    /**
     * Node Properties
     * The root node
     * The root node within the document
     */
    document: Document;
    /**
     * A mapping from node IDs to component metadata. This is to help you determine which
     * components each instance comes from. Currently the only piece of metadata available on
     * components is the name of the component, but more properties will be forthcoming.
     */
    components: { [key: string]: Component };
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    schemaVersion: number;
}

/**
 * A node that can have instances created of it that share the same properties
 */
export interface Component {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: Effect[];
    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGrid[];
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    opacity: number;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    name: string;
    /**
     * Bounding box of the node in absolute space coordinates
     * A rectangle
     */
    absoluteBoundingBox: Rectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    visible: boolean;
    /**
     * Enum describing how layer blends with layers below
     * This type is a string enum with the following possible values
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Background color of the node
     * An RGBA color
     * Solid color of the paint
     * Color attached to corresponding position
     * Color of the grid
     * Background color of the canvas
     */
    backgroundColor: Color;
    /**
     * Horizontal and vertical layout constraints for node
     * Layout constraint relative to containing Frame
     */
    constraints: LayoutConstraint;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    isMask: boolean;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    clipsContent: boolean;
    /**
     * An array of export settings representing images to export from node
     * An array of export settings representing images to export from this node
     * An array of export settings representing images to export from the canvas
     */
    exportSettings: ExportSetting[];
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    id: string;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    preserveRatio: boolean;
    /**
     * An array of nodes that are direct children of this node
     * An array of nodes that are being boolean operated on
     * An array of top level layers on the canvas
     * An array of canvases attached to the document
     */
    children: Node[];
}

/**
 * Bounding box of the node in absolute space coordinates
 * A rectangle
 */
export interface Rectangle {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: Effect[];
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    cornerRadius: number;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    opacity: number;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
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
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    strokeWeight: number;
    /**
     * An array of fill paints applied to the node
     * An array of stroke paints applied to the node
     * Paints applied to characters
     */
    fills: Paint[];
    /**
     * Bounding box of the node in absolute space coordinates
     * A rectangle
     */
    absoluteBoundingBox: Rectangle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    visible: boolean;
    /**
     * Enum describing how layer blends with layers below
     * This type is a string enum with the following possible values
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: BlendMode;
    /**
     * Horizontal and vertical layout constraints for node
     * Layout constraint relative to containing Frame
     */
    constraints: LayoutConstraint;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    isMask: boolean;
    /**
     * An array of export settings representing images to export from node
     * An array of export settings representing images to export from this node
     * An array of export settings representing images to export from the canvas
     */
    exportSettings: ExportSetting[];
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    id: string;
    /**
     * An array of fill paints applied to the node
     * An array of stroke paints applied to the node
     * Paints applied to characters
     */
    strokes: Paint[];
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    preserveRatio: boolean;
}

/**
 * Enum describing how layer blends with layers below
 * This type is a string enum with the following possible values
 * How this node blends with nodes behind it in the scene
 * (see blend mode section for more details)
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
 * Horizontal and vertical layout constraints for node
 * Layout constraint relative to containing Frame
 */
export interface LayoutConstraint {
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
}

/**
 * Horizontal constraint as an enum
 * "LEFT": Node is laid out relative to left of the containing frame
 * "RIGHT": Node is laid out relative to right of the containing frame
 * "CENTER": Node is horizontally centered relative to containing frame
 * "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
 * (node stretches with frame)
 * "SCALE": Node scales horizontally with containing frame
 */
export enum Horizontal {
    Center = "CENTER",
    Left = "LEFT",
    LeftRight = "LEFT_RIGHT",
    Right = "RIGHT",
    Scale = "SCALE",
}

/**
 * Vertical constraint as an enum
 * "TOP": Node is laid out relative to top of the containing frame
 * "BOTTOM": Node is laid out relative to bottom of the containing frame
 * "CENTER": Node is vertically centered relative to containing frame
 * "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
 * (node stretches with frame)
 * "SCALE": Node scales vertically with containing frame
 */
export enum Vertical {
    Bottom = "BOTTOM",
    Center = "CENTER",
    Scale = "SCALE",
    Top = "TOP",
    TopBottom = "TOP_BOTTOM",
}

/**
 * An array of effects attached to this node
 * (see effects sectionfor more details)
 * A visual effect such as a shadow or blur
 */
export interface Effect {
    /**
     * Type of effect as a string enum
     */
    type: EffectType;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    visible: boolean;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    radius: number;
    /**
     * Background color of the node
     * An RGBA color
     * Solid color of the paint
     * Color attached to corresponding position
     * Color of the grid
     * Background color of the canvas
     */
    color?: Color;
    /**
     * Enum describing how layer blends with layers below
     * This type is a string enum with the following possible values
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode?: BlendMode;
    /**
     * 2d vector offset within the frame.
     * A 2d vector
     * This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left
     * corner of the bounding box of the object is (0, 0) and the bottom
     * right is (1,1)). The first position corresponds to the start of the
     * gradient (value 0 for the purposes of calculating gradient stops),
     * the second position is the end of the gradient (value 1), and the
     * third handle position determines the width of the gradient (only
     * relevant for non-linear gradients).
     */
    offset?: Vector2;
}

/**
 * Background color of the node
 * An RGBA color
 * Solid color of the paint
 * Color attached to corresponding position
 * Color of the grid
 * Background color of the canvas
 */
export interface Color {
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    r: number;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    g: number;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    b: number;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    a: number;
}

/**
 * 2d vector offset within the frame.
 * A 2d vector
 * This field contains three vectors, each of which are a position in
 * normalized object space (normalized object space is if the top left
 * corner of the bounding box of the object is (0, 0) and the bottom
 * right is (1,1)). The first position corresponds to the start of the
 * gradient (value 0 for the purposes of calculating gradient stops),
 * the second position is the end of the gradient (value 1), and the
 * third handle position determines the width of the gradient (only
 * relevant for non-linear gradients).
 */
export interface Vector2 {
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    x: number;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
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
 * An array of export settings representing images to export from node
 * Format and size to export an asset at
 * An array of export settings representing images to export from the canvas
 * An array of export settings representing images to export from this node
 */
export interface ExportSetting {
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    suffix: string;
    /**
     * Image type, string enum
     */
    format: Format;
    /**
     * Constraint that determines sizing of exported asset
     * Sizing constraint for exports
     */
    constraint: Constraint;
}

/**
 * Constraint that determines sizing of exported asset
 * Sizing constraint for exports
 */
export interface Constraint {
    /**
     * Type of constraint to apply; string enum with potential values below
     * "SCALE": Scale by value
     * "WIDTH": Scale proportionally and set width to value
     * "HEIGHT": Scale proportionally and set height to value
     */
    type: ConstraintType;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    value: number;
}

/**
 * Type of constraint to apply; string enum with potential values below
 * "SCALE": Scale by value
 * "WIDTH": Scale proportionally and set width to value
 * "HEIGHT": Scale proportionally and set height to value
 */
export enum ConstraintType {
    Height = "HEIGHT",
    Scale = "SCALE",
    Width = "WIDTH",
}

/**
 * Image type, string enum
 */
export enum Format {
    Jpg = "JPG",
    PNG = "PNG",
    SVG = "SVG",
}

/**
 * An array of fill paints applied to the node
 * A solid color, gradient, or image texture that can be applied as fills or strokes
 * An array of stroke paints applied to the node
 * Paints applied to characters
 */
export interface Paint {
    /**
     * Type of paint as a string enum
     */
    type: PaintType;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    visible: boolean;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    opacity: number;
    /**
     * Background color of the node
     * An RGBA color
     * Solid color of the paint
     * Color attached to corresponding position
     * Color of the grid
     * Background color of the canvas
     */
    color?: Color;
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
    gradientHandlePositions?: Vector2[];
    /**
     * Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly
     * between neighboring gradient stops.
     */
    gradientStops?: ColorStop[];
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    scaleMode?: string;
}

/**
 * Positions of key points along the gradient axis with the colors
 * anchored there. Colors along the gradient are interpolated smoothly
 * between neighboring gradient stops.
 * A position color pair representing a gradient stop
 */
export interface ColorStop {
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    position: number;
    /**
     * Background color of the node
     * An RGBA color
     * Solid color of the paint
     * Color attached to corresponding position
     * Color of the grid
     * Background color of the canvas
     */
    color: Color;
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
 * "INSIDE": draw stroke inside the shape boundary
 * "OUTSIDE": draw stroke outside the shape boundary
 * "CENTER": draw stroke centered along the shape boundary
 */
export enum StrokeAlign {
    Center = "CENTER",
    Inside = "INSIDE",
    Outside = "OUTSIDE",
}

/**
 * the type of the node, refer to table below for details
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
 * An array of nodes that are direct children of this node
 * An array of nodes that are being boolean operated on
 * An array of top level layers on the canvas
 * An array of canvases attached to the document
 * Node Properties
 * The root node
 * The root node within the document
 * Represents a single page
 * A node of fixed size containing other nodes
 * A logical grouping of nodes
 * A vector network, consisting of vertices and edges
 * A group that has a boolean operation applied to it
 * A regular star shape
 * A straight line
 * An ellipse
 * A regular n-sided polygon
 * Bounding box of the node in absolute space coordinates
 * A rectangle
 * A text box
 * A rectangular region of the canvas that can be exported
 * A node that can have instances created of it that share the same properties
 * An instance of a component, changes to the component result in the same
 * changes applied to the instance
 */
export interface Node {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects?: Effect[];
    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGrid[];
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    cornerRadius?: number;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    characters?: string;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    opacity?: number;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    name: string;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
     */
    strokeAlign?: StrokeAlign;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    strokeWeight?: number;
    /**
     * An array of fill paints applied to the node
     * An array of stroke paints applied to the node
     * Paints applied to characters
     */
    fills?: Paint[];
    /**
     * Bounding box of the node in absolute space coordinates
     * A rectangle
     */
    absoluteBoundingBox?: Rectangle;
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: TypeStyle[];
    /**
     * Map from ID to TypeStyle for looking up style overrides
     * Metadata for character formatting
     * Style of text including font family and weight (see type style
     * section for more information)
     */
    style?: TypeStyle;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: string;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    visible: boolean;
    /**
     * Enum describing how layer blends with layers below
     * This type is a string enum with the following possible values
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode?: BlendMode;
    /**
     * Background color of the node
     * An RGBA color
     * Solid color of the paint
     * Color attached to corresponding position
     * Color of the grid
     * Background color of the canvas
     */
    backgroundColor?: Color;
    /**
     * Horizontal and vertical layout constraints for node
     * Layout constraint relative to containing Frame
     */
    constraints?: LayoutConstraint;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    isMask?: boolean;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    clipsContent?: boolean;
    /**
     * An array of export settings representing images to export from node
     * An array of export settings representing images to export from this node
     * An array of export settings representing images to export from the canvas
     */
    exportSettings?: ExportSetting[];
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    componentId?: string;
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    id: string;
    /**
     * An array of fill paints applied to the node
     * An array of stroke paints applied to the node
     * Paints applied to characters
     */
    strokes?: Paint[];
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    preserveRatio?: boolean;
    /**
     * An array of nodes that are direct children of this node
     * An array of nodes that are being boolean operated on
     * An array of top level layers on the canvas
     * An array of canvases attached to the document
     */
    children?: Node[];
    /**
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
}

/**
 * An array of layout grids attached to this node (see layout grids section
 * for more details). GROUP nodes do not have this attribute
 * Guides to align and place objects within a frame
 */
export interface LayoutGrid {
    /**
     * Orientation of the grid as a string enum
     * "COLUMNS": Vertical grid
     * "ROWS": Horizontal grid
     * "GRID": Square grid
     */
    pattern: Pattern;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    sectionSize: number;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    visible: boolean;
    /**
     * Background color of the node
     * An RGBA color
     * Solid color of the paint
     * Color attached to corresponding position
     * Color of the grid
     * Background color of the canvas
     */
    color: Color;
    /**
     * Positioning of grid as a string enum
     * "MIN": Grid starts at the left or top of the frame
     * "MAX": Grid starts at the right or bottom of the frame
     * "CENTER": Grid is center aligned
     */
    alignment: Alignment;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    gutterSize: number;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    offset: number;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    count: number;
}

/**
 * Positioning of grid as a string enum
 * "MIN": Grid starts at the left or top of the frame
 * "MAX": Grid starts at the right or bottom of the frame
 * "CENTER": Grid is center aligned
 */
export enum Alignment {
    Center = "CENTER",
    Max = "MAX",
    Min = "MIN",
}

/**
 * Orientation of the grid as a string enum
 * "COLUMNS": Vertical grid
 * "ROWS": Horizontal grid
 * "GRID": Square grid
 */
export enum Pattern {
    Columns = "COLUMNS",
    Grid = "GRID",
    Rows = "ROWS",
}

/**
 * Map from ID to TypeStyle for looking up style overrides
 * Metadata for character formatting
 * Style of text including font family and weight (see type style
 * section for more information)
 */
export interface TypeStyle {
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    lineHeightPx: number;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    fontPostScriptName: string;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    fontWeight: number;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    lineHeightPercent: number;
    /**
     * Vertical text alignment as string enum
     */
    textAlignVertical: TextAlignVertical;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    fontSize: number;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    italic: boolean;
    /**
     * An array of fill paints applied to the node
     * An array of stroke paints applied to the node
     * Paints applied to characters
     */
    fills: Paint[];
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    fontFamily: string;
    /**
     * Horizontal text alignment as string enum
     */
    textAlignHorizontal: TextAlignHorizontal;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
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
 * Node Properties
 * The root node
 * The root node within the document
 */
export interface Document {
    /**
     * An array of nodes that are direct children of this node
     * An array of nodes that are being boolean operated on
     * An array of top level layers on the canvas
     * An array of canvases attached to the document
     */
    children: Node[];
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    id: string;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    name: string;
    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    visible: boolean;
    /**
     * the type of the node, refer to table below for details
     */
    type: NodeType;
}

export interface CommentsResponse {
    comments: Comment[];
}

/**
 * A comment or reply left by a user
 */
export interface Comment {
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    message: string;
    /**
     * Enables basic storage and retrieval of dates and times.
     */
    created_at: string;
    /**
     * A description of a user
     * The user who left the comment
     */
    user: User;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    order_id: number;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    parent_id: string;
    /**
     * 2d vector offset within the frame.
     * A 2d vector
     * This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left
     * corner of the bounding box of the object is (0, 0) and the bottom
     * right is (1,1)). The first position corresponds to the start of the
     * gradient (value 0 for the purposes of calculating gradient stops),
     * the second position is the end of the gradient (value 1), and the
     * third handle position determines the width of the gradient (only
     * relevant for non-linear gradients).
     * A relative offset within a frame
     */
    client_meta: ClientMeta;
    /**
     * If set, when the comment was resolved
     */
    resolved_at?: string;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    id: string;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    file_key: string;
}

/**
 * 2d vector offset within the frame.
 * A 2d vector
 * This field contains three vectors, each of which are a position in
 * normalized object space (normalized object space is if the top left
 * corner of the bounding box of the object is (0, 0) and the bottom
 * right is (1,1)). The first position corresponds to the start of the
 * gradient (value 0 for the purposes of calculating gradient stops),
 * the second position is the end of the gradient (value 1), and the
 * third handle position determines the width of the gradient (only
 * relevant for non-linear gradients).
 * A relative offset within a frame
 */
export interface ClientMeta {
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    x?: number;
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    y?: number;
    /**
     * Unique id specifying the frame.
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     */
    node_id?: string[];
    /**
     * 2d vector offset within the frame.
     * A 2d vector
     * This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left
     * corner of the bounding box of the object is (0, 0) and the bottom
     * right is (1,1)). The first position corresponds to the start of the
     * gradient (value 0 for the purposes of calculating gradient stops),
     * the second position is the end of the gradient (value 1), and the
     * third handle position determines the width of the gradient (only
     * relevant for non-linear gradients).
     */
    node_offset?: Vector2;
}

/**
 * A description of a user
 * The user who left the comment
 */
export interface User {
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    handle: string;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    img_url: string;
}

export interface CommentRequest {
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    message: string;
    /**
     * 2d vector offset within the frame.
     * A 2d vector
     * This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left
     * corner of the bounding box of the object is (0, 0) and the bottom
     * right is (1,1)). The first position corresponds to the start of the
     * gradient (value 0 for the purposes of calculating gradient stops),
     * the second position is the end of the gradient (value 1), and the
     * third handle position determines the width of the gradient (only
     * relevant for non-linear gradients).
     * A relative offset within a frame
     */
    client_meta: ClientMeta;
}

export interface ProjectsResponse {
    projects: Project[];
}

export interface Project {
    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    id: number;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    name: string;
}

export interface ProjectFilesResponse {
    files: File[];
}

export interface File {
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    key: string;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    name: string;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    thumbnail_url: string;
    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    last_modified: string;
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

    export function toCommentsResponse(json: string): CommentsResponse {
        return cast(JSON.parse(json), o("CommentsResponse"));
    }

    export function commentsResponseToJson(value: CommentsResponse): string {
        return JSON.stringify(value, null, 2);
    }

    export function toCommentRequest(json: string): CommentRequest {
        return cast(JSON.parse(json), o("CommentRequest"));
    }

    export function commentRequestToJson(value: CommentRequest): string {
        return JSON.stringify(value, null, 2);
    }

    export function toProjectsResponse(json: string): ProjectsResponse {
        return cast(JSON.parse(json), o("ProjectsResponse"));
    }

    export function projectsResponseToJson(value: ProjectsResponse): string {
        return JSON.stringify(value, null, 2);
    }

    export function toProjectFilesResponse(json: string): ProjectFilesResponse {
        return cast(JSON.parse(json), o("ProjectFilesResponse"));
    }

    export function projectFilesResponseToJson(value: ProjectFilesResponse): string {
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
            effects: a(o("Effect")),
            layoutGrids: a(o("LayoutGrid")),
            opacity: 3.14,
            name: "",
            absoluteBoundingBox: o("Rectangle"),
            transitionNodeID: u(null, ""),
            visible: false,
            blendMode: e("BlendMode"),
            backgroundColor: o("Color"),
            constraints: o("LayoutConstraint"),
            isMask: false,
            clipsContent: false,
            exportSettings: a(o("ExportSetting")),
            type: e("NodeType"),
            id: "",
            preserveRatio: false,
            children: a(o("Node")),
        },
        "Rectangle": {
            effects: a(o("Effect")),
            cornerRadius: 3.14,
            opacity: 3.14,
            name: "",
            strokeAlign: e("StrokeAlign"),
            strokeWeight: 3.14,
            fills: a(o("Paint")),
            absoluteBoundingBox: o("Rectangle"),
            transitionNodeID: u(null, ""),
            visible: false,
            blendMode: e("BlendMode"),
            constraints: o("LayoutConstraint"),
            isMask: false,
            exportSettings: a(o("ExportSetting")),
            type: e("NodeType"),
            id: "",
            strokes: a(o("Paint")),
            preserveRatio: false,
        },
        "LayoutConstraint": {
            vertical: e("Vertical"),
            horizontal: e("Horizontal"),
        },
        "Effect": {
            type: e("EffectType"),
            visible: false,
            radius: 3.14,
            color: u(null, o("Color")),
            blendMode: u(null, e("BlendMode")),
            offset: u(null, o("Vector2")),
        },
        "Color": {
            r: 3.14,
            g: 3.14,
            b: 3.14,
            a: 3.14,
        },
        "Vector2": {
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
            gradientHandlePositions: u(null, a(o("Vector2"))),
            gradientStops: u(null, a(o("ColorStop"))),
            scaleMode: u(null, ""),
        },
        "ColorStop": {
            position: 3.14,
            color: o("Color"),
        },
        "Node": {
            effects: u(null, a(o("Effect"))),
            layoutGrids: u(null, a(o("LayoutGrid"))),
            cornerRadius: u(null, 3.14),
            characters: u(null, ""),
            opacity: u(null, 3.14),
            name: "",
            strokeAlign: u(null, e("StrokeAlign")),
            strokeWeight: u(null, 3.14),
            fills: u(null, a(o("Paint"))),
            absoluteBoundingBox: u(null, o("Rectangle")),
            styleOverrideTable: u(null, a(o("TypeStyle"))),
            style: u(null, o("TypeStyle")),
            transitionNodeID: u(null, ""),
            visible: false,
            blendMode: u(null, e("BlendMode")),
            backgroundColor: u(null, o("Color")),
            constraints: u(null, o("LayoutConstraint")),
            isMask: u(null, false),
            clipsContent: u(null, false),
            exportSettings: u(null, a(o("ExportSetting"))),
            componentId: u(null, ""),
            type: e("NodeType"),
            id: "",
            strokes: u(null, a(o("Paint"))),
            preserveRatio: u(null, false),
            children: u(null, a(o("Node"))),
            characterStyleOverrides: u(null, a(3.14)),
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
            children: a(o("Node")),
            id: "",
            name: "",
            visible: false,
            type: e("NodeType"),
        },
        "CommentsResponse": {
            comments: a(o("Comment")),
        },
        "Comment": {
            message: "",
            created_at: "",
            user: o("User"),
            order_id: 3.14,
            parent_id: "",
            client_meta: o("ClientMeta"),
            resolved_at: u(null, ""),
            id: "",
            file_key: "",
        },
        "ClientMeta": {
            x: u(null, 3.14),
            y: u(null, 3.14),
            node_id: u(null, a("")),
            node_offset: u(null, o("Vector2")),
        },
        "User": {
            handle: "",
            img_url: "",
        },
        "CommentRequest": {
            message: "",
            client_meta: o("ClientMeta"),
        },
        "ProjectsResponse": {
            projects: a(o("Project")),
        },
        "Project": {
            id: 3.14,
            name: "",
        },
        "ProjectFilesResponse": {
            files: a(o("File")),
        },
        "File": {
            key: "",
            name: "",
            thumbnail_url: "",
            last_modified: "",
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
