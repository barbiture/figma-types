// To parse this data:
//
//   import { Convert, Node, Color, Global, User, BlendMode, Canvas, Document, Constraint, Comment } from "./file";
//
//   const node = Convert.toNode(json);
//   const color = Convert.toColor(json);
//   const global = Convert.toGlobal(json);
//   const user = Convert.toUser(json);
//   const blendMode = Convert.toBlendMode(json);
//   const canvas = Convert.toCanvas(json);
//   const document = Convert.toDocument(json);
//   const constraint = Convert.toConstraint(json);
//   const comment = Convert.toComment(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

/**
 * An array of canvases attached to the document
 *
 * Properties are shared across all nodes
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
 * Whether or not the node is visible on the canvas
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
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
    type: NodeType;
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     */
    children?: NodeNode[];
    /**
     * Background color of the canvas
     */
    backgroundColor?: NodeColor;
}

/**
 * An RGBA color
 *
 * Background color of the canvas
 */
export interface NodeColor {
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
 * An array of canvases attached to the document
 *
 * Properties are shared across all nodes
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
 * Whether or not the node is visible on the canvas
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 *
 * An array of top level layers on the canvas
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
    type: NodeType;
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     */
    children?: NodeNode[];
    /**
     * Background color of the canvas
     */
    backgroundColor?: NodeColor;
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
    type: NodeType;
}

/**
 * A description of a user
 */
export interface User {
    handle:  string;
    img_url: string;
}

/**
 * Enum describing how layer blends with layers below
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
 * An array of canvases attached to the document
 *
 * Properties are shared across all nodes
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
 * Whether or not the node is visible on the canvas
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
export interface Canvas {
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
     * An array of top level layers on the canvas
     */
    children?: Node1[];
    /**
     * Background color of the canvas
     */
    backgroundColor?: NodeColor;
}

/**
 * An array of top level layers on the canvas
 *
 * An array of canvases attached to the document
 *
 * Properties are shared across all nodes
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
 * Whether or not the node is visible on the canvas
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
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
    type: NodeType;
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     */
    children?: NodeNode[];
    /**
     * Background color of the canvas
     */
    backgroundColor?: NodeColor;
}

/**
 * An array of canvases attached to the document
 *
 * Properties are shared across all nodes
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
 * Whether or not the node is visible on the canvas
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
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
    children?: Node2[];
}

/**
 * An array of canvases attached to the document
 *
 * Properties are shared across all nodes
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
 * Whether or not the node is visible on the canvas
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
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
    type: NodeType;
    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     */
    children?: NodeNode[];
    /**
     * Background color of the canvas
     */
    backgroundColor?: NodeColor;
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
    export function toNode(json: string): Node {
        return cast(JSON.parse(json), o("Node"));
    }

    export function nodeToJson(value: Node): string {
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

    export function toUser(json: string): User {
        return cast(JSON.parse(json), o("User"));
    }

    export function userToJson(value: User): string {
        return JSON.stringify(value, null, 2);
    }

    export function toBlendMode(json: string): BlendMode {
        return cast(JSON.parse(json), e("BlendMode"));
    }

    export function blendModeToJson(value: BlendMode): string {
        return JSON.stringify(value, null, 2);
    }

    export function toCanvas(json: string): Canvas {
        return cast(JSON.parse(json), o("Canvas"));
    }

    export function canvasToJson(value: Canvas): string {
        return JSON.stringify(value, null, 2);
    }

    export function toDocument(json: string): Document {
        return cast(JSON.parse(json), o("Document"));
    }

    export function documentToJson(value: Document): string {
        return JSON.stringify(value, null, 2);
    }

    export function toConstraint(json: string): Constraint {
        return cast(JSON.parse(json), o("Constraint"));
    }

    export function constraintToJson(value: Constraint): string {
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
        "Node": {
            id: "",
            name: "",
            visible: false,
            type: e("NodeType"),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("NodeColor")),
        },
        "NodeColor": {
            r: 3.14,
            g: 3.14,
            b: 3.14,
            a: 3.14,
        },
        "NodeNode": {
            id: "",
            name: "",
            visible: false,
            type: e("NodeType"),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("NodeColor")),
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
            type: e("NodeType"),
        },
        "User": {
            handle: "",
            img_url: "",
        },
        "Canvas": {
            id: "",
            name: "",
            visible: false,
            type: e("NodeType"),
            children: u(null, a(o("Node1"))),
            backgroundColor: u(null, o("NodeColor")),
        },
        "Node1": {
            id: "",
            name: "",
            visible: false,
            type: e("NodeType"),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("NodeColor")),
        },
        "Document": {
            id: "",
            name: "",
            visible: false,
            type: e("NodeType"),
            children: u(null, a(o("Node2"))),
        },
        "Node2": {
            id: "",
            name: "",
            visible: false,
            type: e("NodeType"),
            children: u(null, a(o("NodeNode"))),
            backgroundColor: u(null, o("NodeColor")),
        },
        "Constraint": {
            type: e("ConstraintType"),
            value: u(null, 3.14),
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
        "ConstraintType": [
            "HEIGHT",
            "SCALE",
            "WIDTH",
        ],
    };
}
