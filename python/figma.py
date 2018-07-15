# This code parses date/times, so please
#
#     pip install python-dateutil
#
# To use this code, make sure you
#
#     import json
#
# and then, to convert JSON from a string, do
#
#     result = file_response_from_dict(json.loads(json_string))
#     result = comments_response_from_dict(json.loads(json_string))
#     result = comment_request_from_dict(json.loads(json_string))
#     result = projects_response_from_dict(json.loads(json_string))
#     result = project_files_response_from_dict(json.loads(json_string))

from typing import Any, Optional, List, Dict, TypeVar, Type, cast, Callable
from enum import Enum
from datetime import datetime
import dateutil.parser


T = TypeVar("T")
EnumT = TypeVar("EnumT", bound=Enum)


def from_float(x: Any) -> float:
    assert isinstance(x, (float, int)) and not isinstance(x, bool)
    return float(x)


def to_float(x: Any) -> float:
    assert isinstance(x, float)
    return x


def to_enum(c: Type[EnumT], x: Any) -> EnumT:
    assert isinstance(x, c)
    return x.value


def from_none(x: Any) -> Any:
    assert x is None
    return x


def from_union(fs, x):
    for f in fs:
        try:
            return f(x)
        except:
            pass
    assert False


def from_bool(x: Any) -> bool:
    assert isinstance(x, bool)
    return x


def to_class(c: Type[T], x: Any) -> dict:
    assert isinstance(x, c)
    return cast(Any, x).to_dict()


def from_str(x: Any) -> str:
    assert isinstance(x, str)
    return x


def from_list(f: Callable[[Any], T], x: Any) -> List[T]:
    assert isinstance(x, list)
    return [f(y) for y in x]


def from_dict(f: Callable[[Any], T], x: Any) -> Dict[str, T]:
    assert isinstance(x, dict)
    return { k: f(v) for (k, v) in x.items() }


def from_datetime(x: Any) -> datetime:
    return dateutil.parser.parse(x)


class Rect:
    """Bounding box of the node in absolute space coordinates
    
    A rectangle that expresses a bounding box in absolute coordinates
    """
    """Height of the rectangle"""
    height: float
    """Width of the rectangle"""
    width: float
    """X coordinate of top left corner of the rectangle"""
    x: float
    """Y coordinate of top left corner of the rectangle"""
    y: float

    def __init__(self, height: float, width: float, x: float, y: float) -> None:
        self.height = height
        self.width = width
        self.x = x
        self.y = y

    @staticmethod
    def from_dict(obj: Any) -> 'Rect':
        assert isinstance(obj, dict)
        height = from_float(obj.get("height"))
        width = from_float(obj.get("width"))
        x = from_float(obj.get("x"))
        y = from_float(obj.get("y"))
        return Rect(height, width, x, y)

    def to_dict(self) -> dict:
        result: dict = {}
        result["height"] = to_float(self.height)
        result["width"] = to_float(self.width)
        result["x"] = to_float(self.x)
        result["y"] = to_float(self.y)
        return result


class Color:
    """Background color of the node
    
    An RGBA color
    
    Background color of the canvas
    
    Solid color of the paint
    
    Color attached to corresponding position
    
    Color of the grid
    """
    """Alpha channel value, between 0 and 1"""
    a: float
    """Blue channel value, between 0 and 1"""
    b: float
    """Green channel value, between 0 and 1"""
    g: float
    """Red channel value, between 0 and 1"""
    r: float

    def __init__(self, a: float, b: float, g: float, r: float) -> None:
        self.a = a
        self.b = b
        self.g = g
        self.r = r

    @staticmethod
    def from_dict(obj: Any) -> 'Color':
        assert isinstance(obj, dict)
        a = from_float(obj.get("a"))
        b = from_float(obj.get("b"))
        g = from_float(obj.get("g"))
        r = from_float(obj.get("r"))
        return Color(a, b, g, r)

    def to_dict(self) -> dict:
        result: dict = {}
        result["a"] = to_float(self.a)
        result["b"] = to_float(self.b)
        result["g"] = to_float(self.g)
        result["r"] = to_float(self.r)
        return result


class BlendMode(Enum):
    """How this node blends with nodes behind it in the scene
    (see blend mode section for more details)
    
    Enum describing how layer blends with layers below
    This type is a string enum with the following possible values
    """
    COLOR = "COLOR"
    COLOR_BURN = "COLOR_BURN"
    COLOR_DODGE = "COLOR_DODGE"
    DARKEN = "DARKEN"
    DIFFERENCE = "DIFFERENCE"
    EXCLUSION = "EXCLUSION"
    HARD_LIGHT = "HARD_LIGHT"
    HUE = "HUE"
    LIGHTEN = "LIGHTEN"
    LINEAR_BURN = "LINEAR_BURN"
    LINEAR_DODGE = "LINEAR_DODGE"
    LUMINOSITY = "LUMINOSITY"
    MULTIPLY = "MULTIPLY"
    NORMAL = "NORMAL"
    OVERLAY = "OVERLAY"
    PASS_THROUGH = "PASS_THROUGH"
    SATURATION = "SATURATION"
    SCREEN = "SCREEN"
    SOFT_LIGHT = "SOFT_LIGHT"


class Horizontal(Enum):
    """Horizontal constraint as an enum
    "LEFT": Node is laid out relative to left of the containing frame
    "RIGHT": Node is laid out relative to right of the containing frame
    "CENTER": Node is horizontally centered relative to containing frame
    "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
    (node stretches with frame)
    "SCALE": Node scales horizontally with containing frame
    """
    CENTER = "CENTER"
    LEFT = "LEFT"
    LEFT_RIGHT = "LEFT_RIGHT"
    RIGHT = "RIGHT"
    SCALE = "SCALE"


class Vertical(Enum):
    """Vertical constraint as an enum
    "TOP": Node is laid out relative to top of the containing frame
    "BOTTOM": Node is laid out relative to bottom of the containing frame
    "CENTER": Node is vertically centered relative to containing frame
    "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
    (node stretches with frame)
    "SCALE": Node scales vertically with containing frame
    """
    BOTTOM = "BOTTOM"
    CENTER = "CENTER"
    SCALE = "SCALE"
    TOP = "TOP"
    TOP_BOTTOM = "TOP_BOTTOM"


