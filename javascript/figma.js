// To parse this data:
//
//   const Convert = require("./file");
//
//   const regularPolygonNode = Convert.toRegularPolygonNode(json);
//   const ellipseNode = Convert.toEllipseNode(json);
//   const groupNode = Convert.toGroupNode(json);
//   const node = Convert.toNode(json);
//   const vector = Convert.toVector(json);
//   const color = Convert.toColor(json);
//   const global = Convert.toGlobal(json);
//   const colorStop = Convert.toColorStop(json);
//   const vectorNode = Convert.toVectorNode(json);
//   const layoutConstraint = Convert.toLayoutConstraint(json);
//   const booleanNode = Convert.toBooleanNode(json);
//   const user = Convert.toUser(json);
//   const textNode = Convert.toTextNode(json);
//   const frameNode = Convert.toFrameNode(json);
//   const rectangle = Convert.toRectangle(json);
//   const layoutGrid = Convert.toLayoutGrid(json);
//   const effect = Convert.toEffect(json);
//   const rectangleNode = Convert.toRectangleNode(json);
//   const blendMode = Convert.toBlendMode(json);
//   const sliceNode = Convert.toSliceNode(json);
//   const starNode = Convert.toStarNode(json);
//   const lineNode = Convert.toLineNode(json);
//   const instanceNode = Convert.toInstanceNode(json);
//   const typeStyle = Convert.toTypeStyle(json);
//   const canvasNode = Convert.toCanvasNode(json);
//   const exportSetting = Convert.toExportSetting(json);
//   const documentNode = Convert.toDocumentNode(json);
//   const constraint = Convert.toConstraint(json);
//   const paint = Convert.toPaint(json);
//   const componentNode = Convert.toComponentNode(json);
//   const comment = Convert.toComment(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
function toRegularPolygonNode(json) {
    return cast(JSON.parse(json), o("RegularPolygonNode"));
}

function regularPolygonNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toEllipseNode(json) {
    return cast(JSON.parse(json), o("EllipseNode"));
}

function ellipseNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toGroupNode(json) {
    return cast(JSON.parse(json), o("GroupNode"));
}

function groupNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toNode(json) {
    return cast(JSON.parse(json), o("Node"));
}

function nodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

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

function toGlobal(json) {
    return cast(JSON.parse(json), o("Global"));
}

function globalToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toColorStop(json) {
    return cast(JSON.parse(json), o("ColorStop"));
}

function colorStopToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toVectorNode(json) {
    return cast(JSON.parse(json), o("VectorNode"));
}

function vectorNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toLayoutConstraint(json) {
    return cast(JSON.parse(json), o("LayoutConstraint"));
}

function layoutConstraintToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toBooleanNode(json) {
    return cast(JSON.parse(json), o("BooleanNode"));
}

function booleanNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toUser(json) {
    return cast(JSON.parse(json), o("User"));
}

function userToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toTextNode(json) {
    return cast(JSON.parse(json), o("TextNode"));
}

function textNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toFrameNode(json) {
    return cast(JSON.parse(json), o("FrameNode"));
}

