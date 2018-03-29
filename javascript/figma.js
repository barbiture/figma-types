// To parse this data:
//
//   const Convert = require("./file");
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

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
function toNode(json) {
    return cast(JSON.parse(json), o("Node"));
}

function nodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toColor(json) {
    return cast(JSON.parse(json), o("Color"));
}

function colorToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toGlobal(json) {
    return cast(JSON.parse(json), o("Global"));
}

function globalToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toUser(json) {
    return cast(JSON.parse(json), o("User"));
}

function userToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toBlendMode(json) {
    return cast(JSON.parse(json), e("BlendMode"));
}

function blendModeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toCanvas(json) {
    return cast(JSON.parse(json), o("Canvas"));
}

function canvasToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toDocument(json) {
    return cast(JSON.parse(json), o("Document"));
}

function documentToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toConstraint(json) {
    return cast(JSON.parse(json), o("Constraint"));
}

function constraintToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toComment(json) {
    return cast(JSON.parse(json), o("Comment"));
}

function commentToJson(value) {
    return JSON.stringify(value, null, 2);
}

function cast(obj, typ) {
    if (!isValid(typ, obj)) {
        throw `Invalid value`;
    }
    return obj;
}

function isValid(typ, val) {
    if (typ === undefined) return true;
    if (typ === null) return val === null || val === undefined;
    return typ.isUnion  ? isValidUnion(typ.typs, val)
            : typ.isArray  ? isValidArray(typ.typ, val)
            : typ.isMap    ? isValidMap(typ.typ, val)
            : typ.isEnum   ? isValidEnum(typ.name, val)
            : typ.isObject ? isValidObject(typ.cls, val)
            :                isValidPrimitive(typ, val);
}

function isValidPrimitive(typ, val) {
    return typeof typ === typeof val;
}

function isValidUnion(typs, val) {
    // val must validate against one typ in typs
    return typs.find(typ => isValid(typ, val)) !== undefined;
}

function isValidEnum(enumName, val) {
    const cases = typeMap[enumName];
    return cases.indexOf(val) !== -1;
}

function isValidArray(typ, val) {
    // val must be an array with no invalid elements
    return Array.isArray(val) && val.every(element => {
        return isValid(typ, element);
    });
}

function isValidMap(typ, val) {
    if (val === null || typeof val !== "object" || Array.isArray(val)) return false;
    // all values in the map must be typ
    return Object.keys(val).every(prop => {
        if (!Object.prototype.hasOwnProperty.call(val, prop)) return true;
        return isValid(typ, val[prop]);
    });
}

function isValidObject(className, val) {
    if (val === null || typeof val !== "object" || Array.isArray(val)) return false;
    let typeRep = typeMap[className];
    return Object.keys(typeRep).every(prop => {
        if (!Object.prototype.hasOwnProperty.call(typeRep, prop)) return true;
        return isValid(typeRep[prop], val[prop]);
    });
}

function a(typ) {
    return { typ, isArray: true };
}

function e(name) {
    return { name, isEnum: true };
}

function u(...typs) {
    return { typs, isUnion: true };
}

function m(typ) {
    return { typ, isMap: true };
}

function o(className) {
    return { cls: className, isObject: true };
}

const typeMap = {
    "Node": {
        id: "",
        name: "",
        visible: u(null, false),
        type: u(null, e("NodeType")),
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
        visible: u(null, false),
        type: u(null, e("NodeType")),
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
        visible: u(null, false),
        type: u(null, e("NodeType")),
    },
    "User": {
        handle: "",
        img_url: "",
    },
    "Canvas": {
        id: "",
        name: "",
        visible: u(null, false),
        type: u(null, e("NodeType")),
        children: u(null, a(o("Node1"))),
        backgroundColor: u(null, o("NodeColor")),
    },
    "Node1": {
        id: "",
        name: "",
        visible: u(null, false),
        type: u(null, e("NodeType")),
        children: u(null, a(o("NodeNode"))),
        backgroundColor: u(null, o("NodeColor")),
    },
    "Document": {
        id: "",
        name: "",
        visible: u(null, false),
        type: u(null, e("NodeType")),
        children: u(null, a(o("Node2"))),
    },
    "Node2": {
        id: "",
        name: "",
        visible: u(null, false),
        type: u(null, e("NodeType")),
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

module.exports = {
    "nodeToJson": nodeToJson,
    "toNode": toNode,
    "colorToJson": colorToJson,
    "toColor": toColor,
    "globalToJson": globalToJson,
    "toGlobal": toGlobal,
    "userToJson": userToJson,
    "toUser": toUser,
    "blendModeToJson": blendModeToJson,
    "toBlendMode": toBlendMode,
    "canvasToJson": canvasToJson,
    "toCanvas": toCanvas,
    "documentToJson": documentToJson,
    "toDocument": toDocument,
    "constraintToJson": constraintToJson,
    "toConstraint": toConstraint,
    "commentToJson": commentToJson,
    "toComment": toComment,
};