class LayoutConstraint:
    """Horizontal and vertical layout constraints for node
    
    Layout constraint relative to containing Frame
    """
    """Horizontal constraint as an enum
    "LEFT": Node is laid out relative to left of the containing frame
    "RIGHT": Node is laid out relative to right of the containing frame
    "CENTER": Node is horizontally centered relative to containing frame
    "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
    (node stretches with frame)
    "SCALE": Node scales horizontally with containing frame
    """
    horizontal: Horizontal
    """Vertical constraint as an enum
    "TOP": Node is laid out relative to top of the containing frame
    "BOTTOM": Node is laid out relative to bottom of the containing frame
    "CENTER": Node is vertically centered relative to containing frame
    "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
    (node stretches with frame)
    "SCALE": Node scales vertically with containing frame
    """
    vertical: Vertical

    def __init__(self, horizontal: Horizontal, vertical: Vertical) -> None:
        self.horizontal = horizontal
        self.vertical = vertical

    @staticmethod
    def from_dict(obj: Any) -> 'LayoutConstraint':
        assert isinstance(obj, dict)
        horizontal = Horizontal(obj.get("horizontal"))
        vertical = Vertical(obj.get("vertical"))
        return LayoutConstraint(horizontal, vertical)

    def to_dict(self) -> dict:
        result: dict = {}
        result["horizontal"] = to_enum(Horizontal, self.horizontal)
        result["vertical"] = to_enum(Vertical, self.vertical)
        return result


class Vector2:
    """A 2d vector
    
    This field contains three vectors, each of which are a position in
    normalized object space (normalized object space is if the top left
    corner of the bounding box of the object is (0, 0) and the bottom
    right is (1,1)). The first position corresponds to the start of the
    gradient (value 0 for the purposes of calculating gradient stops),
    the second position is the end of the gradient (value 1), and the
    third handle position determines the width of the gradient (only
    relevant for non-linear gradients).
    
    2d vector offset within the frame.
    """
    """X coordinate of the vector"""
    x: float
    """Y coordinate of the vector"""
    y: float

    def __init__(self, x: float, y: float) -> None:
        self.x = x
        self.y = y

    @staticmethod
    def from_dict(obj: Any) -> 'Vector2':
        assert isinstance(obj, dict)
        x = from_float(obj.get("x"))
        y = from_float(obj.get("y"))
        return Vector2(x, y)

    def to_dict(self) -> dict:
        result: dict = {}
        result["x"] = to_float(self.x)
        result["y"] = to_float(self.y)
        return result


class EffectType(Enum):
    """Type of effect as a string enum"""
    BACKGROUND_BLUR = "BACKGROUND_BLUR"
    DROP_SHADOW = "DROP_SHADOW"
    INNER_SHADOW = "INNER_SHADOW"
    LAYER_BLUR = "LAYER_BLUR"


class Effect:
    """An array of effects attached to this node
    (see effects section for more details)
    
    A visual effect such as a shadow or blur
    """
    """Enum describing how layer blends with layers below
    This type is a string enum with the following possible values
    """
    blend_mode: Optional[BlendMode]
    """An RGBA color"""
    color: Optional[Color]
    """A 2d vector"""
    offset: Optional[Vector2]
    """Radius of the blur effect (applies to shadows as well)"""
    radius: float
    """Type of effect as a string enum"""
    type: EffectType
    """Is the effect active?"""
    visible: bool

    def __init__(self, blend_mode: Optional[BlendMode], color: Optional[Color], offset: Optional[Vector2], radius: float, type: EffectType, visible: bool) -> None:
        self.blend_mode = blend_mode
        self.color = color
        self.offset = offset
        self.radius = radius
        self.type = type
        self.visible = visible

    @staticmethod
    def from_dict(obj: Any) -> 'Effect':
        assert isinstance(obj, dict)
        blend_mode = from_union([BlendMode, from_none], obj.get("blendMode"))
        color = from_union([Color.from_dict, from_none], obj.get("color"))
        offset = from_union([Vector2.from_dict, from_none], obj.get("offset"))
        radius = from_float(obj.get("radius"))
        type = EffectType(obj.get("type"))
        visible = from_bool(obj.get("visible"))
        return Effect(blend_mode, color, offset, radius, type, visible)

    def to_dict(self) -> dict:
        result: dict = {}
        result["blendMode"] = from_union([lambda x: to_enum(BlendMode, x), from_none], self.blend_mode)
        result["color"] = from_union([lambda x: to_class(Color, x), from_none], self.color)
        result["offset"] = from_union([lambda x: to_class(Vector2, x), from_none], self.offset)
        result["radius"] = to_float(self.radius)
        result["type"] = to_enum(EffectType, self.type)
        result["visible"] = from_bool(self.visible)
        return result


class ConstraintType(Enum):
    """Type of constraint to apply; string enum with potential values below
    "SCALE": Scale by value
    "WIDTH": Scale proportionally and set width to value
    "HEIGHT": Scale proportionally and set height to value
    """
    HEIGHT = "HEIGHT"
    SCALE = "SCALE"
    WIDTH = "WIDTH"


class Constraint:
    """Constraint that determines sizing of exported asset
    
    Sizing constraint for exports
    """
    """Type of constraint to apply; string enum with potential values below
    "SCALE": Scale by value
    "WIDTH": Scale proportionally and set width to value
    "HEIGHT": Scale proportionally and set height to value
    """
    type: ConstraintType
    """See type property for effect of this field"""
    value: float

    def __init__(self, type: ConstraintType, value: float) -> None:
        self.type = type
        self.value = value

    @staticmethod
    def from_dict(obj: Any) -> 'Constraint':
        assert isinstance(obj, dict)
        type = ConstraintType(obj.get("type"))
        value = from_float(obj.get("value"))
        return Constraint(type, value)

    def to_dict(self) -> dict:
        result: dict = {}
        result["type"] = to_enum(ConstraintType, self.type)
        result["value"] = to_float(self.value)
        return result


class Format(Enum):
    """Image type, string enum"""
    JPG = "JPG"
    PNG = "PNG"
    SVG = "SVG"


class ExportSetting:
    """An array of export settings representing images to export from node
    
    Format and size to export an asset at
    
    An array of export settings representing images to export from this node
    
    An array of export settings representing images to export from the canvas
    """
    """Constraint that determines sizing of exported asset"""
    constraint: Constraint
    """Image type, string enum"""
    format: Format
    """File suffix to append to all filenames"""
    suffix: str

    def __init__(self, constraint: Constraint, format: Format, suffix: str) -> None:
        self.constraint = constraint
        self.format = format
        self.suffix = suffix

    @staticmethod
    def from_dict(obj: Any) -> 'ExportSetting':
        assert isinstance(obj, dict)
        constraint = Constraint.from_dict(obj.get("constraint"))
        format = Format(obj.get("format"))
        suffix = from_str(obj.get("suffix"))
        return ExportSetting(constraint, format, suffix)

    def to_dict(self) -> dict:
        result: dict = {}
        result["constraint"] = to_class(Constraint, self.constraint)
        result["format"] = to_enum(Format, self.format)
        result["suffix"] = from_str(self.suffix)
        return result


class ColorStop:
    """Positions of key points along the gradient axis with the colors
    anchored there. Colors along the gradient are interpolated smoothly
    between neighboring gradient stops.
    
    A position color pair representing a gradient stop
    """
    """Color attached to corresponding position"""
    color: Color
    """Value between 0 and 1 representing position along gradient axis"""
    position: float

    def __init__(self, color: Color, position: float) -> None:
        self.color = color
        self.position = position

    @staticmethod
    def from_dict(obj: Any) -> 'ColorStop':
        assert isinstance(obj, dict)
        color = Color.from_dict(obj.get("color"))
        position = from_float(obj.get("position"))
        return ColorStop(color, position)

    def to_dict(self) -> dict:
        result: dict = {}
        result["color"] = to_class(Color, self.color)
        result["position"] = to_float(self.position)
        return result


