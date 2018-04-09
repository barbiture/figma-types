// @flow

// To parse this data:
//
//   const Convert = require("./file");
//
//   const fileResponse = Convert.toFileResponse(json);
//   const commentsResponse = Convert.toCommentsResponse(json);
//   const commentRequest = Convert.toCommentRequest(json);
//   const projectsResponse = Convert.toProjectsResponse(json);
//   const projectFilesResponse = Convert.toProjectFilesResponse(json);
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
export type FileResponse = {
    /**
     * A mapping from node IDs to component metadata. This is to help you determine which
     * components each instance comes from. Currently the only piece of metadata available on
     * components is the name of the component, but more properties will be forthcoming.
     */
    components: { [key: string]: Component };
    /**
     * The root node within the document
     */
    document:      FileResponseDocument;
    schemaVersion: number;
};

/**
 * A node that can have instances created of it that share the same properties
 */
export type Component = {
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: Rectangle;
    /**
     * Background color of the node
     */
    backgroundColor: Color;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: LendMode;
    /**
     * An array of nodes that are direct children of this node
     */
    children: DocumentElement[];
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent: boolean;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: LayoutConstraint;
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: Effect[];
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSetting[];
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    layoutGrids: LayoutGrid[];
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: null | string;
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
 * Bounding box of the node in absolute space coordinates
 *
 * A rectangle
 */
export type Rectangle = {
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox: Rectangle;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode: LendMode;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints: LayoutConstraint;
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius: number;
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: Effect[];
    /**
     * An array of export settings representing images to export from node
     */
    exportSettings: ExportSetting[];
    /**
     * An array of fill paints applied to the node
     */
    fills: Paint[];
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask: boolean;
    /**
     * the name given to the node by the user in the tool.
     */
    name: string;
    /**
     * Opacity of the node
     */
    opacity: number;
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio: boolean;
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
     */
    strokeAlign: StrokeAlign;
    /**
     * An array of stroke paints applied to the node
     */
    strokes: Paint[];
    /**
     * The weight of strokes on the node
     */
    strokeWeight: number;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID: null | string;
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
 * How this node blends with nodes behind it in the scene
 * (see blend mode section for more details)
 *
 * Enum describing how layer blends with layers below
 * This type is a string enum with the following possible values
 */
export type LendMode =
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
 * Horizontal and vertical layout constraints for node
 *
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
 * An array of effects attached to this node
 * (see effects sectionfor more details)
 *
 * A visual effect such as a shadow or blur
 */
export type Effect = {
    /**
     * Enum describing how layer blends with layers below
     * This type is a string enum with the following possible values
     */
    blendMode?: LendMode;
    /**
     * An RGBA color
     */
    color?: Color;
    /**
     * A 2d vector
     */
    offset?: Vector2;
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
 * Background color of the node
 *
 * An RGBA color
 *
 * Color of the grid
 *
 * Solid color of the paint
 *
 * Background color of the canvas
 *
 * Color attached to corresponding position
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
 * 2d vector offset within the frame.
 *
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
export type Vector2 = {
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
export type ExportSetting = {
    /**
     * Constraint that determines sizing of exported asset
     */
    constraint: Constraint;
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
 * Constraint that determines sizing of exported asset
 *
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
 * An array of fill paints applied to the node
 *
 * A solid color, gradient, or image texture that can be applied as fills or strokes
 *
 * An array of stroke paints applied to the node
 *
 * Paints applied to characters
 */
export type Paint = {
    /**
     * Solid color of the paint
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
 * Positions of key points along the gradient axis with the colors
 * anchored there. Colors along the gradient are interpolated smoothly
 * between neighboring gradient stops.
 *
 * A position color pair representing a gradient stop
 */
export type ColorStop = {
    /**
     * Color attached to corresponding position
     */
    color: Color;
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
 * Bounding box of the node in absolute space coordinates
 *
 * A rectangle
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
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
    backgroundColor?: Color;
    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * An array of export settings representing images to export from this node
     */
    exportSettings?: ExportSetting[];
    /**
     * Bounding box of the node in absolute space coordinates
     */
    absoluteBoundingBox?: Rectangle;
    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    blendMode?: LendMode;
    /**
     * Does this node clip content outside of its bounds?
     */
    clipsContent?: boolean;
    /**
     * Horizontal and vertical layout constraints for node
     */
    constraints?: LayoutConstraint;
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects?: Effect[];
    /**
     * Does this node mask sibling nodes in front of it?
     */
    isMask?: boolean;
    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    layoutGrids?: LayoutGrid[];
    /**
     * Opacity of the node
     */
    opacity?: number;
    /**
     * Keep height and width constrained to same ratio
     */
    preserveRatio?: boolean;
    /**
     * Node ID of node to transition to in prototyping
     */
    transitionNodeID?: null | string;
    /**
     * An array of fill paints applied to the node
     */
    fills?: Paint[];
    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
     */
    strokeAlign?: StrokeAlign;
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: Paint[];
    /**
     * The weight of strokes on the node
     */
    strokeWeight?: number;
    /**
     * Radius of each corner of the rectangle
     */
    cornerRadius?: number;
    /**
     * Text contained within text box
     */
    characters?: string;
    /**
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     */
    characterStyleOverrides?: number[];
    /**
     * Style of text including font family and weight (see type style
     * section for more information)
     */
    style?: TypeStyle;
    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    styleOverrideTable?: TypeStyle[];
    /**
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     */
    componentId?: string;
};

/**
 * An array of layout grids attached to this node (see layout grids section
 * for more details). GROUP nodes do not have this attribute
 *
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
    color: Color;
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
 * Map from ID to TypeStyle for looking up style overrides
 *
 * Metadata for character formatting
 *
 * Style of text including font family and weight (see type style
 * section for more information)
 */
export type TypeStyle = {
    /**
     * Paints applied to characters
     */
    fills: Paint[];
    /**
     * Font family of text (standard name)
     */
    fontFamily: string;
    /**
     * PostScript font name
     */
    fontPostScriptName: string;
    /**
     * Font size in px
     */
    fontSize: number;
    /**
     * Numeric font weight
     */
    fontWeight: number;
    /**
     * Is text italicized?
     */
    italic: boolean;
    /**
     * Space between characters in px
     */
    letterSpacing: number;
    /**
     * Line height as a percentage of normal line height
     */
    lineHeightPercent: number;
    /**
     * Line height in px
     */
    lineHeightPx: number;
    /**
     * Horizontal text alignment as string enum
     */
    textAlignHorizontal: TextAlignHorizontal;
    /**
     * Vertical text alignment as string enum
     */
    textAlignVertical: TextAlignVertical;
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
 * Node Properties
 * The root node
 *
 * The root node within the document
 */
export type FileResponseDocument = {
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
 * GET /v1/files/:key/comments
 *
 * > Description
 * A list of comments left on the file.
 *
 * > Path parameters
 * key String
 * File to get comments from
 */
export type CommentsResponse = {
    comments: Comment[];
};

/**
 * A comment or reply left by a user
 */
export type Comment = {
    client_meta: ClientMeta;
    /**
     * The time at which the comment was left
     */
    created_at: string;
    /**
     * The file in which the comment lives
     */
    file_key: string;
    /**
     * Unique identifier for comment
     */
    id: string;
    /**
     * (MISSING IN DOCS)
     * The content of the comment
     */
    message: string;
    /**
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    order_id: number;
    /**
     * If present, the id of the comment to which this is the reply
     */
    parent_id: string;
    /**
     * If set, when the comment was resolved
     */
    resolved_at: null | string;
    /**
     * The user who left the comment
     */
    user: User;
};

/**
 * 2d vector offset within the frame.
 *
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
 *
 * A relative offset within a frame
 */
export type ClientMeta = {
    /**
     * X coordinate of the vector
     */
    x?: number;
    /**
     * Y coordinate of the vector
     */
    y?: number;
    /**
     * Unique id specifying the frame.
     */
    node_id?: string[];
    /**
     * 2d vector offset within the frame.
     */
    node_offset?: Vector2;
};

/**
 * The user who left the comment
 *
 * A description of a user
 */
export type User = {
    handle:  string;
    img_url: string;
};

/**
 * POST /v1/files/:key/comments
 *
 * > Description
 * Posts a new comment on the file.
 *
 * > Path parameters
 * key String
 * File to get comments from
 *
 * > Body parameters
 * message String
 * The text contents of the comment to post
 *
 * client_meta Vector2 | FrameOffset
 * The position of where to place the comment. This can either be an absolute canvas
 * position or the relative position within a frame.
 *
 * > Return value
 * The Comment that was successfully posted
 *
 * > Error codes
 * 404 The specified file was not found
 */
export type CommentRequest = {
    client_meta: ClientMeta;
    message:     string;
};

/**
 * GET /v1/teams/:team_id/projects
 *
 * > Description
 * Lists the projects for a specified team. Note that this will only return projects visible
 * to the authenticated user or owner of the developer token.
 *
 * > Path parameters
 * team_id String
 * Id of the team to list projects from
 */
export type ProjectsResponse = {
    projects: Project[];
};

export type Project = {
    id:   number;
    name: string;
};

/**
 * GET /v1/projects/:project_id/files
 *
 * > Description
 * List the files in a given project.
 *
 * > Path parameters
 * project_id String
 * Id of the project to list files from
 */
export type ProjectFilesResponse = {
    files: File[];
};

export type File = {
    key: string;
    /**
     * utc date in iso8601
     */
    last_modified: string;
    name:          string;
    thumbnail_url: string;
};

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
function toFileResponse(json: string): FileResponse {
    return cast(JSON.parse(json), r("FileResponse"));
}

function fileResponseToJson(value: FileResponse): string {
    return JSON.stringify(value, null, 2);
}

function toCommentsResponse(json: string): CommentsResponse {
    return cast(JSON.parse(json), r("CommentsResponse"));
}

function commentsResponseToJson(value: CommentsResponse): string {
    return JSON.stringify(value, null, 2);
}

function toCommentRequest(json: string): CommentRequest {
    return cast(JSON.parse(json), r("CommentRequest"));
}

function commentRequestToJson(value: CommentRequest): string {
    return JSON.stringify(value, null, 2);
}

function toProjectsResponse(json: string): ProjectsResponse {
    return cast(JSON.parse(json), r("ProjectsResponse"));
}

function projectsResponseToJson(value: ProjectsResponse): string {
    return JSON.stringify(value, null, 2);
}

function toProjectFilesResponse(json: string): ProjectFilesResponse {
    return cast(JSON.parse(json), r("ProjectFilesResponse"));
}

function projectFilesResponseToJson(value: ProjectFilesResponse): string {
    return JSON.stringify(value, null, 2);
}

function cast<T>(obj: any, typ: any): T {
    if (!isValid(typ, obj)) {
        throw Error(`Invalid value`);
    }
    return obj;
}

function isValid(typ: any, val: any): boolean {
    if (typ === "any") { return true; }
    if (typ === null) { return val === null; }
    if (typ === false) { return false; }
    while (typeof typ === "object" && typ.ref !== undefined) {
        typ = typeMap[typ.ref];
    }
    if (Array.isArray(typ)) { return isValidEnum(typ, val); }
    if (typeof typ === "object") {
        return typ.hasOwnProperty("unionMembers") ? isValidUnion(typ.unionMembers, val)
            : typ.hasOwnProperty("arrayItems")    ? isValidArray(typ.arrayItems, val)
            : typ.hasOwnProperty("props")         ? isValidObject(typ.props, typ.additional, val)
            : false;
    }
    return isValidPrimitive(typ, val);
}

function isValidPrimitive(typ: string, val: any) {
    return typeof typ === typeof val;
}

function isValidUnion(typs: any[], val: any): boolean {
    // val must validate against one typ in typs
    return typs.some((typ) => isValid(typ, val));
}

function isValidEnum(cases: string[], val: any): boolean {
    return cases.indexOf(val) !== -1;
}

function isValidArray(typ: any, val: any): boolean {
    // val must be an array with no invalid elements
    return Array.isArray(val) && val.every((element) => {
        return isValid(typ, element);
    });
}

function isValidObject(props: { [k: string]: any }, additional: any, val: any): boolean {
    if (val === null || typeof val !== "object" || Array.isArray(val)) {
        return false;
    }
    return Object.getOwnPropertyNames(val).every((key) => {
        const prop = val[key];
        if (Object.prototype.hasOwnProperty.call(props, key)) {
            return isValid(props[key], prop);
        }
        return isValid(additional, prop);
    });
}

function a(typ: any) {
    return { arrayItems: typ };
}

function u(...typs: any[]) {
    return { unionMembers: typs };
}

function o(props: { [k: string]: any }, additional: any) {
    return { props, additional };
}

function m(additional: any) {
    return { props: {}, additional };
}

function r(name: string) {
    return { ref: name };
}

const typeMap: any = {
    "FileResponse": o({
        components: m(r("Component")),
        document: r("FileResponseDocument"),
        schemaVersion: 3.14,
    }, "any"),
    "Component": o({
        absoluteBoundingBox: r("Rectangle"),
        backgroundColor: r("Color"),
        blendMode: r("LendMode"),
        children: a(r("DocumentElement")),
        clipsContent: true,
        constraints: r("LayoutConstraint"),
        effects: a(r("Effect")),
        exportSettings: a(r("ExportSetting")),
        id: "",
        isMask: true,
        layoutGrids: a(r("LayoutGrid")),
        name: "",
        opacity: 3.14,
        preserveRatio: true,
        transitionNodeID: u(null, ""),
        type: r("NodeType"),
        visible: true,
    }, "any"),
    "Rectangle": o({
        absoluteBoundingBox: r("Rectangle"),
        blendMode: r("LendMode"),
        constraints: r("LayoutConstraint"),
        cornerRadius: 3.14,
        effects: a(r("Effect")),
        exportSettings: a(r("ExportSetting")),
        fills: a(r("Paint")),
        id: "",
        isMask: true,
        name: "",
        opacity: 3.14,
        preserveRatio: true,
        strokeAlign: r("StrokeAlign"),
        strokes: a(r("Paint")),
        strokeWeight: 3.14,
        transitionNodeID: u(null, ""),
        type: r("NodeType"),
        visible: true,
    }, "any"),
    "LayoutConstraint": o({
        horizontal: r("Horizontal"),
        vertical: r("Vertical"),
    }, "any"),
    "Effect": o({
        blendMode: u(undefined, r("LendMode")),
        color: u(undefined, r("Color")),
        offset: u(undefined, r("Vector2")),
        radius: 3.14,
        type: r("EffectType"),
        visible: true,
    }, "any"),
    "Color": o({
        a: 3.14,
        b: 3.14,
        g: 3.14,
        r: 3.14,
    }, "any"),
    "Vector2": o({
        x: 3.14,
        y: 3.14,
    }, "any"),
    "ExportSetting": o({
        constraint: r("Constraint"),
        format: r("Format"),
        suffix: "",
    }, "any"),
    "Constraint": o({
        type: r("ConstraintType"),
        value: 3.14,
    }, "any"),
    "Paint": o({
        color: u(undefined, r("Color")),
        gradientHandlePositions: u(undefined, a(r("Vector2"))),
        gradientStops: u(undefined, a(r("ColorStop"))),
        opacity: 3.14,
        scaleMode: u(undefined, ""),
        type: r("PaintType"),
        visible: true,
    }, "any"),
    "ColorStop": o({
        color: r("Color"),
        position: 3.14,
    }, "any"),
    "DocumentElement": o({
        children: u(undefined, a(r("DocumentElement"))),
        id: "",
        name: "",
        type: r("NodeType"),
        visible: true,
        backgroundColor: u(undefined, r("Color")),
        exportSettings: u(undefined, a(r("ExportSetting"))),
        absoluteBoundingBox: u(undefined, r("Rectangle")),
        blendMode: u(undefined, r("LendMode")),
        clipsContent: u(undefined, true),
        constraints: u(undefined, r("LayoutConstraint")),
        effects: u(undefined, a(r("Effect"))),
        isMask: u(undefined, true),
        layoutGrids: u(undefined, a(r("LayoutGrid"))),
        opacity: u(undefined, 3.14),
        preserveRatio: u(undefined, true),
        transitionNodeID: u(undefined, u(null, "")),
        fills: u(undefined, a(r("Paint"))),
        strokeAlign: u(undefined, r("StrokeAlign")),
        strokes: u(undefined, a(r("Paint"))),
        strokeWeight: u(undefined, 3.14),
        cornerRadius: u(undefined, 3.14),
        characters: u(undefined, ""),
        characterStyleOverrides: u(undefined, a(3.14)),
        style: u(undefined, r("TypeStyle")),
        styleOverrideTable: u(undefined, a(r("TypeStyle"))),
        componentId: u(undefined, ""),
    }, "any"),
    "LayoutGrid": o({
        alignment: r("Alignment"),
        color: r("Color"),
        count: 3.14,
        gutterSize: 3.14,
        offset: 3.14,
        pattern: r("Pattern"),
        sectionSize: 3.14,
        visible: true,
    }, "any"),
    "TypeStyle": o({
        fills: a(r("Paint")),
        fontFamily: "",
        fontPostScriptName: "",
        fontSize: 3.14,
        fontWeight: 3.14,
        italic: true,
        letterSpacing: 3.14,
        lineHeightPercent: 3.14,
        lineHeightPx: 3.14,
        textAlignHorizontal: r("TextAlignHorizontal"),
        textAlignVertical: r("TextAlignVertical"),
    }, "any"),
    "FileResponseDocument": o({
        children: a(r("DocumentElement")),
        id: "",
        name: "",
        type: r("NodeType"),
        visible: true,
    }, "any"),
    "CommentsResponse": o({
        comments: a(r("Comment")),
    }, "any"),
    "Comment": o({
        client_meta: r("ClientMeta"),
        created_at: "",
        file_key: "",
        id: "",
        message: "",
        order_id: 3.14,
        parent_id: "",
        resolved_at: u(null, ""),
        user: r("User"),
    }, "any"),
    "ClientMeta": o({
        x: u(undefined, 3.14),
        y: u(undefined, 3.14),
        node_id: u(undefined, a("")),
        node_offset: u(undefined, r("Vector2")),
    }, "any"),
    "User": o({
        handle: "",
        img_url: "",
    }, "any"),
    "CommentRequest": o({
        client_meta: r("ClientMeta"),
        message: "",
    }, "any"),
    "ProjectsResponse": o({
        projects: a(r("Project")),
    }, "any"),
    "Project": o({
        id: 3.14,
        name: "",
    }, "any"),
    "ProjectFilesResponse": o({
        files: a(r("File")),
    }, "any"),
    "File": o({
        key: "",
        last_modified: "",
        name: "",
        thumbnail_url: "",
    }, "any"),
    "LendMode": [
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

module.exports = {
    "fileResponseToJson": fileResponseToJson,
    "toFileResponse": toFileResponse,
    "commentsResponseToJson": commentsResponseToJson,
    "toCommentsResponse": toCommentsResponse,
    "commentRequestToJson": commentRequestToJson,
    "toCommentRequest": toCommentRequest,
    "projectsResponseToJson": projectsResponseToJson,
    "toProjectsResponse": toProjectsResponse,
    "projectFilesResponseToJson": projectFilesResponseToJson,
    "toProjectFilesResponse": toProjectFilesResponse,
};
