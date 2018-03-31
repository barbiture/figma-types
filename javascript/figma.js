// To parse this data:
//
//   const Convert = require("./file");
//
//   const fileResponse = Convert.toFileResponse(json);
//   const commentsResponse = Convert.toCommentsResponse(json);
//   const commentRequest = Convert.toCommentRequest(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
function toFileResponse(json) {
    return cast(JSON.parse(json), o("FileResponse"));
}

function fileResponseToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toCommentsResponse(json) {
    return cast(JSON.parse(json), o("CommentsResponse"));
}

function commentsResponseToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toCommentRequest(json) {
    return cast(JSON.parse(json), o("CommentRequest"));
}

function commentRequestToJson(value) {
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
    "CommentRequest": {
        client_meta: o("ClientMeta"),
        message: "",
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
    "commentRequestToJson": commentRequestToJson,
    "toCommentRequest": toCommentRequest,
};