class FillType(Enum):
    """Type of paint as a string enum"""
    EMOJI = "EMOJI"
    GRADIENT_ANGULAR = "GRADIENT_ANGULAR"
    GRADIENT_DIAMOND = "GRADIENT_DIAMOND"
    GRADIENT_LINEAR = "GRADIENT_LINEAR"
    GRADIENT_RADIAL = "GRADIENT_RADIAL"
    IMAGE = "IMAGE"
    SOLID = "SOLID"


class Paint:
    """An array of fill paints applied to the node
    
    A solid color, gradient, or image texture that can be applied as fills or strokes
    
    An array of stroke paints applied to the node
    
    Paints applied to characters
    """
    """Solid color of the paint"""
    color: Optional[Color]
    """This field contains three vectors, each of which are a position in
    normalized object space (normalized object space is if the top left
    corner of the bounding box of the object is (0, 0) and the bottom
    right is (1,1)). The first position corresponds to the start of the
    gradient (value 0 for the purposes of calculating gradient stops),
    the second position is the end of the gradient (value 1), and the
    third handle position determines the width of the gradient (only
    relevant for non-linear gradients).
    """
    gradient_handle_positions: Optional[List[Vector2]]
    """Positions of key points along the gradient axis with the colors
    anchored there. Colors along the gradient are interpolated smoothly
    between neighboring gradient stops.
    """
    gradient_stops: Optional[List[ColorStop]]
    """Overall opacity of paint (colors within the paint can also have opacity
    values which would blend with this)
    """
    opacity: float
    """Image scaling mode"""
    scale_mode: Optional[str]
    """Type of paint as a string enum"""
    type: FillType
    """Is the paint enabled?"""
    visible: bool

    def __init__(self, color: Optional[Color], gradient_handle_positions: Optional[List[Vector2]], gradient_stops: Optional[List[ColorStop]], opacity: float, scale_mode: Optional[str], type: FillType, visible: bool) -> None:
        self.color = color
        self.gradient_handle_positions = gradient_handle_positions
        self.gradient_stops = gradient_stops
        self.opacity = opacity
        self.scale_mode = scale_mode
        self.type = type
        self.visible = visible

    @staticmethod
    def from_dict(obj: Any) -> 'Paint':
        assert isinstance(obj, dict)
        color = from_union([Color.from_dict, from_none], obj.get("color"))
        gradient_handle_positions = from_union([lambda x: from_list(Vector2.from_dict, x), from_none], obj.get("gradientHandlePositions"))
        gradient_stops = from_union([lambda x: from_list(ColorStop.from_dict, x), from_none], obj.get("gradientStops"))
        opacity = from_float(obj.get("opacity"))
        scale_mode = from_union([from_str, from_none], obj.get("scaleMode"))
        type = FillType(obj.get("type"))
        visible = from_bool(obj.get("visible"))
        return Paint(color, gradient_handle_positions, gradient_stops, opacity, scale_mode, type, visible)

    def to_dict(self) -> dict:
        result: dict = {}
        result["color"] = from_union([lambda x: to_class(Color, x), from_none], self.color)
        result["gradientHandlePositions"] = from_union([lambda x: from_list(lambda x: to_class(Vector2, x), x), from_none], self.gradient_handle_positions)
        result["gradientStops"] = from_union([lambda x: from_list(lambda x: to_class(ColorStop, x), x), from_none], self.gradient_stops)
        result["opacity"] = to_float(self.opacity)
        result["scaleMode"] = from_union([from_str, from_none], self.scale_mode)
        result["type"] = to_enum(FillType, self.type)
        result["visible"] = from_bool(self.visible)
        return result


class Alignment(Enum):
    """Positioning of grid as a string enum
    "MIN": Grid starts at the left or top of the frame
    "MAX": Grid starts at the right or bottom of the frame
    "CENTER": Grid is center aligned
    """
    CENTER = "CENTER"
    MAX = "MAX"
    MIN = "MIN"


class Pattern(Enum):
    """Orientation of the grid as a string enum
    "COLUMNS": Vertical grid
    "ROWS": Horizontal grid
    "GRID": Square grid
    """
    COLUMNS = "COLUMNS"
    GRID = "GRID"
    ROWS = "ROWS"


class LayoutGrid:
    """An array of layout grids attached to this node (see layout grids section
    for more details). GROUP nodes do not have this attribute
    
    Guides to align and place objects within a frame
    """
    """Positioning of grid as a string enum
    "MIN": Grid starts at the left or top of the frame
    "MAX": Grid starts at the right or bottom of the frame
    "CENTER": Grid is center aligned
    """
    alignment: Alignment
    """Color of the grid"""
    color: Color
    """Number of columns or rows"""
    count: float
    """Spacing in between columns and rows"""
    gutter_size: float
    """Spacing before the first column or row"""
    offset: float
    """Orientation of the grid as a string enum
    "COLUMNS": Vertical grid
    "ROWS": Horizontal grid
    "GRID": Square grid
    """
    pattern: Pattern
    """Width of column grid or height of row grid or square grid spacing"""
    section_size: float
    """Is the grid currently visible?"""
    visible: bool

    def __init__(self, alignment: Alignment, color: Color, count: float, gutter_size: float, offset: float, pattern: Pattern, section_size: float, visible: bool) -> None:
        self.alignment = alignment
        self.color = color
        self.count = count
        self.gutter_size = gutter_size
        self.offset = offset
        self.pattern = pattern
        self.section_size = section_size
        self.visible = visible

    @staticmethod
    def from_dict(obj: Any) -> 'LayoutGrid':
        assert isinstance(obj, dict)
        alignment = Alignment(obj.get("alignment"))
        color = Color.from_dict(obj.get("color"))
        count = from_float(obj.get("count"))
        gutter_size = from_float(obj.get("gutterSize"))
        offset = from_float(obj.get("offset"))
        pattern = Pattern(obj.get("pattern"))
        section_size = from_float(obj.get("sectionSize"))
        visible = from_bool(obj.get("visible"))
        return LayoutGrid(alignment, color, count, gutter_size, offset, pattern, section_size, visible)

    def to_dict(self) -> dict:
        result: dict = {}
        result["alignment"] = to_enum(Alignment, self.alignment)
        result["color"] = to_class(Color, self.color)
        result["count"] = to_float(self.count)
        result["gutterSize"] = to_float(self.gutter_size)
        result["offset"] = to_float(self.offset)
        result["pattern"] = to_enum(Pattern, self.pattern)
        result["sectionSize"] = to_float(self.section_size)
        result["visible"] = from_bool(self.visible)
        return result


