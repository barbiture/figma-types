// To parse this data:
//
//   const Convert = require("./file");
//
//   const fileResponse = Convert.toFileResponse(json);
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
        document: o("FileResponseNode"),
    },
    "FileResponseNode": {
        id: "",
        name: "",
        visible: false,
        type: e("NodeType"),
        children: u(null, a(o("NodeElement"))),
        backgroundColor: u(null, o("Color")),
        exportSettings: u(null, a(o("ExportSetting"))),
        effects: u(null, a(o("Effect"))),
        layoutGrids: u(null, a(o("LayoutGrid"))),
        opacity: u(null, 3.14),
        absoluteBoundingBox: u(null, o("Rectangle")),
        transitionNodeID: u(null, ""),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("LayoutConstraint")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        preserveRatio: u(null, false),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("Paint"))),
        strokes: u(null, a(o("Paint"))),
        cornerRadius: u(null, 3.14),
        characters: u(null, ""),
        style: u(null, o("TypeStyle")),
        characterStyleOverrides: u(null, a(3.14)),
        styleOverrideTable: u(null, m(o("TypeStyle"))),
        componentId: u(null, ""),
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
    "NodeElement": {
        id: "",
        name: "",
        visible: false,
        type: e("NodeType"),
        children: u(null, a(o("NodeElement"))),
        backgroundColor: u(null, o("Color")),
        exportSettings: u(null, a(o("ExportSetting"))),
        effects: u(null, a(o("Effect"))),
        layoutGrids: u(null, a(o("LayoutGrid"))),
        opacity: u(null, 3.14),
        absoluteBoundingBox: u(null, o("Rectangle")),
        transitionNodeID: u(null, ""),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("LayoutConstraint")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        preserveRatio: u(null, false),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("Paint"))),
        strokes: u(null, a(o("Paint"))),
        cornerRadius: u(null, 3.14),
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
        offset: o("Vector"),
    },
    "Vector": {
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
        value: u(null, 3.14),
    },
    "Paint": {
        type: e("PaintType"),
        visible: false,
        opacity: 3.14,
        color: u(null, o("Color")),
        gradientHandlePositions: u(null, a(o("Vector"))),
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

module.exports = {
    "fileResponseToJson": fileResponseToJson,
    "toFileResponse": toFileResponse,
};
