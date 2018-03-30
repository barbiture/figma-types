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
        effects: u(null, a(o("EffectElement"))),
        opacity: u(null, 3.14),
        name: u(null, ""),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        strokes: u(null, a(o("PaintElement"))),
        preserveRatio: u(null, false),
    },
    "AbsoluteBoundingBox": {
        effects: u(null, a(o("EffectElement"))),
        cornerRadius: u(null, 3.14),
        opacity: u(null, 3.14),
        name: u(null, ""),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        strokes: u(null, a(o("PaintElement"))),
        preserveRatio: u(null, false),
    },
    "Constraints": {
        horizontal: u(null, e("Horizontal")),
        vertical: u(null, e("Vertical")),
    },
    "EffectElement": {
        blendMode: u(null, e("BlendMode")),
        color: u(null, o("Olor")),
        offset: u(null, o("Offset")),
        radius: u(null, 3.14),
        type: u(null, e("EffectType")),
        visible: u(null, false),
    },
    "Olor": {
        a: u(null, 3.14),
        b: u(null, 3.14),
        g: u(null, 3.14),
        r: u(null, 3.14),
    },
    "Offset": {
        x: u(null, 3.14),
        y: u(null, 3.14),
    },
    "ExportSettingElement": {
        constraint: u(null, o("ExportSettingConstraint")),
        format: u(null, e("Format")),
        suffix: u(null, e("Suffix")),
    },
    "ExportSettingConstraint": {
        type: u(null, e("ConstraintType")),
        value: u(null, 3.14),
    },
    "PaintElement": {
        color: u(null, o("Olor")),
        gradientHandlePositions: u(null, a(o("Offset"))),
        gradientStops: u(null, a(o("ColorStopElement"))),
        opacity: u(null, 3.14),
        scaleMode: u(null, ""),
        type: u(null, e("PaintType")),
        visible: u(null, false),
    },
    "ColorStopElement": {
        color: u(null, o("Olor")),
        position: u(null, 3.14),
    },
    "Color": {
        a: u(null, 3.14),
        b: u(null, 3.14),
        g: u(null, 3.14),
        r: u(null, 3.14),
    },
    "ColorStop": {
        color: u(null, o("Olor")),
        position: u(null, 3.14),
    },
    "LayoutConstraint": {
        horizontal: u(null, e("Horizontal")),
        vertical: u(null, e("Vertical")),
    },
    "Text": {
        effects: u(null, a(o("EffectElement"))),
        characters: u(null, ""),
        opacity: u(null, 3.14),
        name: u(null, ""),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        styleOverrideTable: u(null, a(o("Tyle"))),
        style: u(null, o("Tyle")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        strokes: u(null, a(o("PaintElement"))),
        preserveRatio: u(null, false),
        characterStyleOverrides: u(null, a(3.14)),
    },
    "Tyle": {
        lineHeightPx: u(null, 3.14),
        fontPostScriptName: u(null, ""),
        fontWeight: u(null, 3.14),
        lineHeightPercent: u(null, 3.14),
        textAlignVertical: u(null, e("TextAlignVertical")),
        fontSize: u(null, 3.14),
        italic: u(null, false),
        fills: u(null, a(o("PaintElement"))),
        fontFamily: u(null, ""),
        textAlignHorizontal: u(null, e("TextAlignHorizontal")),
        letterSpacing: u(null, 3.14),
    },
    "Frame": {
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        name: u(null, ""),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        backgroundColor: u(null, o("Olor")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        preserveRatio: u(null, false),
        children: u(null, a(o("DocumentElement"))),
    },
    "DocumentElement": {
        children: u(null, a(o("DocumentElement"))),
        id: u(null, ""),
        name: u(null, ""),
        type: u(null, e("NodeType")),
        visible: u(null, false),
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
        alignment: u(null, e("Alignment")),
        color: u(null, o("Olor")),
        count: u(null, 3.14),
        gutterSize: u(null, 3.14),
        offset: u(null, 3.14),
        pattern: u(null, e("Pattern")),
        sectionSize: u(null, 3.14),
        visible: u(null, false),
    },
    "Rectangle": {
        effects: u(null, a(o("EffectElement"))),
        cornerRadius: u(null, 3.14),
        opacity: u(null, 3.14),
        name: u(null, ""),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        strokes: u(null, a(o("PaintElement"))),
        preserveRatio: u(null, false),
    },
    "LayoutGrid": {
        alignment: u(null, e("Alignment")),
        color: u(null, o("Olor")),
        count: u(null, 3.14),
        gutterSize: u(null, 3.14),
        offset: u(null, 3.14),
        pattern: u(null, e("Pattern")),
        sectionSize: u(null, 3.14),
        visible: u(null, false),
    },
    "Effect": {
        blendMode: u(null, e("BlendMode")),
        color: u(null, o("Olor")),
        offset: u(null, o("Offset")),
        radius: u(null, 3.14),
        type: u(null, e("EffectType")),
        visible: u(null, false),
    },
    "Slice": {
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        id: u(null, ""),
        name: u(null, ""),
        type: u(null, e("NodeType")),
        visible: u(null, false),
    },
    "Star": {
        effects: u(null, a(o("EffectElement"))),
        opacity: u(null, 3.14),
        name: u(null, ""),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        strokes: u(null, a(o("PaintElement"))),
        preserveRatio: u(null, false),
    },
    "Line": {
        effects: u(null, a(o("EffectElement"))),
        opacity: u(null, 3.14),
        name: u(null, ""),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        strokes: u(null, a(o("PaintElement"))),
        preserveRatio: u(null, false),
    },
    "Instance": {
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        name: u(null, ""),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        backgroundColor: u(null, o("Olor")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        componentId: u(null, ""),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        preserveRatio: u(null, false),
        children: u(null, a(o("DocumentElement"))),
    },
    "Vector2D": {
        x: u(null, 3.14),
        y: u(null, 3.14),
    },
    "TypeStyle": {
        lineHeightPx: u(null, 3.14),
        fontPostScriptName: u(null, ""),
        fontWeight: u(null, 3.14),
        lineHeightPercent: u(null, 3.14),
        textAlignVertical: u(null, e("TextAlignVertical")),
        fontSize: u(null, 3.14),
        italic: u(null, false),
        fills: u(null, a(o("PaintElement"))),
        fontFamily: u(null, ""),
        textAlignHorizontal: u(null, e("TextAlignHorizontal")),
        letterSpacing: u(null, 3.14),
    },
    "BooleanGroup": {
        effects: u(null, a(o("EffectElement"))),
        opacity: u(null, 3.14),
        name: u(null, ""),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        strokes: u(null, a(o("PaintElement"))),
        preserveRatio: u(null, false),
        children: u(null, a(o("DocumentElement"))),
    },
    "Canvas": {
        backgroundColor: u(null, o("Olor")),
        children: u(null, a(o("DocumentElement"))),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        id: u(null, ""),
        name: u(null, ""),
        type: u(null, e("NodeType")),
        visible: u(null, false),
    },
    "Document": {
        children: u(null, a(o("DocumentElement"))),
        id: u(null, ""),
        name: u(null, ""),
        type: u(null, e("NodeType")),
        visible: u(null, false),
    },
    "ExportSetting": {
        constraint: u(null, o("ExportSettingConstraint")),
        format: u(null, e("Format")),
        suffix: u(null, e("Suffix")),
    },
    "Component": {
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        name: u(null, ""),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        backgroundColor: u(null, o("Olor")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        preserveRatio: u(null, false),
        children: u(null, a(o("DocumentElement"))),
    },
    "FileResponse": {
        components: u(null, m(o("ComponentValue"))),
        document: u(null, o("Ocument")),
        schemaVersion: u(null, 3.14),
    },
    "ComponentValue": {
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        name: u(null, ""),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        backgroundColor: u(null, o("Olor")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        preserveRatio: u(null, false),
        children: u(null, a(o("DocumentElement"))),
    },
    "Ocument": {
        children: u(null, a(o("DocumentElement"))),
        id: u(null, ""),
        name: u(null, ""),
        type: u(null, e("NodeType")),
        visible: u(null, false),
    },
    "Constraint": {
        type: u(null, e("ConstraintType")),
        value: u(null, 3.14),
    },
    "Paint": {
        color: u(null, o("Olor")),
        gradientHandlePositions: u(null, a(o("Offset"))),
        gradientStops: u(null, a(o("ColorStopElement"))),
        opacity: u(null, 3.14),
        scaleMode: u(null, ""),
        type: u(null, e("PaintType")),
        visible: u(null, false),
    },
    "RegularPolygon": {
        effects: u(null, a(o("EffectElement"))),
        opacity: u(null, 3.14),
        name: u(null, ""),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        strokes: u(null, a(o("PaintElement"))),
        preserveRatio: u(null, false),
    },
    "Ellipse": {
        effects: u(null, a(o("EffectElement"))),
        opacity: u(null, 3.14),
        name: u(null, ""),
        strokeAlign: u(null, e("StrokeAlign")),
        strokeWeight: u(null, 3.14),
        fills: u(null, a(o("PaintElement"))),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        strokes: u(null, a(o("PaintElement"))),
        preserveRatio: u(null, false),
    },
    "Group": {
        effects: u(null, a(o("EffectElement"))),
        layoutGrids: u(null, a(o("LayoutGridElement"))),
        opacity: u(null, 3.14),
        name: u(null, ""),
        absoluteBoundingBox: u(null, o("AbsoluteBoundingBox")),
        transitionNodeID: u(null, ""),
        visible: u(null, false),
        blendMode: u(null, e("BlendMode")),
        backgroundColor: u(null, o("Olor")),
        constraints: u(null, o("Constraints")),
        isMask: u(null, false),
        clipsContent: u(null, false),
        exportSettings: u(null, a(o("ExportSettingElement"))),
        type: u(null, e("NodeType")),
        id: u(null, ""),
        preserveRatio: u(null, false),
        children: u(null, a(o("DocumentElement"))),
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
    "Suffix": [
        "string",
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