class StrokeAlign(Enum):
    """Where stroke is drawn relative to the vector outline as a string enum
    "INSIDE": draw stroke inside the shape boundary
    "OUTSIDE": draw stroke outside the shape boundary
    "CENTER": draw stroke centered along the shape boundary
    """
    CENTER = "CENTER"
    INSIDE = "INSIDE"
    OUTSIDE = "OUTSIDE"


class TextAlignHorizontal(Enum):
    """Horizontal text alignment as string enum"""
    CENTER = "CENTER"
    JUSTIFIED = "JUSTIFIED"
    LEFT = "LEFT"
    RIGHT = "RIGHT"


class TextAlignVertical(Enum):
    """Vertical text alignment as string enum"""
    BOTTOM = "BOTTOM"
    CENTER = "CENTER"
    TOP = "TOP"


class TypeStyle:
    """Style of text including font family and weight (see type style
    section for more information)
    
    Metadata for character formatting
    
    Map from ID to TypeStyle for looking up style overrides
    """
    """Paints applied to characters"""
    fills: List[Paint]
    """Font family of text (standard name)"""
    font_family: str
    """PostScript font name"""
    font_post_script_name: str
    """Font size in px"""
    font_size: float
    """Numeric font weight"""
    font_weight: float
    """Is text italicized?"""
    italic: bool
    """Space between characters in px"""
    letter_spacing: float
    """Line height as a percentage of normal line height"""
    line_height_percent: float
    """Line height in px"""
    line_height_px: float
    """Horizontal text alignment as string enum"""
    text_align_horizontal: TextAlignHorizontal
    """Vertical text alignment as string enum"""
    text_align_vertical: TextAlignVertical

    def __init__(self, fills: List[Paint], font_family: str, font_post_script_name: str, font_size: float, font_weight: float, italic: bool, letter_spacing: float, line_height_percent: float, line_height_px: float, text_align_horizontal: TextAlignHorizontal, text_align_vertical: TextAlignVertical) -> None:
        self.fills = fills
        self.font_family = font_family
        self.font_post_script_name = font_post_script_name
        self.font_size = font_size
        self.font_weight = font_weight
        self.italic = italic
        self.letter_spacing = letter_spacing
        self.line_height_percent = line_height_percent
        self.line_height_px = line_height_px
        self.text_align_horizontal = text_align_horizontal
        self.text_align_vertical = text_align_vertical

    @staticmethod
    def from_dict(obj: Any) -> 'TypeStyle':
        assert isinstance(obj, dict)
        fills = from_list(Paint.from_dict, obj.get("fills"))
        font_family = from_str(obj.get("fontFamily"))
        font_post_script_name = from_str(obj.get("fontPostScriptName"))
        font_size = from_float(obj.get("fontSize"))
        font_weight = from_float(obj.get("fontWeight"))
        italic = from_bool(obj.get("italic"))
        letter_spacing = from_float(obj.get("letterSpacing"))
        line_height_percent = from_float(obj.get("lineHeightPercent"))
        line_height_px = from_float(obj.get("lineHeightPx"))
        text_align_horizontal = TextAlignHorizontal(obj.get("textAlignHorizontal"))
        text_align_vertical = TextAlignVertical(obj.get("textAlignVertical"))
        return TypeStyle(fills, font_family, font_post_script_name, font_size, font_weight, italic, letter_spacing, line_height_percent, line_height_px, text_align_horizontal, text_align_vertical)

    def to_dict(self) -> dict:
        result: dict = {}
        result["fills"] = from_list(lambda x: to_class(Paint, x), self.fills)
        result["fontFamily"] = from_str(self.font_family)
        result["fontPostScriptName"] = from_str(self.font_post_script_name)
        result["fontSize"] = to_float(self.font_size)
        result["fontWeight"] = to_float(self.font_weight)
        result["italic"] = from_bool(self.italic)
        result["letterSpacing"] = to_float(self.letter_spacing)
        result["lineHeightPercent"] = to_float(self.line_height_percent)
        result["lineHeightPx"] = to_float(self.line_height_px)
        result["textAlignHorizontal"] = to_enum(TextAlignHorizontal, self.text_align_horizontal)
        result["textAlignVertical"] = to_enum(TextAlignVertical, self.text_align_vertical)
        return result


class NodeType(Enum):
    """the type of the node, refer to table below for details"""
    BOOLEAN = "BOOLEAN"
    CANVAS = "CANVAS"
    COMPONENT = "COMPONENT"
    DOCUMENT = "DOCUMENT"
    ELLIPSE = "ELLIPSE"
    FRAME = "FRAME"
    GROUP = "GROUP"
    INSTANCE = "INSTANCE"
    LINE = "LINE"
    RECTANGLE = "RECTANGLE"
    REGULAR_POLYGON = "REGULAR_POLYGON"
    SLICE = "SLICE"
    STAR = "STAR"
    TEXT = "TEXT"
    VECTOR = "VECTOR"


