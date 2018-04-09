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

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
function toFileResponse(json) {
    return cast(JSON.parse(json), r("FileResponse"));
}

function fileResponseToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toCommentsResponse(json) {
    return cast(JSON.parse(json), r("CommentsResponse"));
}

function commentsResponseToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toCommentRequest(json) {
    return cast(JSON.parse(json), r("CommentRequest"));
}

function commentRequestToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toProjectsResponse(json) {
    return cast(JSON.parse(json), r("ProjectsResponse"));
}

function projectsResponseToJson(value) {
    return JSON.stringify(value, null, 2);
}

function toProjectFilesResponse(json) {
    return cast(JSON.parse(json), r("ProjectFilesResponse"));
}

function projectFilesResponseToJson(value) {
    return JSON.stringify(value, null, 2);
}

function cast(obj, typ) {
    if (!isValid(typ, obj)) {
        throw Error(`Invalid value`);
    }
    return obj;
}

function isValid(typ, val) {
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

function isValidPrimitive(typ, val) {
    return typeof typ === typeof val;
}

function isValidUnion(typs, val) {
    // val must validate against one typ in typs
    return typs.some((typ) => isValid(typ, val));
}

function isValidEnum(cases, val) {
    return cases.indexOf(val) !== -1;
}

function isValidArray(typ, val) {
    // val must be an array with no invalid elements
    return Array.isArray(val) && val.every((element) => {
        return isValid(typ, element);
    });
}

function isValidObject(props, additional, val) {
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

function a(typ) {
    return { arrayItems: typ };
}

function u(...typs) {
    return { unionMembers: typs };
}

function o(props, additional) {
    return { props, additional };
}

function m(additional) {
    return { props: {}, additional };
}

function r(name) {
    return { ref: name };
}

const typeMap = {
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
