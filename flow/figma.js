// @flow

// To parse this data:
//
//   const Convert = require("./file");
//
//   const fileResponse = Convert.toFileResponse(json);
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
    document:      Ocument;
    schemaVersion: number;
};

/**
 * A node that can have instances created of it that share the same properties
 */
export type Component = {
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
    exportSettings: ExportSetting[];
    /**
     * the type of the node, refer to table below for details
     */
    type: AbsoluteBoundingBoxType;
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
    children: Document[];
};

/**
 * Bounding box of the node in absolute space coordinates
 *
 * A rectangle
 */
export type AbsoluteBoundingBox = {
    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    effects: Effect[];
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
    fills: Paint[];
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
    exportSettings: ExportSetting[];
    /**
     * the type of the node, refer to table below for details
     */
    type: AbsoluteBoundingBoxType;
    /**
     * a string uniquely identifying this node within the document
     */
    id: string;
    /**
     * An array of stroke paints applied to the node
     */
    strokes: Paint[];
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
 * Horizontal and vertical layout constraints for node
 *
 * Layout constraint relative to containing Frame
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
 * An array of effects attached to this node
 * (see effects sectionfor more details)
 *
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
 * Solid color of the paint
 *
 * An RGBA color
 *
 * Background color of the node
 *
 * Color attached to corresponding position
 *
 * Background color of the canvas
 *
 * Color of the grid
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
 * This field contains three vectors, each of which are a position in
 * normalized object space (normalized object space is if the top left
 * corner of the bounding box of the object is (0, 0) and the bottom
 * right is (1,1)). The first position corresponds to the start of the
 * gradient (value 0 for the purposes of calculating gradient stops),
 * the second position is the end of the gradient (value 1), and the
 * third handle position determines the width of the gradient (only
 * relevant for non-linear gradients).
 *
 * A 2d vector
 *
 * 2d vector offset within the frame.
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
 * An array of export settings representing images to export from node
 *
 * Format and size to export an asset at
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
export type AbsoluteBoundingBoxType =
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
export type Document = {
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    children?: Document[];
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
    type: AbsoluteBoundingBoxType;
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
    exportSettings?: ExportSetting[];
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
    fills?: Paint[];
    /**
     * An array of stroke paints applied to the node
     */
    strokes?: Paint[];
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
 * Map from ID to TypeStyle for looking up style overrides
 *
 * Metadata for character formatting
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
export type Ocument = {
    /**
     * An array of canvases attached to the document
     */
    children: Document[];
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
    type: AbsoluteBoundingBoxType;
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
    /**
     * (MISSING IN DOCS)
     * The content of the comment
     */
    message: string;
    /**
     * Enables basic storage and retrieval of dates and times.
     */
    created_at: string;
    /**
     * The user who left the comment
     */
    user: User;
    /**
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    order_id: number;
    /**
     * If present, the id of the comment to which this is the reply
     */
    parent_id:   string;
    client_meta: ClientMeta;
    /**
     * Enables basic storage and retrieval of dates and times.
     */
    resolved_at: string;
    /**
     * Unique identifier for comment
     */
    id: string;
    /**
     * The file in which the comment lives
     */
    file_key: string;
};

/**
 * This field contains three vectors, each of which are a position in
 * normalized object space (normalized object space is if the top left
 * corner of the bounding box of the object is (0, 0) and the bottom
 * right is (1,1)). The first position corresponds to the start of the
 * gradient (value 0 for the purposes of calculating gradient stops),
 * the second position is the end of the gradient (value 1), and the
 * third handle position determines the width of the gradient (only
 * relevant for non-linear gradients).
 *
 * A 2d vector
 *
 * 2d vector offset within the frame.
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
    node_offset?: Offset;
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

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
function toFileResponse(json: string): FileResponse {
    return cast(JSON.parse(json), o("FileResponse"));
}

function fileResponseToJson(value: FileResponse): string {
    return JSON.stringify(value, null, 2);
}

function toCommentsResponse(json: string): CommentsResponse {
    return cast(JSON.parse(json), o("CommentsResponse"));
}

function commentsResponseToJson(value: CommentsResponse): string {
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
        components: m(o("Component")),
        document: o("Ocument"),
        schemaVersion: 3.14,
    },
    "Component": {
        effects: a(o("Effect")),
        layoutGrids: a(o("LayoutGrid")),
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
        exportSettings: a(o("ExportSetting")),
        type: e("AbsoluteBoundingBoxType"),
        id: "",
        preserveRatio: false,
        children: a(o("Document")),
    },
    "AbsoluteBoundingBox": {
        effects: a(o("Effect")),
        cornerRadius: 3.14,
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("Paint")),
        absoluteBoundingBox: o("AbsoluteBoundingBox"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("Constraints"),
        isMask: false,
        exportSettings: a(o("ExportSetting")),
        type: e("AbsoluteBoundingBoxType"),
        id: "",
        strokes: a(o("Paint")),
        preserveRatio: false,
    },
    "Constraints": {
        horizontal: e("Horizontal"),
        vertical: e("Vertical"),
    },
    "Effect": {
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
    "ExportSetting": {
        constraint: o("Constraint"),
        format: e("Format"),
        suffix: "",
    },
    "Constraint": {
        type: e("ConstraintType"),
        value: 3.14,
    },
    "Paint": {
        color: u(null, o("Olor")),
        gradientHandlePositions: u(null, a(o("Offset"))),
        gradientStops: u(null, a(o("ColorStop"))),
        opacity: 3.14,
        scaleMode: u(null, ""),
        type: e("PaintType"),
        visible: false,
    },
    "ColorStop": {
        color: o("Olor"),
        position: 3.14,
    },
    "Document": {
        children: u(null, a(o("Document"))),
        id: "",
        name: "",
        type: e("AbsoluteBoundingBoxType"),
        visible: false,
        backgroundColor: u(null, o("Olor")),
        exportSettings: u(null, a(o("ExportSetting"))),
        effects: u(null, a(o("Effect"))),
        layoutGrids: u(null, a(o("LayoutGrid"))),
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
        fills: u(null, a(o("Paint"))),
        strokes: u(null, a(o("Paint"))),
        cornerRadius: u(null, 3.14),
        characters: u(null, ""),
        styleOverrideTable: u(null, a(o("Tyle"))),
        style: u(null, o("Tyle")),
        characterStyleOverrides: u(null, a(3.14)),
        componentId: u(null, ""),
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
    "Tyle": {
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
    "Ocument": {
        children: a(o("Document")),
        id: "",
        name: "",
        type: e("AbsoluteBoundingBoxType"),
        visible: false,
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
        resolved_at: "",
        id: "",
        file_key: "",
    },
    "ClientMeta": {
        x: u(null, 3.14),
        y: u(null, 3.14),
        node_id: u(null, a("")),
        node_offset: u(null, o("Offset")),
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
    "AbsoluteBoundingBoxType": [
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
};