class Document:
    """Node Properties
    The root node
    
    The root node within the document
    
    Represents a single page
    
    A node of fixed size containing other nodes
    
    A logical grouping of nodes
    
    A vector network, consisting of vertices and edges
    
    A group that has a boolean operation applied to it
    
    A regular star shape
    
    A straight line
    
    An ellipse
    
    A regular n-sided polygon
    
    A rectangle
    
    A text box
    
    A rectangular region of the canvas that can be exported
    
    A node that can have instances created of it that share the same properties
    A description of a master component. Helps you identify which component
    instances are attached to
    
    An instance of a component, changes to the component result in the same
    changes applied to the instance
    """
    """An array of canvases attached to the document
    
    An array of top level layers on the canvas
    
    An array of nodes that are direct children of this node
    
    An array of nodes that are being boolean operated on
    """
    children: Optional[List['Document']]
    """a string uniquely identifying this node within the document"""
    id: str
    """the name given to the node by the user in the tool.
    
    The name of the component
    """
    name: str
    """the type of the node, refer to table below for details"""
    type: NodeType
    """whether or not the node is visible on the canvas"""
    visible: bool
    """Background color of the canvas
    
    Background color of the node
    """
    background_color: Optional[Color]
    """An array of export settings representing images to export from the canvas
    
    An array of export settings representing images to export from node
    
    An array of export settings representing images to export from this node
    """
    export_settings: Optional[List[ExportSetting]]
    """Bounding box of the node in absolute space coordinates"""
    absolute_bounding_box: Optional[Rect]
    """How this node blends with nodes behind it in the scene
    (see blend mode section for more details)
    """
    blend_mode: Optional[BlendMode]
    """Does this node clip content outside of its bounds?"""
    clips_content: Optional[bool]
    """Horizontal and vertical layout constraints for node"""
    constraints: Optional[LayoutConstraint]
    """An array of effects attached to this node
    (see effects section for more details)
    """
    effects: Optional[List[Effect]]
    """Does this node mask sibling nodes in front of it?"""
    is_mask: Optional[bool]
    """An array of layout grids attached to this node (see layout grids section
    for more details). GROUP nodes do not have this attribute
    """
    layout_grids: Optional[List[LayoutGrid]]
    """Opacity of the node"""
    opacity: Optional[float]
    """Keep height and width constrained to same ratio"""
    preserve_ratio: Optional[bool]
    """Node ID of node to transition to in prototyping"""
    transition_node_id: Optional[str]
    """An array of fill paints applied to the node"""
    fills: Optional[List[Paint]]
    """Where stroke is drawn relative to the vector outline as a string enum
    "INSIDE": draw stroke inside the shape boundary
    "OUTSIDE": draw stroke outside the shape boundary
    "CENTER": draw stroke centered along the shape boundary
    """
    stroke_align: Optional[StrokeAlign]
    """An array of stroke paints applied to the node"""
    strokes: Optional[List[Paint]]
    """The weight of strokes on the node"""
    stroke_weight: Optional[float]
    """Radius of each corner of the rectangle"""
    corner_radius: Optional[float]
    """Text contained within text box"""
    characters: Optional[str]
    """Array with same number of elements as characeters in text box,
    each element is a reference to the styleOverrideTable defined
    below and maps to the corresponding character in the characters
    field. Elements with value 0 have the default type style
    """
    character_style_overrides: Optional[List[float]]
    """Style of text including font family and weight (see type style
    section for more information)
    """
    style: Optional[TypeStyle]
    """Map from ID to TypeStyle for looking up style overrides"""
    style_override_table: Optional[List[TypeStyle]]
    """The description of the component as entered in the editor"""
    description: Optional[str]
    """ID of component that this instance came from, refers to components
    table (see endpoints section below)
    """
    component_id: Optional[str]

    def __init__(self, children: Optional[List['Document']], id: str, name: str, type: NodeType, visible: bool, background_color: Optional[Color], export_settings: Optional[List[ExportSetting]], absolute_bounding_box: Optional[Rect], blend_mode: Optional[BlendMode], clips_content: Optional[bool], constraints: Optional[LayoutConstraint], effects: Optional[List[Effect]], is_mask: Optional[bool], layout_grids: Optional[List[LayoutGrid]], opacity: Optional[float], preserve_ratio: Optional[bool], transition_node_id: Optional[str], fills: Optional[List[Paint]], stroke_align: Optional[StrokeAlign], strokes: Optional[List[Paint]], stroke_weight: Optional[float], corner_radius: Optional[float], characters: Optional[str], character_style_overrides: Optional[List[float]], style: Optional[TypeStyle], style_override_table: Optional[List[TypeStyle]], description: Optional[str], component_id: Optional[str]) -> None:
        self.children = children
        self.id = id
        self.name = name
        self.type = type
        self.visible = visible
        self.background_color = background_color
        self.export_settings = export_settings
        self.absolute_bounding_box = absolute_bounding_box
        self.blend_mode = blend_mode
        self.clips_content = clips_content
        self.constraints = constraints
        self.effects = effects
        self.is_mask = is_mask
        self.layout_grids = layout_grids
        self.opacity = opacity
        self.preserve_ratio = preserve_ratio
        self.transition_node_id = transition_node_id
        self.fills = fills
        self.stroke_align = stroke_align
        self.strokes = strokes
        self.stroke_weight = stroke_weight
        self.corner_radius = corner_radius
        self.characters = characters
        self.character_style_overrides = character_style_overrides
        self.style = style
        self.style_override_table = style_override_table
        self.description = description
        self.component_id = component_id

    @staticmethod
    def from_dict(obj: Any) -> 'Document':
        assert isinstance(obj, dict)
        children = from_union([lambda x: from_list(Document.from_dict, x), from_none], obj.get("children"))
        id = from_str(obj.get("id"))
        name = from_str(obj.get("name"))
        type = NodeType(obj.get("type"))
        visible = from_bool(obj.get("visible"))
        background_color = from_union([Color.from_dict, from_none], obj.get("backgroundColor"))
        export_settings = from_union([lambda x: from_list(ExportSetting.from_dict, x), from_none], obj.get("exportSettings"))
        absolute_bounding_box = from_union([Rect.from_dict, from_none], obj.get("absoluteBoundingBox"))
        blend_mode = from_union([BlendMode, from_none], obj.get("blendMode"))
        clips_content = from_union([from_bool, from_none], obj.get("clipsContent"))
        constraints = from_union([LayoutConstraint.from_dict, from_none], obj.get("constraints"))
        effects = from_union([lambda x: from_list(Effect.from_dict, x), from_none], obj.get("effects"))
        is_mask = from_union([from_bool, from_none], obj.get("isMask"))
        layout_grids = from_union([lambda x: from_list(LayoutGrid.from_dict, x), from_none], obj.get("layoutGrids"))
        opacity = from_union([from_float, from_none], obj.get("opacity"))
        preserve_ratio = from_union([from_bool, from_none], obj.get("preserveRatio"))
        transition_node_id = from_union([from_none, from_str], obj.get("transitionNodeID"))
        fills = from_union([lambda x: from_list(Paint.from_dict, x), from_none], obj.get("fills"))
        stroke_align = from_union([StrokeAlign, from_none], obj.get("strokeAlign"))
        strokes = from_union([lambda x: from_list(Paint.from_dict, x), from_none], obj.get("strokes"))
        stroke_weight = from_union([from_float, from_none], obj.get("strokeWeight"))
        corner_radius = from_union([from_float, from_none], obj.get("cornerRadius"))
        characters = from_union([from_str, from_none], obj.get("characters"))
        character_style_overrides = from_union([lambda x: from_list(from_float, x), from_none], obj.get("characterStyleOverrides"))
        style = from_union([TypeStyle.from_dict, from_none], obj.get("style"))
        style_override_table = from_union([lambda x: from_list(TypeStyle.from_dict, x), from_none], obj.get("styleOverrideTable"))
        description = from_union([from_str, from_none], obj.get("description"))
        component_id = from_union([from_str, from_none], obj.get("componentId"))
        return Document(children, id, name, type, visible, background_color, export_settings, absolute_bounding_box, blend_mode, clips_content, constraints, effects, is_mask, layout_grids, opacity, preserve_ratio, transition_node_id, fills, stroke_align, strokes, stroke_weight, corner_radius, characters, character_style_overrides, style, style_override_table, description, component_id)

    def to_dict(self) -> dict:
        result: dict = {}
        result["children"] = from_union([lambda x: from_list(lambda x: to_class(Document, x), x), from_none], self.children)
        result["id"] = from_str(self.id)
        result["name"] = from_str(self.name)
        result["type"] = to_enum(NodeType, self.type)
        result["visible"] = from_bool(self.visible)
        result["backgroundColor"] = from_union([lambda x: to_class(Color, x), from_none], self.background_color)
        result["exportSettings"] = from_union([lambda x: from_list(lambda x: to_class(ExportSetting, x), x), from_none], self.export_settings)
        result["absoluteBoundingBox"] = from_union([lambda x: to_class(Rect, x), from_none], self.absolute_bounding_box)
        result["blendMode"] = from_union([lambda x: to_enum(BlendMode, x), from_none], self.blend_mode)
        result["clipsContent"] = from_union([from_bool, from_none], self.clips_content)
        result["constraints"] = from_union([lambda x: to_class(LayoutConstraint, x), from_none], self.constraints)
        result["effects"] = from_union([lambda x: from_list(lambda x: to_class(Effect, x), x), from_none], self.effects)
        result["isMask"] = from_union([from_bool, from_none], self.is_mask)
        result["layoutGrids"] = from_union([lambda x: from_list(lambda x: to_class(LayoutGrid, x), x), from_none], self.layout_grids)
        result["opacity"] = from_union([to_float, from_none], self.opacity)
        result["preserveRatio"] = from_union([from_bool, from_none], self.preserve_ratio)
        result["transitionNodeID"] = from_union([from_none, from_str], self.transition_node_id)
        result["fills"] = from_union([lambda x: from_list(lambda x: to_class(Paint, x), x), from_none], self.fills)
        result["strokeAlign"] = from_union([lambda x: to_enum(StrokeAlign, x), from_none], self.stroke_align)
        result["strokes"] = from_union([lambda x: from_list(lambda x: to_class(Paint, x), x), from_none], self.strokes)
        result["strokeWeight"] = from_union([to_float, from_none], self.stroke_weight)
        result["cornerRadius"] = from_union([to_float, from_none], self.corner_radius)
        result["characters"] = from_union([from_str, from_none], self.characters)
        result["characterStyleOverrides"] = from_union([lambda x: from_list(to_float, x), from_none], self.character_style_overrides)
        result["style"] = from_union([lambda x: to_class(TypeStyle, x), from_none], self.style)
        result["styleOverrideTable"] = from_union([lambda x: from_list(lambda x: to_class(TypeStyle, x), x), from_none], self.style_override_table)
        result["description"] = from_union([from_str, from_none], self.description)
        result["componentId"] = from_union([from_str, from_none], self.component_id)
        return result


