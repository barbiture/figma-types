# This code may look unusually verbose for Ruby (and it is), but
# it performs some subtle and complex validation of JSON data.
#
# To parse this JSON, add 'dry-struct' and 'dry-types' gems, then do:
#
#   file_response = FileResponse.from_json! "{…}"
#   puts file_response.document.children.first.style_override_table&.first.fills
#
#   comments_response = CommentsResponse.from_json! "{…}"
#   puts comments_response.comments.first.user.handle
#
#   comment_request = CommentRequest.from_json! "{…}"
#   puts comment_request.client_meta.node_offset&.x
#
#   projects_response = ProjectsResponse.from_json! "{…}"
#   puts projects_response.projects.first.id
#
#   project_files_response = ProjectFilesResponse.from_json! "{…}"
#   puts project_files_response.files.first.key
#
# If from_json! succeeds, the value returned matches the schema.

require 'json'
require 'dry-types'
require 'dry-struct'

module Types
  include Dry::Types.module

  Nil                 = Strict::Nil
  Bool                = Strict::Bool
  Hash                = Strict::Hash
  String              = Strict::String
  Double              = Strict::Float | Strict::Int
  BlendMode           = Strict::String.enum("COLOR", "COLOR_BURN", "COLOR_DODGE", "DARKEN", "DIFFERENCE", "EXCLUSION", "HARD_LIGHT", "HUE", "LIGHTEN", "LINEAR_BURN", "LINEAR_DODGE", "LUMINOSITY", "MULTIPLY", "NORMAL", "OVERLAY", "PASS_THROUGH", "SATURATION", "SCREEN", "SOFT_LIGHT")
  Horizontal          = Strict::String.enum("CENTER", "LEFT", "LEFT_RIGHT", "RIGHT", "SCALE")
  Vertical            = Strict::String.enum("BOTTOM", "CENTER", "SCALE", "TOP", "TOP_BOTTOM")
  EffectType          = Strict::String.enum("BACKGROUND_BLUR", "DROP_SHADOW", "INNER_SHADOW", "LAYER_BLUR")
  ConstraintType      = Strict::String.enum("HEIGHT", "SCALE", "WIDTH")
  Format              = Strict::String.enum("JPG", "PNG", "SVG")
  PaintType           = Strict::String.enum("EMOJI", "GRADIENT_ANGULAR", "GRADIENT_DIAMOND", "GRADIENT_LINEAR", "GRADIENT_RADIAL", "IMAGE", "SOLID")
  Alignment           = Strict::String.enum("CENTER", "MAX", "MIN")
  Pattern             = Strict::String.enum("COLUMNS", "GRID", "ROWS")
  StrokeAlign         = Strict::String.enum("CENTER", "INSIDE", "OUTSIDE")
  TextAlignHorizontal = Strict::String.enum("CENTER", "JUSTIFIED", "LEFT", "RIGHT")
  TextAlignVertical   = Strict::String.enum("BOTTOM", "CENTER", "TOP")
  NodeType            = Strict::String.enum("BOOLEAN", "CANVAS", "COMPONENT", "DOCUMENT", "ELLIPSE", "FRAME", "GROUP", "INSTANCE", "LINE", "RECTANGLE", "REGULAR_POLYGON", "SLICE", "STAR", "TEXT", "VECTOR")
end

