// To parse this data:
//
//   const Convert = require("./file");
//
//   const frameOffset = Convert.toFrameOffset(json);
//   const vector = Convert.toVector(json);
//   const color = Convert.toColor(json);
//   const colorStop = Convert.toColorStop(json);
//   const layoutConstraint = Convert.toLayoutConstraint(json);
//   const user = Convert.toUser(json);
//   const text = Convert.toText(json);
//   const frame = Convert.toFrame(json);
//   const rectangle = Convert.toRectangle(json);
//   const vector2 = Convert.toVector2(json);
//   const layoutGrid = Convert.toLayoutGrid(json);
//   const string = Convert.toString(json);
//   const effect = Convert.toEffect(json);
//   const slice = Convert.toSlice(json);
//   const star = Convert.toStar(json);
//   const line = Convert.toLine(json);
//   const blendMode = Convert.toBlendMode(json);
//   const instance = Convert.toInstance(json);
//   const commentsResponse = Convert.toCommentsResponse(json);
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
//   const comment = Convert.toComment(json);
//   const group = Convert.toGroup(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
function toFrameOffset(json) {
    return cast(JSON.parse(json), o("FrameOffset"));
}

function frameOffsetToJson(value) {
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

function toUser(json) {
    return cast(JSON.parse(json), o("User"));
}

function userToJson(value) {
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

function toVector2(json) {
    return cast(JSON.parse(json), o("Vector2"));
}

function vector2ToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toLayoutGrid(json) {
    return cast(JSON.parse(json), o("LayoutGrid"));
}

function layoutGridToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toString(json) {
    return cast(JSON.parse(json), a(""));
}

function stringToJson(value) {
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

function toCommentsResponse(json) {
    return cast(JSON.parse(json), o("CommentsResponse"));
}

function commentsResponseToJson(value) {
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

function toComment(json) {
    return cast(JSON.parse(json), o("Comment"));
}

function commentToJson(value) {
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
    "FrameOffset": {
        node_id: a(""),
        node_offset: o("Vector2"),
    },
    "Vector2": {
        x: 3.14,
        y: 3.14,
    },
    "Vector": {
        effects: a(o("Effect")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("Paint")),
        absoluteBoundingBox: o("Rectangle"),
        transitionNodeID: "",
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
    "Rectangle": {
        effects: a(o("Effect")),
        cornerRadius: 3.14,
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("Paint")),
        absoluteBoundingBox: o("Rectangle"),
        transitionNodeID: "",
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
        horizontal: e("Horizontal"),
        vertical: e("Vertical"),
    },
    "Effect": {
        blendMode: u(null, e("BlendMode")),
        color: u(null, o("Color")),
        offset: u(null, o("Vector2")),
        radius: 3.14,
        type: e("EffectType"),
        visible: false,
    },
    "Color": {
        a: 3.14,
        b: 3.14,
        g: 3.14,
        r: 3.14,
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
        color: u(null, o("Color")),
        gradientHandlePositions: u(null, a(o("Vector2"))),
        gradientStops: u(null, a(o("ColorStop"))),
        opacity: 3.14,
        scaleMode: u(null, ""),
        type: e("PaintType"),
        visible: false,
    },
    "ColorStop": {
        color: o("Color"),
        position: 3.14,
    },
    "Text": {
        effects: a(o("Effect")),
        characters: "",
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("Paint")),
        absoluteBoundingBox: o("Rectangle"),
        styleOverrideTable: a(o("TypeStyle")),
        style: o("TypeStyle"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("LayoutConstraint"),
        isMask: false,
        exportSettings: a(o("ExportSetting")),
        type: e("NodeType"),
        id: "",
        strokes: a(o("Paint")),
        preserveRatio: false,
        characterStyleOverrides: a(3.14),
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
    "Frame": {
        effects: a(o("Effect")),
        layoutGrids: a(o("LayoutGrid")),
        opacity: 3.14,
        name: "",
        absoluteBoundingBox: o("Rectangle"),
        transitionNodeID: "",
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
        children: a(o("DocumentElement")),
    },
    "DocumentElement": {
        children: u(null, a(o("DocumentElement"))),
        id: "",
        name: "",
        type: e("NodeType"),
        visible: false,
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
        styleOverrideTable: u(null, a(o("TypeStyle"))),
        style: u(null, o("TypeStyle")),
        characterStyleOverrides: u(null, a(3.14)),
        componentId: u(null, ""),
    },
    "LayoutGrid": {
        alignment: e("Alignment"),
        color: o("Color"),
        count: 3.14,
        gutterSize: 3.14,
        offset: 3.14,
        pattern: e("Pattern"),
        sectionSize: 3.14,
        visible: false,
    },
    "Slice": {
        absoluteBoundingBox: o("Rectangle"),
        exportSettings: a(o("ExportSetting")),
        id: "",
        name: "",
        type: e("NodeType"),
        visible: false,
    },
    "Star": {
        effects: a(o("Effect")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("Paint")),
        absoluteBoundingBox: o("Rectangle"),
        transitionNodeID: "",
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
    "Line": {
        effects: a(o("Effect")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("Paint")),
        absoluteBoundingBox: o("Rectangle"),
        transitionNodeID: "",
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
    "Instance": {
        effects: a(o("Effect")),
        layoutGrids: a(o("LayoutGrid")),
        opacity: 3.14,
        name: "",
        absoluteBoundingBox: o("Rectangle"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        backgroundColor: o("Color"),
        constraints: o("LayoutConstraint"),
        isMask: false,
        clipsContent: false,
        exportSettings: a(o("ExportSetting")),
        componentId: "",
        type: e("NodeType"),
        id: "",
        preserveRatio: false,
        children: a(o("DocumentElement")),
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
        node_offset: u(null, o("Vector2")),
    },
    "User": {
        handle: "",
        img_url: "",
    },
    "BooleanGroup": {
        effects: a(o("Effect")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("Paint")),
        absoluteBoundingBox: o("Rectangle"),
        transitionNodeID: "",
        visible: false,
        blendMode: e("BlendMode"),
        constraints: o("LayoutConstraint"),
        isMask: false,
        exportSettings: a(o("ExportSetting")),
        type: e("NodeType"),
        id: "",
        strokes: a(o("Paint")),
        preserveRatio: false,
        children: a(o("DocumentElement")),
    },
    "Canvas": {
        backgroundColor: o("Color"),
        children: a(o("DocumentElement")),
        exportSettings: a(o("ExportSetting")),
        id: "",
        name: "",
        type: e("NodeType"),
        visible: false,
    },
    "FileResponse": {
        components: m(o("Component")),
        document: o("Document"),
        schemaVersion: 3.14,
    },
    "Component": {
        effects: a(o("Effect")),
        layoutGrids: a(o("LayoutGrid")),
        opacity: 3.14,
        name: "",
        absoluteBoundingBox: o("Rectangle"),
        transitionNodeID: "",
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
        children: a(o("DocumentElement")),
    },
    "Document": {
        children: a(o("DocumentElement")),
        id: "",
        name: "",
        type: e("NodeType"),
        visible: false,
    },
    "RegularPolygon": {
        effects: a(o("Effect")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("Paint")),
        absoluteBoundingBox: o("Rectangle"),
        transitionNodeID: "",
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
    "Ellipse": {
        effects: a(o("Effect")),
        opacity: 3.14,
        name: "",
        strokeAlign: e("StrokeAlign"),
        strokeWeight: 3.14,
        fills: a(o("Paint")),
        absoluteBoundingBox: o("Rectangle"),
        transitionNodeID: "",
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
    "Group": {
        effects: a(o("Effect")),
        layoutGrids: a(o("LayoutGrid")),
        opacity: 3.14,
        name: "",
        absoluteBoundingBox: o("Rectangle"),
        transitionNodeID: "",
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
    "frameOffsetToJson": frameOffsetToJson,
    "toFrameOffset": toFrameOffset,
    "vectorToJson": vectorToJson,
    "toVector": toVector,
    "colorToJson": colorToJson,
    "toColor": toColor,
    "colorStopToJson": colorStopToJson,
    "toColorStop": toColorStop,
    "layoutConstraintToJson": layoutConstraintToJson,
    "toLayoutConstraint": toLayoutConstraint,
    "userToJson": userToJson,
    "toUser": toUser,
    "textToJson": textToJson,
    "toText": toText,
    "frameToJson": frameToJson,
    "toFrame": toFrame,
    "rectangleToJson": rectangleToJson,
    "toRectangle": toRectangle,
    "vector2ToJson": vector2ToJson,
    "toVector2": toVector2,
    "layoutGridToJson": layoutGridToJson,
    "toLayoutGrid": toLayoutGrid,
    "stringToJson": stringToJson,
    "toString": toString,
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
    "commentsResponseToJson": commentsResponseToJson,
    "toCommentsResponse": toCommentsResponse,
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
    "commentToJson": commentToJson,
    "toComment": toComment,
    "groupToJson": groupToJson,
    "toGroup": toGroup,
};