class Component:
    """A node that can have instances created of it that share the same properties
    A description of a master component. Helps you identify which component
    instances are attached to
    """
    """Bounding box of the node in absolute space coordinates"""
    absolute_bounding_box: Rect
    """Background color of the node"""
    background_color: Color
    """How this node blends with nodes behind it in the scene
    (see blend mode section for more details)
    """
    blend_mode: BlendMode
    """An array of nodes that are direct children of this node"""
    children: List[Document]
    """Does this node clip content outside of its bounds?"""
    clips_content: bool
    """Horizontal and vertical layout constraints for node"""
    constraints: LayoutConstraint
    """The description of the component as entered in the editor"""
    description: str
    """An array of effects attached to this node
    (see effects section for more details)
    """
    effects: List[Effect]
    """An array of export settings representing images to export from node"""
    export_settings: List[ExportSetting]
    """a string uniquely identifying this node within the document"""
    id: str
    """Does this node mask sibling nodes in front of it?"""
    is_mask: bool
    """An array of layout grids attached to this node (see layout grids section
    for more details). GROUP nodes do not have this attribute
    """
    layout_grids: List[LayoutGrid]
    """The name of the component"""
    name: str
    """Opacity of the node"""
    opacity: float
    """Keep height and width constrained to same ratio"""
    preserve_ratio: bool
    """Node ID of node to transition to in prototyping"""
    transition_node_id: Optional[str]
    """the type of the node, refer to table below for details"""
    type: NodeType
    """whether or not the node is visible on the canvas"""
    visible: bool

    def __init__(self, absolute_bounding_box: Rect, background_color: Color, blend_mode: BlendMode, children: List[Document], clips_content: bool, constraints: LayoutConstraint, description: str, effects: List[Effect], export_settings: List[ExportSetting], id: str, is_mask: bool, layout_grids: List[LayoutGrid], name: str, opacity: float, preserve_ratio: bool, transition_node_id: Optional[str], type: NodeType, visible: bool) -> None:
        self.absolute_bounding_box = absolute_bounding_box
        self.background_color = background_color
        self.blend_mode = blend_mode
        self.children = children
        self.clips_content = clips_content
        self.constraints = constraints
        self.description = description
        self.effects = effects
        self.export_settings = export_settings
        self.id = id
        self.is_mask = is_mask
        self.layout_grids = layout_grids
        self.name = name
        self.opacity = opacity
        self.preserve_ratio = preserve_ratio
        self.transition_node_id = transition_node_id
        self.type = type
        self.visible = visible

    @staticmethod
    def from_dict(obj: Any) -> 'Component':
        assert isinstance(obj, dict)
        absolute_bounding_box = Rect.from_dict(obj.get("absoluteBoundingBox"))
        background_color = Color.from_dict(obj.get("backgroundColor"))
        blend_mode = BlendMode(obj.get("blendMode"))
        children = from_list(Document.from_dict, obj.get("children"))
        clips_content = from_bool(obj.get("clipsContent"))
        constraints = LayoutConstraint.from_dict(obj.get("constraints"))
        description = from_str(obj.get("description"))
        effects = from_list(Effect.from_dict, obj.get("effects"))
        export_settings = from_list(ExportSetting.from_dict, obj.get("exportSettings"))
        id = from_str(obj.get("id"))
        is_mask = from_bool(obj.get("isMask"))
        layout_grids = from_list(LayoutGrid.from_dict, obj.get("layoutGrids"))
        name = from_str(obj.get("name"))
        opacity = from_float(obj.get("opacity"))
        preserve_ratio = from_bool(obj.get("preserveRatio"))
        transition_node_id = from_union([from_none, from_str], obj.get("transitionNodeID"))
        type = NodeType(obj.get("type"))
        visible = from_bool(obj.get("visible"))
        return Component(absolute_bounding_box, background_color, blend_mode, children, clips_content, constraints, description, effects, export_settings, id, is_mask, layout_grids, name, opacity, preserve_ratio, transition_node_id, type, visible)

    def to_dict(self) -> dict:
        result: dict = {}
        result["absoluteBoundingBox"] = to_class(Rect, self.absolute_bounding_box)
        result["backgroundColor"] = to_class(Color, self.background_color)
        result["blendMode"] = to_enum(BlendMode, self.blend_mode)
        result["children"] = from_list(lambda x: to_class(Document, x), self.children)
        result["clipsContent"] = from_bool(self.clips_content)
        result["constraints"] = to_class(LayoutConstraint, self.constraints)
        result["description"] = from_str(self.description)
        result["effects"] = from_list(lambda x: to_class(Effect, x), self.effects)
        result["exportSettings"] = from_list(lambda x: to_class(ExportSetting, x), self.export_settings)
        result["id"] = from_str(self.id)
        result["isMask"] = from_bool(self.is_mask)
        result["layoutGrids"] = from_list(lambda x: to_class(LayoutGrid, x), self.layout_grids)
        result["name"] = from_str(self.name)
        result["opacity"] = to_float(self.opacity)
        result["preserveRatio"] = from_bool(self.preserve_ratio)
        result["transitionNodeID"] = from_union([from_none, from_str], self.transition_node_id)
        result["type"] = to_enum(NodeType, self.type)
        result["visible"] = from_bool(self.visible)
        return result


