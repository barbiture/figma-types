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

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
function toVector(json) {
    return cast(JSON.parse(json), o("Vector"));
}

function vectorToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toColor(json) {
    return cast(JSON.parse(json), o("Color"));
}

function colorToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toColorStop(json) {
    return cast(JSON.parse(json), o("ColorStop"));
}

function colorStopToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toLayoutConstraint(json) {
    return cast(JSON.parse(json), o("LayoutConstraint"));
}

function layoutConstraintToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toText(json) {
    return cast(JSON.parse(json), o("Text"));
}

function textToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toFrame(json) {
    return cast(JSON.parse(json), o("Frame"));
}

function frameToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toRectangle(json) {
    return cast(JSON.parse(json), o("Rectangle"));
}

function rectangleToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toLayoutGrid(json) {
    return cast(JSON.parse(json), o("LayoutGrid"));
}

function layoutGridToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toEffect(json) {
    return cast(JSON.parse(json), o("Effect"));
}

function effectToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toSlice(json) {
    return cast(JSON.parse(json), o("Slice"));
}

function sliceToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toStar(json) {
    return cast(JSON.parse(json), o("Star"));
}

function starToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toLine(json) {
    return cast(JSON.parse(json), o("Line"));
}

function lineToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toBlendMode(json) {
    return cast(JSON.parse(json), e("BlendMode"));
}

function blendModeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toInstance(json) {
    return cast(JSON.parse(json), o("Instance"));
}

function instanceToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toVector2D(json) {
    return cast(JSON.parse(json), o("Vector2D"));
}

function vector2DToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toTypeStyle(json) {
    return cast(JSON.parse(json), o("TypeStyle"));
}

function typeStyleToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toBooleanGroup(json) {
    return cast(JSON.parse(json), o("BooleanGroup"));
}

function booleanGroupToJson(value) {
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

function toNodeType(json) {
    return cast(JSON.parse(json), e("NodeType"));
}

function nodeTypeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toExportSetting(json) {
    return cast(JSON.parse(json), o("ExportSetting"));
}

function exportSettingToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toComponent(json) {
    return cast(JSON.parse(json), o("Component"));
}

function componentToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toFileResponse(json) {
    return cast(JSON.parse(json), o("FileResponse"));
}

function fileResponseToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toConstraint(json) {
    return cast(JSON.parse(json), o("Constraint"));
}

function constraintToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toPaint(json) {
    return cast(JSON.parse(json), o("Paint"));
}

function paintToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toRegularPolygon(json) {
    return cast(JSON.parse(json), o("RegularPolygon"));
}

function regularPolygonToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toEllipse(json) {
    return cast(JSON.parse(json), o("Ellipse"));
}

function ellipseToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toGroup(json) {
    return cast(JSON.parse(json), o("Group"));
}

function groupToJson(value) {
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