# Bounding box of the node in absolute space coordinates
#
# A rectangle that expresses a bounding box in absolute coordinates
class Rect < Dry::Struct

  # Height of the rectangle
  attribute :height, Types::Double

  # Width of the rectangle
  attribute :width, Types::Double

  # X coordinate of top left corner of the rectangle
  attribute :x, Types::Double

  # Y coordinate of top left corner of the rectangle
  attribute :y, Types::Double

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      height: d.fetch("height"),
      width:  d.fetch("width"),
      x:      d.fetch("x"),
      y:      d.fetch("y"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "height" => @height,
      "width"  => @width,
      "x"      => @x,
      "y"      => @y,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# Background color of the node
#
# An RGBA color
#
# Color of the grid
#
# Solid color of the paint
#
# Background color of the canvas
#
# Color attached to corresponding position
class Color < Dry::Struct

  # Alpha channel value, between 0 and 1
  attribute :a, Types::Double

  # Blue channel value, between 0 and 1
  attribute :b, Types::Double

  # Green channel value, between 0 and 1
  attribute :g, Types::Double

  # Red channel value, between 0 and 1
  attribute :r, Types::Double

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      a: d.fetch("a"),
      b: d.fetch("b"),
      g: d.fetch("g"),
      r: d.fetch("r"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "a" => @a,
      "b" => @b,
      "g" => @g,
      "r" => @r,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# How this node blends with nodes behind it in the scene
# (see blend mode section for more details)
#
# Enum describing how layer blends with layers below
# This type is a string enum with the following possible values
module BlendMode
  Color       = "COLOR"
  ColorBurn   = "COLOR_BURN"
  ColorDodge  = "COLOR_DODGE"
  Darken      = "DARKEN"
  Difference  = "DIFFERENCE"
  Exclusion   = "EXCLUSION"
  HardLight   = "HARD_LIGHT"
  Hue         = "HUE"
  Lighten     = "LIGHTEN"
  LinearBurn  = "LINEAR_BURN"
  LinearDodge = "LINEAR_DODGE"
  Luminosity  = "LUMINOSITY"
  Multiply    = "MULTIPLY"
  Normal      = "NORMAL"
  Overlay     = "OVERLAY"
  PassThrough = "PASS_THROUGH"
  Saturation  = "SATURATION"
  Screen      = "SCREEN"
  SoftLight   = "SOFT_LIGHT"
end

# Horizontal constraint as an enum
# "LEFT": Node is laid out relative to left of the containing frame
# "RIGHT": Node is laid out relative to right of the containing frame
# "CENTER": Node is horizontally centered relative to containing frame
# "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
# (node stretches with frame)
# "SCALE": Node scales horizontally with containing frame
module Horizontal
  Center    = "CENTER"
  Left      = "LEFT"
  LeftRight = "LEFT_RIGHT"
  Right     = "RIGHT"
  Scale     = "SCALE"
end

# Vertical constraint as an enum
# "TOP": Node is laid out relative to top of the containing frame
# "BOTTOM": Node is laid out relative to bottom of the containing frame
# "CENTER": Node is vertically centered relative to containing frame
# "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
# (node stretches with frame)
# "SCALE": Node scales vertically with containing frame
module Vertical
  Bottom    = "BOTTOM"
  Center    = "CENTER"
  Scale     = "SCALE"
  Top       = "TOP"
  TopBottom = "TOP_BOTTOM"
end

# Horizontal and vertical layout constraints for node
#
# Layout constraint relative to containing Frame
class LayoutConstraint < Dry::Struct

  # Horizontal constraint as an enum
  # "LEFT": Node is laid out relative to left of the containing frame
  # "RIGHT": Node is laid out relative to right of the containing frame
  # "CENTER": Node is horizontally centered relative to containing frame
  # "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
  # (node stretches with frame)
  # "SCALE": Node scales horizontally with containing frame
  attribute :horizontal, Types::Horizontal

  # Vertical constraint as an enum
  # "TOP": Node is laid out relative to top of the containing frame
  # "BOTTOM": Node is laid out relative to bottom of the containing frame
  # "CENTER": Node is vertically centered relative to containing frame
  # "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
  # (node stretches with frame)
  # "SCALE": Node scales vertically with containing frame
  attribute :vertical, Types::Vertical

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      horizontal: d.fetch("horizontal"),
      vertical:   d.fetch("vertical"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "horizontal" => @horizontal,
      "vertical"   => @vertical,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# Type of effect as a string enum
module EffectType
  BackgroundBlur = "BACKGROUND_BLUR"
  DropShadow     = "DROP_SHADOW"
  InnerShadow    = "INNER_SHADOW"
  LayerBlur      = "LAYER_BLUR"
end

# A 2d vector
#
# This field contains three vectors, each of which are a position in
# normalized object space (normalized object space is if the top left
# corner of the bounding box of the object is (0, 0) and the bottom
# right is (1,1)). The first position corresponds to the start of the
# gradient (value 0 for the purposes of calculating gradient stops),
# the second position is the end of the gradient (value 1), and the
# third handle position determines the width of the gradient (only
# relevant for non-linear gradients).
#
# 2d vector offset within the frame.
class Vector2 < Dry::Struct

  # X coordinate of the vector
  attribute :x, Types::Double

  # Y coordinate of the vector
  attribute :y, Types::Double

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      x: d.fetch("x"),
      y: d.fetch("y"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "x" => @x,
      "y" => @y,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# An array of effects attached to this node
# (see effects section for more details)
#
# A visual effect such as a shadow or blur
class Effect < Dry::Struct

  # Enum describing how layer blends with layers below
  # This type is a string enum with the following possible values
  attribute :blend_mode, Types::BlendMode.optional

  # An RGBA color
  attribute :color, Color.optional

  # A 2d vector
  attribute :offset, Vector2.optional

  # Radius of the blur effect (applies to shadows as well)
  attribute :radius, Types::Double

  # Type of effect as a string enum
  attribute :effect_type, Types::EffectType

  # Is the effect active?
  attribute :visible, Types::Bool

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      blend_mode:  d["blendMode"],
      color:       d["color"] ? Color.from_dynamic!(d["color"]) : nil,
      offset:      d["offset"] ? Vector2.from_dynamic!(d["offset"]) : nil,
      radius:      d.fetch("radius"),
      effect_type: d.fetch("type"),
      visible:     d.fetch("visible"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "blendMode" => @blend_mode,
      "color"     => @color&.to_dynamic,
      "offset"    => @offset&.to_dynamic,
      "radius"    => @radius,
      "type"      => @effect_type,
      "visible"   => @visible,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# Type of constraint to apply; string enum with potential values below
# "SCALE": Scale by value
# "WIDTH": Scale proportionally and set width to value
# "HEIGHT": Scale proportionally and set height to value
module ConstraintType
  Height = "HEIGHT"
  Scale  = "SCALE"
  Width  = "WIDTH"
end

# Constraint that determines sizing of exported asset
#
# Sizing constraint for exports
class Constraint < Dry::Struct

  # Type of constraint to apply; string enum with potential values below
  # "SCALE": Scale by value
  # "WIDTH": Scale proportionally and set width to value
  # "HEIGHT": Scale proportionally and set height to value
  attribute :constraint_type, Types::ConstraintType

  # See type property for effect of this field
  attribute :value, Types::Double

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      constraint_type: d.fetch("type"),
      value:           d.fetch("value"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "type"  => @constraint_type,
      "value" => @value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# Image type, string enum
module Format
  Jpg = "JPG"
  PNG = "PNG"
  SVG = "SVG"
end

# An array of export settings representing images to export from this node
#
# An array of export settings representing images to export from node
#
# Format and size to export an asset at
#
# An array of export settings representing images to export from the canvas
class ExportSetting < Dry::Struct

  # Constraint that determines sizing of exported asset
  attribute :constraint, Constraint

  # Image type, string enum
  attribute :export_setting_format, Types::Format

  # File suffix to append to all filenames
  attribute :suffix, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      constraint:            Constraint.from_dynamic!(d.fetch("constraint")),
      export_setting_format: d.fetch("format"),
      suffix:                d.fetch("suffix"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "constraint" => @constraint.to_dynamic,
      "format"     => @export_setting_format,
      "suffix"     => @suffix,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# Positions of key points along the gradient axis with the colors
# anchored there. Colors along the gradient are interpolated smoothly
# between neighboring gradient stops.
#
# A position color pair representing a gradient stop
class ColorStop < Dry::Struct

  # Color attached to corresponding position
  attribute :color, Color

  # Value between 0 and 1 representing position along gradient axis
  attribute :position, Types::Double

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      color:    Color.from_dynamic!(d.fetch("color")),
      position: d.fetch("position"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "color"    => @color.to_dynamic,
      "position" => @position,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# Type of paint as a string enum
module PaintType
  Emoji           = "EMOJI"
  GradientAngular = "GRADIENT_ANGULAR"
  GradientDiamond = "GRADIENT_DIAMOND"
  GradientLinear  = "GRADIENT_LINEAR"
  GradientRadial  = "GRADIENT_RADIAL"
  Image           = "IMAGE"
  Solid           = "SOLID"
end

# An array of stroke paints applied to the node
#
# An array of fill paints applied to the node
#
# A solid color, gradient, or image texture that can be applied as fills or strokes
#
# Paints applied to characters
class Paint < Dry::Struct

  # Solid color of the paint
  attribute :color, Color.optional

  # This field contains three vectors, each of which are a position in
  # normalized object space (normalized object space is if the top left
  # corner of the bounding box of the object is (0, 0) and the bottom
  # right is (1,1)). The first position corresponds to the start of the
  # gradient (value 0 for the purposes of calculating gradient stops),
  # the second position is the end of the gradient (value 1), and the
  # third handle position determines the width of the gradient (only
  # relevant for non-linear gradients).
  attribute :gradient_handle_positions, Types.Array(Vector2).optional

  # Positions of key points along the gradient axis with the colors
  # anchored there. Colors along the gradient are interpolated smoothly
  # between neighboring gradient stops.
  attribute :gradient_stops, Types.Array(ColorStop).optional

  # Overall opacity of paint (colors within the paint can also have opacity
  # values which would blend with this)
  attribute :opacity, Types::Double

  # Image scaling mode
  attribute :scale_mode, Types::String.optional

  # Type of paint as a string enum
  attribute :paint_type, Types::PaintType

  # Is the paint enabled?
  attribute :visible, Types::Bool

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      color:                     d["color"] ? Color.from_dynamic!(d["color"]) : nil,
      gradient_handle_positions: d["gradientHandlePositions"]&.map { |x| Vector2.from_dynamic!(x) },
      gradient_stops:            d["gradientStops"]&.map { |x| ColorStop.from_dynamic!(x) },
      opacity:                   d.fetch("opacity"),
      scale_mode:                d["scaleMode"],
      paint_type:                d.fetch("type"),
      visible:                   d.fetch("visible"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "color"                   => @color&.to_dynamic,
      "gradientHandlePositions" => @gradient_handle_positions&.map { |x| x.to_dynamic },
      "gradientStops"           => @gradient_stops&.map { |x| x.to_dynamic },
      "opacity"                 => @opacity,
      "scaleMode"               => @scale_mode,
      "type"                    => @paint_type,
      "visible"                 => @visible,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# Positioning of grid as a string enum
# "MIN": Grid starts at the left or top of the frame
# "MAX": Grid starts at the right or bottom of the frame
# "CENTER": Grid is center aligned
module Alignment
  Center = "CENTER"
  Max    = "MAX"
  Min    = "MIN"
end

# Orientation of the grid as a string enum
# "COLUMNS": Vertical grid
# "ROWS": Horizontal grid
# "GRID": Square grid
module Pattern
  Columns = "COLUMNS"
  Grid    = "GRID"
  Rows    = "ROWS"
end

# An array of layout grids attached to this node (see layout grids section
# for more details). GROUP nodes do not have this attribute
#
# Guides to align and place objects within a frame
class LayoutGrid < Dry::Struct

  # Positioning of grid as a string enum
  # "MIN": Grid starts at the left or top of the frame
  # "MAX": Grid starts at the right or bottom of the frame
  # "CENTER": Grid is center aligned
  attribute :alignment, Types::Alignment

  # Color of the grid
  attribute :color, Color

  # Number of columns or rows
  attribute :count, Types::Double

  # Spacing in between columns and rows
  attribute :gutter_size, Types::Double

  # Spacing before the first column or row
  attribute :offset, Types::Double

  # Orientation of the grid as a string enum
  # "COLUMNS": Vertical grid
  # "ROWS": Horizontal grid
  # "GRID": Square grid
  attribute :pattern, Types::Pattern

  # Width of column grid or height of row grid or square grid spacing
  attribute :section_size, Types::Double

  # Is the grid currently visible?
  attribute :visible, Types::Bool

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      alignment:    d.fetch("alignment"),
      color:        Color.from_dynamic!(d.fetch("color")),
      count:        d.fetch("count"),
      gutter_size:  d.fetch("gutterSize"),
      offset:       d.fetch("offset"),
      pattern:      d.fetch("pattern"),
      section_size: d.fetch("sectionSize"),
      visible:      d.fetch("visible"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "alignment"   => @alignment,
      "color"       => @color.to_dynamic,
      "count"       => @count,
      "gutterSize"  => @gutter_size,
      "offset"      => @offset,
      "pattern"     => @pattern,
      "sectionSize" => @section_size,
      "visible"     => @visible,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# Where stroke is drawn relative to the vector outline as a string enum
# "INSIDE": draw stroke inside the shape boundary
# "OUTSIDE": draw stroke outside the shape boundary
# "CENTER": draw stroke centered along the shape boundary
module StrokeAlign
  Center  = "CENTER"
  Inside  = "INSIDE"
  Outside = "OUTSIDE"
end

# Horizontal text alignment as string enum
module TextAlignHorizontal
  Center    = "CENTER"
  Justified = "JUSTIFIED"
  Left      = "LEFT"
  Right     = "RIGHT"
end

# Vertical text alignment as string enum
module TextAlignVertical
  Bottom = "BOTTOM"
  Center = "CENTER"
  Top    = "TOP"
end

# Map from ID to TypeStyle for looking up style overrides
#
# Style of text including font family and weight (see type style
# section for more information)
#
# Metadata for character formatting
class TypeStyle < Dry::Struct

  # Paints applied to characters
  attribute :fills, Types.Array(Paint)

  # Font family of text (standard name)
  attribute :font_family, Types::String

  # PostScript font name
  attribute :font_post_script_name, Types::String

  # Font size in px
  attribute :font_size, Types::Double

  # Numeric font weight
  attribute :font_weight, Types::Double

  # Is text italicized?
  attribute :italic, Types::Bool

  # Space between characters in px
  attribute :letter_spacing, Types::Double

  # Line height as a percentage of normal line height
  attribute :line_height_percent, Types::Double

  # Line height in px
  attribute :line_height_px, Types::Double

  # Horizontal text alignment as string enum
  attribute :text_align_horizontal, Types::TextAlignHorizontal

  # Vertical text alignment as string enum
  attribute :text_align_vertical, Types::TextAlignVertical

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      fills:                 d.fetch("fills").map { |x| Paint.from_dynamic!(x) },
      font_family:           d.fetch("fontFamily"),
      font_post_script_name: d.fetch("fontPostScriptName"),
      font_size:             d.fetch("fontSize"),
      font_weight:           d.fetch("fontWeight"),
      italic:                d.fetch("italic"),
      letter_spacing:        d.fetch("letterSpacing"),
      line_height_percent:   d.fetch("lineHeightPercent"),
      line_height_px:        d.fetch("lineHeightPx"),
      text_align_horizontal: d.fetch("textAlignHorizontal"),
      text_align_vertical:   d.fetch("textAlignVertical"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "fills"               => @fills.map { |x| x.to_dynamic },
      "fontFamily"          => @font_family,
      "fontPostScriptName"  => @font_post_script_name,
      "fontSize"            => @font_size,
      "fontWeight"          => @font_weight,
      "italic"              => @italic,
      "letterSpacing"       => @letter_spacing,
      "lineHeightPercent"   => @line_height_percent,
      "lineHeightPx"        => @line_height_px,
      "textAlignHorizontal" => @text_align_horizontal,
      "textAlignVertical"   => @text_align_vertical,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# the type of the node, refer to table below for details
module NodeType
  Boolean        = "BOOLEAN"
  Canvas         = "CANVAS"
  Component      = "COMPONENT"
  Document       = "DOCUMENT"
  Ellipse        = "ELLIPSE"
  Frame          = "FRAME"
  Group          = "GROUP"
  Instance       = "INSTANCE"
  Line           = "LINE"
  Rectangle      = "RECTANGLE"
  RegularPolygon = "REGULAR_POLYGON"
  Slice          = "SLICE"
  Star           = "STAR"
  Text           = "TEXT"
  Vector         = "VECTOR"
end

# Node Properties
# The root node
#
# The root node within the document
#
# Represents a single page
#
# A node of fixed size containing other nodes
#
# A logical grouping of nodes
#
# A vector network, consisting of vertices and edges
#
# A group that has a boolean operation applied to it
#
# A regular star shape
#
# A straight line
#
# An ellipse
#
# A regular n-sided polygon
#
# A rectangle
#
# A text box
#
# A rectangular region of the canvas that can be exported
#
# A node that can have instances created of it that share the same properties
# A description of a master component. Helps you identify which component
# instances are attached to
#
# An instance of a component, changes to the component result in the same
# changes applied to the instance
class Vector < Dry::Struct

  # An array of canvases attached to the document
  #
  # An array of top level layers on the canvas
  #
  # An array of nodes that are direct children of this node
  #
  # An array of nodes that are being boolean operated on
  attribute :children, Types.Array(Vector).optional

  # a string uniquely identifying this node within the document
  attribute :id, Types::String

  # the name given to the node by the user in the tool.
  #
  # The name of the component
  attribute :vector_name, Types::String

  # the type of the node, refer to table below for details
  attribute :vector_type, Types::NodeType

  # whether or not the node is visible on the canvas
  attribute :visible, Types::Bool

  # Background color of the canvas
  #
  # Background color of the node
  attribute :background_color, Color.optional

  # An array of export settings representing images to export from the canvas
  #
  # An array of export settings representing images to export from node
  #
  # An array of export settings representing images to export from this node
  attribute :export_settings, Types.Array(ExportSetting).optional

  # Bounding box of the node in absolute space coordinates
  attribute :absolute_bounding_box, Rect.optional

  # How this node blends with nodes behind it in the scene
  # (see blend mode section for more details)
  attribute :blend_mode, Types::BlendMode.optional

  # Does this node clip content outside of its bounds?
  attribute :clips_content, Types::Bool.optional

  # Horizontal and vertical layout constraints for node
  attribute :constraints, LayoutConstraint.optional

  # An array of effects attached to this node
  # (see effects section for more details)
  attribute :effects, Types.Array(Effect).optional

  # Does this node mask sibling nodes in front of it?
  attribute :is_mask, Types::Bool.optional

  # An array of layout grids attached to this node (see layout grids section
  # for more details). GROUP nodes do not have this attribute
  attribute :layout_grids, Types.Array(LayoutGrid).optional

  # Opacity of the node
  attribute :opacity, Types::Double.optional

  # Keep height and width constrained to same ratio
  attribute :preserve_ratio, Types::Bool.optional

  # Node ID of node to transition to in prototyping
  attribute :transition_node_id, Types::String.optional.optional

  # An array of fill paints applied to the node
  attribute :fills, Types.Array(Paint).optional

  # Where stroke is drawn relative to the vector outline as a string enum
  # "INSIDE": draw stroke inside the shape boundary
  # "OUTSIDE": draw stroke outside the shape boundary
  # "CENTER": draw stroke centered along the shape boundary
  attribute :stroke_align, Types::StrokeAlign.optional

  # An array of stroke paints applied to the node
  attribute :strokes, Types.Array(Paint).optional

  # The weight of strokes on the node
  attribute :stroke_weight, Types::Double.optional

  # Radius of each corner of the rectangle
  attribute :corner_radius, Types::Double.optional

  # Text contained within text box
  attribute :characters, Types::String.optional

  # Array with same number of elements as characeters in text box,
  # each element is a reference to the styleOverrideTable defined
  # below and maps to the corresponding character in the characters
  # field. Elements with value 0 have the default type style
  attribute :character_style_overrides, Types.Array(Types::Double).optional

  # Style of text including font family and weight (see type style
  # section for more information)
  attribute :style, TypeStyle.optional

  # Map from ID to TypeStyle for looking up style overrides
  attribute :style_override_table, Types.Array(TypeStyle).optional

  # The description of the component as entered in the editor
  attribute :description, Types::String.optional

  # ID of component that this instance came from, refers to components
  # table (see endpoints section below)
  attribute :component_id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      children:                  d["children"]&.map { |x| Vector.from_dynamic!(x) },
      id:                        d.fetch("id"),
      vector_name:               d.fetch("name"),
      vector_type:               d.fetch("type"),
      visible:                   d.fetch("visible"),
      background_color:          d["backgroundColor"] ? Color.from_dynamic!(d["backgroundColor"]) : nil,
      export_settings:           d["exportSettings"]&.map { |x| ExportSetting.from_dynamic!(x) },
      absolute_bounding_box:     d["absoluteBoundingBox"] ? Rect.from_dynamic!(d["absoluteBoundingBox"]) : nil,
      blend_mode:                d["blendMode"],
      clips_content:             d["clipsContent"],
      constraints:               d["constraints"] ? LayoutConstraint.from_dynamic!(d["constraints"]) : nil,
      effects:                   d["effects"]&.map { |x| Effect.from_dynamic!(x) },
      is_mask:                   d["isMask"],
      layout_grids:              d["layoutGrids"]&.map { |x| LayoutGrid.from_dynamic!(x) },
      opacity:                   d["opacity"],
      preserve_ratio:            d["preserveRatio"],
      transition_node_id:        d["transitionNodeID"],
      fills:                     d["fills"]&.map { |x| Paint.from_dynamic!(x) },
      stroke_align:              d["strokeAlign"],
      strokes:                   d["strokes"]&.map { |x| Paint.from_dynamic!(x) },
      stroke_weight:             d["strokeWeight"],
      corner_radius:             d["cornerRadius"],
      characters:                d["characters"],
      character_style_overrides: d["characterStyleOverrides"],
      style:                     d["style"] ? TypeStyle.from_dynamic!(d["style"]) : nil,
      style_override_table:      d["styleOverrideTable"]&.map { |x| TypeStyle.from_dynamic!(x) },
      description:               d["description"],
      component_id:              d["componentId"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "children"                => @children&.map { |x| x.to_dynamic },
      "id"                      => @id,
      "name"                    => @vector_name,
      "type"                    => @vector_type,
      "visible"                 => @visible,
      "backgroundColor"         => @background_color&.to_dynamic,
      "exportSettings"          => @export_settings&.map { |x| x.to_dynamic },
      "absoluteBoundingBox"     => @absolute_bounding_box&.to_dynamic,
      "blendMode"               => @blend_mode,
      "clipsContent"            => @clips_content,
      "constraints"             => @constraints&.to_dynamic,
      "effects"                 => @effects&.map { |x| x.to_dynamic },
      "isMask"                  => @is_mask,
      "layoutGrids"             => @layout_grids&.map { |x| x.to_dynamic },
      "opacity"                 => @opacity,
      "preserveRatio"           => @preserve_ratio,
      "transitionNodeID"        => @transition_node_id,
      "fills"                   => @fills&.map { |x| x.to_dynamic },
      "strokeAlign"             => @stroke_align,
      "strokes"                 => @strokes&.map { |x| x.to_dynamic },
      "strokeWeight"            => @stroke_weight,
      "cornerRadius"            => @corner_radius,
      "characters"              => @characters,
      "characterStyleOverrides" => @character_style_overrides,
      "style"                   => @style&.to_dynamic,
      "styleOverrideTable"      => @style_override_table&.map { |x| x.to_dynamic },
      "description"             => @description,
      "componentId"             => @component_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# A node that can have instances created of it that share the same properties
# A description of a master component. Helps you identify which component
# instances are attached to
class Component < Dry::Struct

  # Bounding box of the node in absolute space coordinates
  attribute :absolute_bounding_box, Rect

  # Background color of the node
  attribute :background_color, Color

  # How this node blends with nodes behind it in the scene
  # (see blend mode section for more details)
  attribute :blend_mode, Types::BlendMode

  # An array of nodes that are direct children of this node
  attribute :children, Types.Array(Vector)

  # Does this node clip content outside of its bounds?
  attribute :clips_content, Types::Bool

  # Horizontal and vertical layout constraints for node
  attribute :constraints, LayoutConstraint

  # The description of the component as entered in the editor
  attribute :description, Types::String

  # An array of effects attached to this node
  # (see effects section for more details)
  attribute :effects, Types.Array(Effect)

  # An array of export settings representing images to export from node
  attribute :export_settings, Types.Array(ExportSetting)

  # a string uniquely identifying this node within the document
  attribute :id, Types::String

  # Does this node mask sibling nodes in front of it?
  attribute :is_mask, Types::Bool

  # An array of layout grids attached to this node (see layout grids section
  # for more details). GROUP nodes do not have this attribute
  attribute :layout_grids, Types.Array(LayoutGrid)

  # The name of the component
  attribute :component_name, Types::String

  # Opacity of the node
  attribute :opacity, Types::Double

  # Keep height and width constrained to same ratio
  attribute :preserve_ratio, Types::Bool

  # Node ID of node to transition to in prototyping
  attribute :transition_node_id, Types::String.optional

  # the type of the node, refer to table below for details
  attribute :component_type, Types::NodeType

  # whether or not the node is visible on the canvas
  attribute :visible, Types::Bool

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      absolute_bounding_box: Rect.from_dynamic!(d.fetch("absoluteBoundingBox")),
      background_color:      Color.from_dynamic!(d.fetch("backgroundColor")),
      blend_mode:            d.fetch("blendMode"),
      children:              d.fetch("children").map { |x| Vector.from_dynamic!(x) },
      clips_content:         d.fetch("clipsContent"),
      constraints:           LayoutConstraint.from_dynamic!(d.fetch("constraints")),
      description:           d.fetch("description"),
      effects:               d.fetch("effects").map { |x| Effect.from_dynamic!(x) },
      export_settings:       d.fetch("exportSettings").map { |x| ExportSetting.from_dynamic!(x) },
      id:                    d.fetch("id"),
      is_mask:               d.fetch("isMask"),
      layout_grids:          d.fetch("layoutGrids").map { |x| LayoutGrid.from_dynamic!(x) },
      component_name:        d.fetch("name"),
      opacity:               d.fetch("opacity"),
      preserve_ratio:        d.fetch("preserveRatio"),
      transition_node_id:    d.fetch("transitionNodeID"),
      component_type:        d.fetch("type"),
      visible:               d.fetch("visible"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "absoluteBoundingBox" => @absolute_bounding_box.to_dynamic,
      "backgroundColor"     => @background_color.to_dynamic,
      "blendMode"           => @blend_mode,
      "children"            => @children.map { |x| x.to_dynamic },
      "clipsContent"        => @clips_content,
      "constraints"         => @constraints.to_dynamic,
      "description"         => @description,
      "effects"             => @effects.map { |x| x.to_dynamic },
      "exportSettings"      => @export_settings.map { |x| x.to_dynamic },
      "id"                  => @id,
      "isMask"              => @is_mask,
      "layoutGrids"         => @layout_grids.map { |x| x.to_dynamic },
      "name"                => @component_name,
      "opacity"             => @opacity,
      "preserveRatio"       => @preserve_ratio,
      "transitionNodeID"    => @transition_node_id,
      "type"                => @component_type,
      "visible"             => @visible,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# Node Properties
# The root node
#
# The root node within the document
class Document < Dry::Struct

  # An array of canvases attached to the document
  attribute :children, Types.Array(Vector)

  # a string uniquely identifying this node within the document
  attribute :id, Types::String

  # the name given to the node by the user in the tool.
  attribute :document_name, Types::String

  # the type of the node, refer to table below for details
  attribute :document_type, Types::NodeType

  # whether or not the node is visible on the canvas
  attribute :visible, Types::Bool

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      children:      d.fetch("children").map { |x| Vector.from_dynamic!(x) },
      id:            d.fetch("id"),
      document_name: d.fetch("name"),
      document_type: d.fetch("type"),
      visible:       d.fetch("visible"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "children" => @children.map { |x| x.to_dynamic },
      "id"       => @id,
      "name"     => @document_name,
      "type"     => @document_type,
      "visible"  => @visible,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# GET /v1/files/:key
#
# > Description
#
# Returns the document refered to by :key as a JSON object. The file key can be parsed from
# any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
# contains a Node of type DOCUMENT.
#
# The "components" key contains a mapping from node IDs to component metadata. This is to
# help you determine which components each instance comes from. Currently the only piece of
# metadata available on components is the name of the component, but more properties will
# be forthcoming.
#
# > Path parameters
#
# key String
# File to export JSON from
class FileResponse < Dry::Struct

  # A mapping from node IDs to component metadata. This is to help you determine which
  # components each instance comes from. Currently the only piece of metadata available on
  # components is the name of the component, but more properties will be forthcoming.
  attribute :components, Types::Hash.meta(of: Component)

  # The root node within the document
  attribute :document, Document

  attribute :schema_version, Types::Double

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      components:     Types::Hash[d.fetch("components")].map { |k, v| [k, Component.from_dynamic!(v)] }.to_h,
      document:       Document.from_dynamic!(d.fetch("document")),
      schema_version: d.fetch("schemaVersion"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "components"    => @components.map { |k, v| [k, v.to_dynamic] }.to_h,
      "document"      => @document.to_dynamic,
      "schemaVersion" => @schema_version,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# A 2d vector
#
# This field contains three vectors, each of which are a position in
# normalized object space (normalized object space is if the top left
# corner of the bounding box of the object is (0, 0) and the bottom
# right is (1,1)). The first position corresponds to the start of the
# gradient (value 0 for the purposes of calculating gradient stops),
# the second position is the end of the gradient (value 1), and the
# third handle position determines the width of the gradient (only
# relevant for non-linear gradients).
#
# 2d vector offset within the frame.
#
# A relative offset within a frame
class ClientMeta < Dry::Struct

  # X coordinate of the vector
  attribute :x, Types::Double.optional

  # Y coordinate of the vector
  attribute :y, Types::Double.optional

  # Unique id specifying the frame.
  attribute :node_id, Types.Array(Types::String).optional

  # 2d vector offset within the frame.
  attribute :node_offset, Vector2.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      x:           d["x"],
      y:           d["y"],
      node_id:     d["node_id"],
      node_offset: d["node_offset"] ? Vector2.from_dynamic!(d["node_offset"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "x"           => @x,
      "y"           => @y,
      "node_id"     => @node_id,
      "node_offset" => @node_offset&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# The user who left the comment
#
# A description of a user
class User < Dry::Struct
  attribute :handle,  Types::String
  attribute :img_url, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      handle:  d.fetch("handle"),
      img_url: d.fetch("img_url"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "handle"  => @handle,
      "img_url" => @img_url,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# A comment or reply left by a user
class Comment < Dry::Struct
  attribute :client_meta, ClientMeta

  # The time at which the comment was left
  attribute :created_at, Types::String

  # The file in which the comment lives
  attribute :file_key, Types::String

  # Unique identifier for comment
  attribute :id, Types::String

  # (MISSING IN DOCS)
  # The content of the comment
  attribute :message, Types::String

  # Only set for top level comments. The number displayed with the
  # comment in the UI
  attribute :order_id, Types::Double

  # If present, the id of the comment to which this is the reply
  attribute :parent_id, Types::String

  # If set, when the comment was resolved
  attribute :resolved_at, Types::String.optional

  # The user who left the comment
  attribute :user, User

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      client_meta: ClientMeta.from_dynamic!(d.fetch("client_meta")),
      created_at:  d.fetch("created_at"),
      file_key:    d.fetch("file_key"),
      id:          d.fetch("id"),
      message:     d.fetch("message"),
      order_id:    d.fetch("order_id"),
      parent_id:   d.fetch("parent_id"),
      resolved_at: d.fetch("resolved_at"),
      user:        User.from_dynamic!(d.fetch("user")),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "client_meta" => @client_meta.to_dynamic,
      "created_at"  => @created_at,
      "file_key"    => @file_key,
      "id"          => @id,
      "message"     => @message,
      "order_id"    => @order_id,
      "parent_id"   => @parent_id,
      "resolved_at" => @resolved_at,
      "user"        => @user.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# GET /v1/files/:key/comments
#
# > Description
# A list of comments left on the file.
#
# > Path parameters
# key String
# File to get comments from
class CommentsResponse < Dry::Struct
  attribute :comments, Types.Array(Comment)

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      comments: d.fetch("comments").map { |x| Comment.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "comments" => @comments.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# POST /v1/files/:key/comments
#
# > Description
# Posts a new comment on the file.
#
# > Path parameters
# key String
# File to get comments from
#
# > Body parameters
# message String
# The text contents of the comment to post
#
# client_meta Vector2 | FrameOffset
# The position of where to place the comment. This can either be an absolute canvas
# position or the relative position within a frame.
#
# > Return value
# The Comment that was successfully posted
#
# > Error codes
# 404 The specified file was not found
class CommentRequest < Dry::Struct
  attribute :client_meta, ClientMeta
  attribute :message,     Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      client_meta: ClientMeta.from_dynamic!(d.fetch("client_meta")),
      message:     d.fetch("message"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "client_meta" => @client_meta.to_dynamic,
      "message"     => @message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class Project < Dry::Struct
  attribute :id,           Types::Double
  attribute :project_name, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:           d.fetch("id"),
      project_name: d.fetch("name"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => @id,
      "name" => @project_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# GET /v1/teams/:team_id/projects
#
# > Description
# Lists the projects for a specified team. Note that this will only return projects visible
# to the authenticated user or owner of the developer token.
#
# > Path parameters
# team_id String
# Id of the team to list projects from
class ProjectsResponse < Dry::Struct
  attribute :projects, Types.Array(Project)

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      projects: d.fetch("projects").map { |x| Project.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "projects" => @projects.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class FileElement < Dry::Struct
  attribute :key, Types::String

  # utc date in iso8601
  attribute :last_modified, Types::String

  attribute :file_name,     Types::String
  attribute :thumbnail_url, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      key:           d.fetch("key"),
      last_modified: d.fetch("last_modified"),
      file_name:     d.fetch("name"),
      thumbnail_url: d.fetch("thumbnail_url"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "key"           => @key,
      "last_modified" => @last_modified,
      "name"          => @file_name,
      "thumbnail_url" => @thumbnail_url,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

# GET /v1/projects/:project_id/files
#
# > Description
# List the files in a given project.
#
# > Path parameters
# project_id String
# Id of the project to list files from
class ProjectFilesResponse < Dry::Struct
  attribute :files, Types.Array(FileElement)

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      files: d.fetch("files").map { |x| FileElement.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "files" => @files.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end