class DocumentClass:
    """Node Properties
    The root node
    
    The root node within the document
    """
    """An array of canvases attached to the document"""
    children: List[Document]
    """a string uniquely identifying this node within the document"""
    id: str
    """the name given to the node by the user in the tool."""
    name: str
    """the type of the node, refer to table below for details"""
    type: NodeType
    """whether or not the node is visible on the canvas"""
    visible: bool

    def __init__(self, children: List[Document], id: str, name: str, type: NodeType, visible: bool) -> None:
        self.children = children
        self.id = id
        self.name = name
        self.type = type
        self.visible = visible

    @staticmethod
    def from_dict(obj: Any) -> 'DocumentClass':
        assert isinstance(obj, dict)
        children = from_list(Document.from_dict, obj.get("children"))
        id = from_str(obj.get("id"))
        name = from_str(obj.get("name"))
        type = NodeType(obj.get("type"))
        visible = from_bool(obj.get("visible"))
        return DocumentClass(children, id, name, type, visible)

    def to_dict(self) -> dict:
        result: dict = {}
        result["children"] = from_list(lambda x: to_class(Document, x), self.children)
        result["id"] = from_str(self.id)
        result["name"] = from_str(self.name)
        result["type"] = to_enum(NodeType, self.type)
        result["visible"] = from_bool(self.visible)
        return result


class FileResponse:
    """GET /v1/files/:key
    
    > Description
    
    Returns the document refered to by :key as a JSON object. The file key can be parsed from
    any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
    contains a Node of type DOCUMENT.
    
    The "components" key contains a mapping from node IDs to component metadata. This is to
    help you determine which components each instance comes from. Currently the only piece of
    metadata available on components is the name of the component, but more properties will
    be forthcoming.
    
    > Path parameters
    
    key String
    File to export JSON from
    """
    """A mapping from node IDs to component metadata. This is to help you determine which
    components each instance comes from. Currently the only piece of metadata available on
    components is the name of the component, but more properties will be forthcoming.
    """
    components: Dict[str, Component]
    """The root node within the document"""
    document: DocumentClass
    schema_version: float

    def __init__(self, components: Dict[str, Component], document: DocumentClass, schema_version: float) -> None:
        self.components = components
        self.document = document
        self.schema_version = schema_version

    @staticmethod
    def from_dict(obj: Any) -> 'FileResponse':
        assert isinstance(obj, dict)
        components = from_dict(Component.from_dict, obj.get("components"))
        document = DocumentClass.from_dict(obj.get("document"))
        schema_version = from_float(obj.get("schemaVersion"))
        return FileResponse(components, document, schema_version)

    def to_dict(self) -> dict:
        result: dict = {}
        result["components"] = from_dict(lambda x: to_class(Component, x), self.components)
        result["document"] = to_class(DocumentClass, self.document)
        result["schemaVersion"] = to_float(self.schema_version)
        return result


class ClientMeta:
    """A 2d vector
    
    This field contains three vectors, each of which are a position in
    normalized object space (normalized object space is if the top left
    corner of the bounding box of the object is (0, 0) and the bottom
    right is (1,1)). The first position corresponds to the start of the
    gradient (value 0 for the purposes of calculating gradient stops),
    the second position is the end of the gradient (value 1), and the
    third handle position determines the width of the gradient (only
    relevant for non-linear gradients).
    
    2d vector offset within the frame.
    
    A relative offset within a frame
    """
    """X coordinate of the vector"""
    x: Optional[float]
    """Y coordinate of the vector"""
    y: Optional[float]
    """Unique id specifying the frame."""
    node_id: Optional[List[str]]
    """2d vector offset within the frame."""
    node_offset: Optional[Vector2]

    def __init__(self, x: Optional[float], y: Optional[float], node_id: Optional[List[str]], node_offset: Optional[Vector2]) -> None:
        self.x = x
        self.y = y
        self.node_id = node_id
        self.node_offset = node_offset

    @staticmethod
    def from_dict(obj: Any) -> 'ClientMeta':
        assert isinstance(obj, dict)
        x = from_union([from_float, from_none], obj.get("x"))
        y = from_union([from_float, from_none], obj.get("y"))
        node_id = from_union([lambda x: from_list(from_str, x), from_none], obj.get("node_id"))
        node_offset = from_union([Vector2.from_dict, from_none], obj.get("node_offset"))
        return ClientMeta(x, y, node_id, node_offset)

    def to_dict(self) -> dict:
        result: dict = {}
        result["x"] = from_union([to_float, from_none], self.x)
        result["y"] = from_union([to_float, from_none], self.y)
        result["node_id"] = from_union([lambda x: from_list(from_str, x), from_none], self.node_id)
        result["node_offset"] = from_union([lambda x: to_class(Vector2, x), from_none], self.node_offset)
        return result


class User:
    """The user who left the comment
    
    A description of a user
    """
    handle: str
    img_url: str

    def __init__(self, handle: str, img_url: str) -> None:
        self.handle = handle
        self.img_url = img_url

    @staticmethod
    def from_dict(obj: Any) -> 'User':
        assert isinstance(obj, dict)
        handle = from_str(obj.get("handle"))
        img_url = from_str(obj.get("img_url"))
        return User(handle, img_url)

    def to_dict(self) -> dict:
        result: dict = {}
        result["handle"] = from_str(self.handle)
        result["img_url"] = from_str(self.img_url)
        return result