function frameNodeToJson(value) {
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

function toRectangleNode(json) {
    return cast(JSON.parse(json), o("RectangleNode"));
}

function rectangleNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toBlendMode(json) {
    return cast(JSON.parse(json), e("BlendMode"));
}

function blendModeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toSliceNode(json) {
    return cast(JSON.parse(json), o("SliceNode"));
}

function sliceNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toStarNode(json) {
    return cast(JSON.parse(json), o("StarNode"));
}

function starNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toLineNode(json) {
    return cast(JSON.parse(json), o("LineNode"));
}

function lineNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toInstanceNode(json) {
    return cast(JSON.parse(json), o("InstanceNode"));
}

function instanceNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toTypeStyle(json) {
    return cast(JSON.parse(json), o("TypeStyle"));
}

function typeStyleToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toCanvasNode(json) {
    return cast(JSON.parse(json), o("CanvasNode"));
}

function canvasNodeToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toExportSetting(json) {
    return cast(JSON.parse(json), o("ExportSetting"));
}

function exportSettingToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toDocumentNode(json) {
    return cast(JSON.parse(json), o("DocumentNode"));
}

function documentNodeToJson(value) {
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

function toComponentNode(json) {
    return cast(JSON.parse(json), o("ComponentNode"));
}

function componentNodeToJson(value) {
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
    "RegularPolygonNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        opacity: 3.14,
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "RegularPolygonNodeRectangle": {
        x: 3.14,
        y: 3.14,
        width: 3.14,
        height: 3.14,
    },
    "RegularPolygonNodeLayoutConstraint": {
        vertical: e("Vertical"),
        horizontal: e("Horizontal"),
    },
    "EffectElement": {
        type: e("EffectType"),
        radius: 3.14,
        visible: false,
        color: o("EffectColor"),
        blendMode: e("BlendMode"),
        offset: o("EffectVector"),
    },
    "EffectColor": {
        r: 3.14,
        g: 3.14,
        b: 3.14,
        a: 3.14,
    },
    "EffectVector": {
        x: 3.14,
        y: 3.14,
    },
    "ExportSettingElement": {
        suffix: "",
        format: e("Format"),
        constraint: o("ExportSettingConstraint"),
    },
    "ExportSettingConstraint": {
        type: e("ConstraintType"),
        value: u(null, 3.14),
    },
    "PaintElement": {
        type: e("PaintType"),
        visible: false,
        opacity: 3.14,
        color: u(null, o("EffectColor")),
        gradientHandlePositions: u(null, a(o("EffectVector"))),
        gradientStops: u(null, a(o("ColorStopElement"))),
        scaleMode: u(null, e("ScaleMode")),
    },
    "ColorStopElement": {
        color: o("EffectColor"),
        position: 3.14,
    },
    "EllipseNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        opacity: 3.14,
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "GroupNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        layoutGrids: a(o("LayoutGridElement")),
        opacity: 3.14,
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        backgroundColor: o("EffectColor"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        clipsContent: false,
        exportSettings: a(o("ExportSettingElement")),
        preserveRatio: false,
        children: a(o("Node1")),
    },
    "Node1": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        children: u(null, a(o("NodeNode"))),
        backgroundColor: u(null, o("EffectColor")),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
        transitionNodeID: u(null, ""),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        preserveRatio: u(null, false),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        strokes: u(null, a(o("PaintElement"))),
        cornerRadius: u(null, 3.14),
        characters: u(null, ""),
        style: u(null, o("NodeTypeStyle")),
        characterStyleOverrides: u(null, a(3.14)),
        styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
        componentId: u(null, ""),
    },
    "NodeNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        children: u(null, a(o("NodeNode"))),
        backgroundColor: u(null, o("EffectColor")),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
        transitionNodeID: u(null, ""),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        preserveRatio: u(null, false),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        strokes: u(null, a(o("PaintElement"))),
        cornerRadius: u(null, 3.14),
        characters: u(null, ""),
        style: u(null, o("NodeTypeStyle")),
        characterStyleOverrides: u(null, a(3.14)),
        styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
        componentId: u(null, ""),
    },
    "LayoutGridElement": {
        pattern: e("Pattern"),
        sectionSize: 3.14,
        visible: false,
        color: o("EffectColor"),
        alignment: e("Alignment"),
        gutterSize: 3.14,
        offset: 3.14,
        count: 3.14,
    },
    "NodeTypeStyle": {
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
    "Node": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        children: u(null, a(o("NodeNode"))),
        backgroundColor: u(null, o("EffectColor")),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
        transitionNodeID: u(null, ""),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        preserveRatio: u(null, false),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        strokes: u(null, a(o("PaintElement"))),
        cornerRadius: u(null, 3.14),
        characters: u(null, ""),
        style: u(null, o("NodeTypeStyle")),
        characterStyleOverrides: u(null, a(3.14)),
        styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
        componentId: u(null, ""),
    },
    "Vector": {
        x: 3.14,
        y: 3.14,
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
        type: e("RegularPolygonNodeType"),
    },
    "ColorStop": {
        color: o("EffectColor"),
        position: 3.14,
    },
    "VectorNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        opacity: 3.14,
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "LayoutConstraint": {
        vertical: e("Vertical"),
        horizontal: e("Horizontal"),
    },
    "BooleanNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        opacity: 3.14,
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        strokes: a(o("PaintElement")),
        preserveRatio: false,
        children: a(o("Node2")),
    },
    "Node2": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        children: u(null, a(o("NodeNode"))),
        backgroundColor: u(null, o("EffectColor")),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
        transitionNodeID: u(null, ""),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        preserveRatio: u(null, false),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        strokes: u(null, a(o("PaintElement"))),
        cornerRadius: u(null, 3.14),
        characters: u(null, ""),
        style: u(null, o("NodeTypeStyle")),
        characterStyleOverrides: u(null, a(3.14)),
        styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
        componentId: u(null, ""),
    },
    "User": {
        handle: "",
        img_url: "",
    },
    "TextNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        opacity: 3.14,
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        strokes: a(o("PaintElement")),
        preserveRatio: false,
        characters: "",
        style: o("NodeTypeStyle"),
        characterStyleOverrides: a(3.14),
        styleOverrideTable: m(o("NodeTypeStyle")),
    },
    "FrameNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        layoutGrids: a(o("LayoutGridElement")),
        opacity: 3.14,
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        backgroundColor: o("EffectColor"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        clipsContent: false,
        exportSettings: a(o("ExportSettingElement")),
        preserveRatio: false,
        children: a(o("FrameNodeNode")),
    },
    "FrameNodeNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        children: u(null, a(o("NodeNode"))),
        backgroundColor: u(null, o("EffectColor")),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
        transitionNodeID: u(null, ""),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        preserveRatio: u(null, false),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        strokes: u(null, a(o("PaintElement"))),
        cornerRadius: u(null, 3.14),
        characters: u(null, ""),
        style: u(null, o("NodeTypeStyle")),
        characterStyleOverrides: u(null, a(3.14)),
        styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
        componentId: u(null, ""),
    },
    "Rectangle": {
        x: 3.14,
        y: 3.14,
        width: 3.14,
        height: 3.14,
    },
    "LayoutGrid": {
        pattern: e("Pattern"),
        sectionSize: 3.14,
        visible: false,
        color: o("EffectColor"),
        alignment: e("Alignment"),
        gutterSize: 3.14,
        offset: 3.14,
        count: 3.14,
    },
    "Effect": {
        type: e("EffectType"),
        radius: 3.14,
        visible: false,
        color: o("EffectColor"),
        blendMode: e("BlendMode"),
        offset: o("EffectVector"),
    },
    "RectangleNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        opacity: 3.14,
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        strokes: a(o("PaintElement")),
        preserveRatio: false,
        cornerRadius: 3.14,
    },
    "SliceNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        exportSettings: a(o("ExportSettingElement")),
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
    },
    "StarNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        opacity: 3.14,
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "LineNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        opacity: 3.14,
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("PaintElement")),
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        exportSettings: a(o("ExportSettingElement")),
        strokes: a(o("PaintElement")),
        preserveRatio: false,
    },
    "InstanceNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        layoutGrids: a(o("LayoutGridElement")),
        opacity: 3.14,
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        backgroundColor: o("EffectColor"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        clipsContent: false,
        exportSettings: a(o("ExportSettingElement")),
        preserveRatio: false,
        children: a(o("Node1")),
        componentId: "",
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
    "CanvasNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        children: a(o("Node3")),
        backgroundColor: o("EffectColor"),
        exportSettings: a(o("ExportSettingElement")),
    },
    "Node3": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        children: u(null, a(o("NodeNode"))),
        backgroundColor: u(null, o("EffectColor")),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
        transitionNodeID: u(null, ""),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        preserveRatio: u(null, false),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        strokes: u(null, a(o("PaintElement"))),
        cornerRadius: u(null, 3.14),
        characters: u(null, ""),
        style: u(null, o("NodeTypeStyle")),
        characterStyleOverrides: u(null, a(3.14)),
        styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
        componentId: u(null, ""),
    },
    "ExportSetting": {
        suffix: "",
        format: e("Format"),
        constraint: o("ExportSettingConstraint"),
    },
    "DocumentNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        children: a(o("Node4")),
    },
    "Node4": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        children: u(null, a(o("NodeNode"))),
        backgroundColor: u(null, o("EffectColor")),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        absoluteBoundingBox: u(null, o("RegularPolygonNodeRectangle")),
        transitionNodeID: u(null, ""),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("RegularPolygonNodeLayoutConstraint")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        preserveRatio: u(null, false),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        strokes: u(null, a(o("PaintElement"))),
        cornerRadius: u(null, 3.14),
        characters: u(null, ""),
        style: u(null, o("NodeTypeStyle")),
        characterStyleOverrides: u(null, a(3.14)),
        styleOverrideTable: u(null, m(o("NodeTypeStyle"))),
        componentId: u(null, ""),
    },
    "Constraint": {
        type: e("ConstraintType"),
        value: u(null, 3.14),
    },
    "Paint": {
        type: e("PaintType"),
        visible: false,
        opacity: 3.14,
        color: u(null, o("EffectColor")),
        gradientHandlePositions: u(null, a(o("EffectVector"))),
        gradientStops: u(null, a(o("ColorStopElement"))),
        scaleMode: u(null, e("ScaleMode")),
    },
    "ComponentNode": {
        id: "",
        name: "",
        visible: false,
        type: e("RegularPolygonNodeType"),
        effects: a(o("EffectElement")),
        layoutGrids: a(o("LayoutGridElement")),
        opacity: 3.14,
        absoluteBoundingBox: o("RegularPolygonNodeRectangle"),
        transitionNodeID: u(null, ""),
        blendMode: e("BlendMode"),
        backgroundColor: o("EffectColor"),
        constraints: o("RegularPolygonNodeLayoutConstraint"),
        isMask: false,
        clipsContent: false,
        exportSettings: a(o("ExportSettingElement")),
        preserveRatio: false,
        children: a(o("Node1")),
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
    "StrokeAlign": [
        "CENTER",
        "INSIDE",
        "OUTSIDE",
    ],
    "RegularPolygonNodeType": [
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
    "regularPolygonNodeToJson": regularPolygonNodeToJson,
    "toRegularPolygonNode": toRegularPolygonNode,
    "ellipseNodeToJson": ellipseNodeToJson,
    "toEllipseNode": toEllipseNode,
    "groupNodeToJson": groupNodeToJson,
    "toGroupNode": toGroupNode,
    "nodeToJson": nodeToJson,
    "toNode": toNode,
    "vectorToJson": vectorToJson,
    "toVector": toVector,
    "colorToJson": colorToJson,
    "toColor": toColor,
    "globalToJson": globalToJson,
    "toGlobal": toGlobal,
    "colorStopToJson": colorStopToJson,
    "toColorStop": toColorStop,
    "vectorNodeToJson": vectorNodeToJson,
    "toVectorNode": toVectorNode,
    "layoutConstraintToJson": layoutConstraintToJson,
    "toLayoutConstraint": toLayoutConstraint,
    "booleanNodeToJson": booleanNodeToJson,
    "toBooleanNode": toBooleanNode,
    "userToJson": userToJson,
    "toUser": toUser,
    "textNodeToJson": textNodeToJson,
    "toTextNode": toTextNode,
    "frameNodeToJson": frameNodeToJson,
    "toFrameNode": toFrameNode,
    "rectangleToJson": rectangleToJson,
    "toRectangle": toRectangle,
    "layoutGridToJson": layoutGridToJson,
    "toLayoutGrid": toLayoutGrid,
    "effectToJson": effectToJson,
    "toEffect": toEffect,
    "rectangleNodeToJson": rectangleNodeToJson,
    "toRectangleNode": toRectangleNode,
    "blendModeToJson": blendModeToJson,
    "toBlendMode": toBlendMode,
    "sliceNodeToJson": sliceNodeToJson,
    "toSliceNode": toSliceNode,
    "starNodeToJson": starNodeToJson,
    "toStarNode": toStarNode,
    "lineNodeToJson": lineNodeToJson,
    "toLineNode": toLineNode,
    "instanceNodeToJson": instanceNodeToJson,
    "toInstanceNode": toInstanceNode,
    "typeStyleToJson": typeStyleToJson,
    "toTypeStyle": toTypeStyle,
    "canvasNodeToJson": canvasNodeToJson,
    "toCanvasNode": toCanvasNode,
    "exportSettingToJson": exportSettingToJson,
    "toExportSetting": toExportSetting,
    "documentNodeToJson": documentNodeToJson,
    "toDocumentNode": toDocumentNode,
    "constraintToJson": constraintToJson,
    "toConstraint": toConstraint,
    "paintToJson": paintToJson,
    "toPaint": toPaint,
    "componentNodeToJson": componentNodeToJson,
    "toComponentNode": toComponentNode,
    "commentToJson": commentToJson,
    "toComment": toComment,
};