class Comment:
    """A comment or reply left by a user"""
    client_meta: ClientMeta
    """The time at which the comment was left"""
    created_at: datetime
    """The file in which the comment lives"""
    file_key: str
    """Unique identifier for comment"""
    id: str
    """(MISSING IN DOCS)
    The content of the comment
    """
    message: str
    """Only set for top level comments. The number displayed with the
    comment in the UI
    """
    order_id: float
    """If present, the id of the comment to which this is the reply"""
    parent_id: str
    """If set, when the comment was resolved"""
    resolved_at: Optional[datetime]
    """The user who left the comment"""
    user: User

    def __init__(self, client_meta: ClientMeta, created_at: datetime, file_key: str, id: str, message: str, order_id: float, parent_id: str, resolved_at: Optional[datetime], user: User) -> None:
        self.client_meta = client_meta
        self.created_at = created_at
        self.file_key = file_key
        self.id = id
        self.message = message
        self.order_id = order_id
        self.parent_id = parent_id
        self.resolved_at = resolved_at
        self.user = user

    @staticmethod
    def from_dict(obj: Any) -> 'Comment':
        assert isinstance(obj, dict)
        client_meta = ClientMeta.from_dict(obj.get("client_meta"))
        created_at = from_datetime(obj.get("created_at"))
        file_key = from_str(obj.get("file_key"))
        id = from_str(obj.get("id"))
        message = from_str(obj.get("message"))
        order_id = from_float(obj.get("order_id"))
        parent_id = from_str(obj.get("parent_id"))
        resolved_at = from_union([from_none, from_datetime], obj.get("resolved_at"))
        user = User.from_dict(obj.get("user"))
        return Comment(client_meta, created_at, file_key, id, message, order_id, parent_id, resolved_at, user)

    def to_dict(self) -> dict:
        result: dict = {}
        result["client_meta"] = to_class(ClientMeta, self.client_meta)
        result["created_at"] = self.created_at.isoformat()
        result["file_key"] = from_str(self.file_key)
        result["id"] = from_str(self.id)
        result["message"] = from_str(self.message)
        result["order_id"] = to_float(self.order_id)
        result["parent_id"] = from_str(self.parent_id)
        result["resolved_at"] = from_union([from_none, lambda x: x.isoformat()], self.resolved_at)
        result["user"] = to_class(User, self.user)
        return result


class CommentsResponse:
    """GET /v1/files/:key/comments
    
    > Description
    A list of comments left on the file.
    
    > Path parameters
    key String
    File to get comments from
    """
    comments: List[Comment]

    def __init__(self, comments: List[Comment]) -> None:
        self.comments = comments

    @staticmethod
    def from_dict(obj: Any) -> 'CommentsResponse':
        assert isinstance(obj, dict)
        comments = from_list(Comment.from_dict, obj.get("comments"))
        return CommentsResponse(comments)

    def to_dict(self) -> dict:
        result: dict = {}
        result["comments"] = from_list(lambda x: to_class(Comment, x), self.comments)
        return result


class CommentRequest:
    """POST /v1/files/:key/comments
    
    > Description
    Posts a new comment on the file.
    
    > Path parameters
    key String
    File to get comments from
    
    > Body parameters
    message String
    The text contents of the comment to post
    
    client_meta Vector2 | FrameOffset
    The position of where to place the comment. This can either be an absolute canvas
    position or the relative position within a frame.
    
    > Return value
    The Comment that was successfully posted
    
    > Error codes
    404 The specified file was not found
    """
    client_meta: ClientMeta
    message: str

    def __init__(self, client_meta: ClientMeta, message: str) -> None:
        self.client_meta = client_meta
        self.message = message

    @staticmethod
    def from_dict(obj: Any) -> 'CommentRequest':
        assert isinstance(obj, dict)
        client_meta = ClientMeta.from_dict(obj.get("client_meta"))
        message = from_str(obj.get("message"))
        return CommentRequest(client_meta, message)

    def to_dict(self) -> dict:
        result: dict = {}
        result["client_meta"] = to_class(ClientMeta, self.client_meta)
        result["message"] = from_str(self.message)
        return result


class Project:
    id: float
    name: str

    def __init__(self, id: float, name: str) -> None:
        self.id = id
        self.name = name

    @staticmethod
    def from_dict(obj: Any) -> 'Project':
        assert isinstance(obj, dict)
        id = from_float(obj.get("id"))
        name = from_str(obj.get("name"))
        return Project(id, name)

    def to_dict(self) -> dict:
        result: dict = {}
        result["id"] = to_float(self.id)
        result["name"] = from_str(self.name)
        return result


class ProjectsResponse:
    """GET /v1/teams/:team_id/projects
    
    > Description
    Lists the projects for a specified team. Note that this will only return projects visible
    to the authenticated user or owner of the developer token.
    
    > Path parameters
    team_id String
    Id of the team to list projects from
    """
    projects: List[Project]

    def __init__(self, projects: List[Project]) -> None:
        self.projects = projects

    @staticmethod
    def from_dict(obj: Any) -> 'ProjectsResponse':
        assert isinstance(obj, dict)
        projects = from_list(Project.from_dict, obj.get("projects"))
        return ProjectsResponse(projects)

    def to_dict(self) -> dict:
        result: dict = {}
        result["projects"] = from_list(lambda x: to_class(Project, x), self.projects)
        return result


class File:
    key: str
    """utc date in iso8601"""
    last_modified: str
    name: str
    thumbnail_url: str

    def __init__(self, key: str, last_modified: str, name: str, thumbnail_url: str) -> None:
        self.key = key
        self.last_modified = last_modified
        self.name = name
        self.thumbnail_url = thumbnail_url

    @staticmethod
    def from_dict(obj: Any) -> 'File':
        assert isinstance(obj, dict)
        key = from_str(obj.get("key"))
        last_modified = from_str(obj.get("last_modified"))
        name = from_str(obj.get("name"))
        thumbnail_url = from_str(obj.get("thumbnail_url"))
        return File(key, last_modified, name, thumbnail_url)

    def to_dict(self) -> dict:
        result: dict = {}
        result["key"] = from_str(self.key)
        result["last_modified"] = from_str(self.last_modified)
        result["name"] = from_str(self.name)
        result["thumbnail_url"] = from_str(self.thumbnail_url)
        return result


class ProjectFilesResponse:
    """GET /v1/projects/:project_id/files
    
    > Description
    List the files in a given project.
    
    > Path parameters
    project_id String
    Id of the project to list files from
    """
    files: List[File]

    def __init__(self, files: List[File]) -> None:
        self.files = files

    @staticmethod
    def from_dict(obj: Any) -> 'ProjectFilesResponse':
        assert isinstance(obj, dict)
        files = from_list(File.from_dict, obj.get("files"))
        return ProjectFilesResponse(files)

    def to_dict(self) -> dict:
        result: dict = {}
        result["files"] = from_list(lambda x: to_class(File, x), self.files)
        return result


def file_response_from_dict(s: Any) -> FileResponse:
    return FileResponse.from_dict(s)


def file_response_to_dict(x: FileResponse) -> Any:
    return to_class(FileResponse, x)


def comments_response_from_dict(s: Any) -> CommentsResponse:
    return CommentsResponse.from_dict(s)


def comments_response_to_dict(x: CommentsResponse) -> Any:
    return to_class(CommentsResponse, x)


def comment_request_from_dict(s: Any) -> CommentRequest:
    return CommentRequest.from_dict(s)


def comment_request_to_dict(x: CommentRequest) -> Any:
    return to_class(CommentRequest, x)


def projects_response_from_dict(s: Any) -> ProjectsResponse:
    return ProjectsResponse.from_dict(s)


def projects_response_to_dict(x: ProjectsResponse) -> Any:
    return to_class(ProjectsResponse, x)


def project_files_response_from_dict(s: Any) -> ProjectFilesResponse:
    return ProjectFilesResponse.from_dict(s)


def project_files_response_to_dict(x: ProjectFilesResponse) -> Any:
    return to_class(ProjectFilesResponse, x)
