//  To parse this JSON data, first install
//
//      Boost     http://www.boost.org
//      json.hpp  https://github.com/nlohmann/json
//
//  Then include this file, and then do
//
//     Vector data = nlohmann::json::parse(jsonString);
//     Color data = nlohmann::json::parse(jsonString);
//     ColorStop data = nlohmann::json::parse(jsonString);
//     LayoutConstraint data = nlohmann::json::parse(jsonString);
//     Text data = nlohmann::json::parse(jsonString);
//     Frame data = nlohmann::json::parse(jsonString);
//     Rectangle data = nlohmann::json::parse(jsonString);
//     LayoutGrid data = nlohmann::json::parse(jsonString);
//     Effect data = nlohmann::json::parse(jsonString);
//     Slice data = nlohmann::json::parse(jsonString);
//     Star data = nlohmann::json::parse(jsonString);
//     Line data = nlohmann::json::parse(jsonString);
//     BlendMode data = nlohmann::json::parse(jsonString);
//     Instance data = nlohmann::json::parse(jsonString);
//     Vector2D data = nlohmann::json::parse(jsonString);
//     TypeStyle data = nlohmann::json::parse(jsonString);
//     BooleanGroup data = nlohmann::json::parse(jsonString);
//     Canvas data = nlohmann::json::parse(jsonString);
//     Document data = nlohmann::json::parse(jsonString);
//     NodeType data = nlohmann::json::parse(jsonString);
//     ExportSetting data = nlohmann::json::parse(jsonString);
//     Component data = nlohmann::json::parse(jsonString);
//     FileResponse data = nlohmann::json::parse(jsonString);
//     Constraint data = nlohmann::json::parse(jsonString);
//     Paint data = nlohmann::json::parse(jsonString);
//     RegularPolygon data = nlohmann::json::parse(jsonString);
//     Ellipse data = nlohmann::json::parse(jsonString);
//     Group data = nlohmann::json::parse(jsonString);

#ifndef __QUICKTYPE_VECTOR_COLOR_COLORSTOP_LAYOUTCONSTRAINT_TEXT_FRAME_RECTANGLE_LAYOUTGRID_EFFECT_SLICE_STAR_LINE_BLENDMODE_INSTANCE_VECTOR2D_TYPESTYLE_BOOLEANGROUP_CANVAS_DOCUMENT_NODETYPE_EXPORTSETTING_COMPONENT_FILERESPONSE_CONSTRAINT_PAINT_REGULARPOLYGON_ELLIPSE_GROUP_HPP__
#define __QUICKTYPE_VECTOR_COLOR_COLORSTOP_LAYOUTCONSTRAINT_TEXT_FRAME_RECTANGLE_LAYOUTGRID_EFFECT_SLICE_STAR_LINE_BLENDMODE_INSTANCE_VECTOR2D_TYPESTYLE_BOOLEANGROUP_CANVAS_DOCUMENT_NODETYPE_EXPORTSETTING_COMPONENT_FILERESPONSE_CONSTRAINT_PAINT_REGULARPOLYGON_ELLIPSE_GROUP_HPP__

#include "json.hpp"

namespace quicktype {
    using nlohmann::json;

    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    enum class BlendMode { COLOR, COLOR_BURN, COLOR_DODGE, DARKEN, DIFFERENCE, EXCLUSION, HARD_LIGHT, HUE, LIGHTEN, LINEAR_BURN, LINEAR_DODGE, LUMINOSITY, MULTIPLY, NORMAL, OVERLAY, PASS_THROUGH, SATURATION, SCREEN, SOFT_LIGHT };

    /**
     * Horizontal constraint as an enum
     * "LEFT": Node is laid out relative to left of the containing frame
     * "RIGHT": Node is laid out relative to right of the containing frame
     * "CENTER": Node is horizontally centered relative to containing frame
     * "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
     * (node stretches with frame)
     * "SCALE": Node scales horizontally with containing frame
     */
    enum class Horizontal { CENTER, LEFT, LEFT_RIGHT, RIGHT, SCALE };

    /**
     * Vertical constraint as an enum
     * "TOP": Node is laid out relative to top of the containing frame
     * "BOTTOM": Node is laid out relative to bottom of the containing frame
     * "CENTER": Node is vertically centered relative to containing frame
     * "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
     * (node stretches with frame)
     * "SCALE": Node scales vertically with containing frame
     */
    enum class Vertical { BOTTOM, CENTER, SCALE, TOP, TOP_BOTTOM };

    /**
     * Layout constraint relative to containing Frame
     *
     * Horizontal and vertical layout constraints for node
     */
    struct Constraints {
        /**
         * Horizontal constraint as an enum
         * "LEFT": Node is laid out relative to left of the containing frame
         * "RIGHT": Node is laid out relative to right of the containing frame
         * "CENTER": Node is horizontally centered relative to containing frame
         * "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
         * (node stretches with frame)
         * "SCALE": Node scales horizontally with containing frame
         */
        std::unique_ptr<Horizontal> horizontal;
        /**
         * Vertical constraint as an enum
         * "TOP": Node is laid out relative to top of the containing frame
         * "BOTTOM": Node is laid out relative to bottom of the containing frame
         * "CENTER": Node is vertically centered relative to containing frame
         * "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
         * (node stretches with frame)
         * "SCALE": Node scales vertically with containing frame
         */
        std::unique_ptr<Vertical> vertical;
    };

    /**
     * An RGBA color
     *
     * Solid color of the paint
     *
     * Color attached to corresponding position
     *
     * Color of the grid
     *
     * Background color of the node
     *
     * Background color of the canvas
     */
    struct Olor {
        /**
         * Alpha channel value, between 0 and 1
         */
        std::unique_ptr<double> a;
        /**
         * Blue channel value, between 0 and 1
         */
        std::unique_ptr<double> b;
        /**
         * Green channel value, between 0 and 1
         */
        std::unique_ptr<double> g;
        /**
         * Red channel value, between 0 and 1
         */
        std::unique_ptr<double> r;
    };

    /**
     * A 2d vector
     *
     * This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left
     * corner of the bounding box of the object is (0, 0) and the bottom
     * right is (1,1)). The first position corresponds to the start of the
     * gradient (value 0 for the purposes of calculating gradient stops),
     * the second position is the end of the gradient (value 1), and the
     * third handle position determines the width of the gradient (only
     * relevant for non-linear gradients).
     */
    struct Offset {
        /**
         * X coordinate of the vector
         */
        std::unique_ptr<double> x;
        /**
         * Y coordinate of the vector
         */
        std::unique_ptr<double> y;
    };

    /**
     * Type of effect as a string enum
     */
    enum class EffectType { BACKGROUND_BLUR, DROP_SHADOW, INNER_SHADOW, LAYER_BLUR };

    /**
     * A visual effect such as a shadow or blur
     *
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    struct EffectElement {
        std::unique_ptr<BlendMode> blend_mode;
        std::unique_ptr<struct Olor> color;
        std::unique_ptr<struct Offset> offset;
        /**
         * Radius of the blur effect (applies to shadows as well)
         */
        std::unique_ptr<double> radius;
        /**
         * Type of effect as a string enum
         */
        std::unique_ptr<EffectType> type;
        /**
         * Is the effect active?
         */
        std::unique_ptr<bool> visible;
    };

    /**
     * Type of constraint to apply; string enum with potential values below
     * "SCALE": Scale by value
     * "WIDTH": Scale proportionally and set width to value
     * "HEIGHT": Scale proportionally and set height to value
     */
    enum class ConstraintType { HEIGHT, SCALE, WIDTH };

    /**
     * Sizing constraint for exports
     *
     * Constraint that determines sizing of exported asset
     */
    struct ExportSettingConstraint {
        /**
         * Type of constraint to apply; string enum with potential values below
         * "SCALE": Scale by value
         * "WIDTH": Scale proportionally and set width to value
         * "HEIGHT": Scale proportionally and set height to value
         */
        std::unique_ptr<ConstraintType> type;
        /**
         * See type property for effect of this field
         */
        std::unique_ptr<double> value;
    };

    /**
     * Image type, string enum
     */
    enum class Format { JPG, PNG, SVG };

    /**
     * File suffix to append to all filenames
     */
    enum class Suffix { STRING };

    /**
     * Format and size to export an asset at
     *
     * An array of export settings representing images to export from node
     *
     * An array of export settings representing images to export from this node
     *
     * An array of export settings representing images to export from the canvas
     */
    struct ExportSettingElement {
        /**
         * Constraint that determines sizing of exported asset
         */
        std::unique_ptr<struct ExportSettingConstraint> constraint;
        /**
         * Image type, string enum
         */
        std::unique_ptr<Format> format;
        /**
         * File suffix to append to all filenames
         */
        std::unique_ptr<Suffix> suffix;
    };

    /**
     * A position color pair representing a gradient stop
     *
     * Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly
     * between neighboring gradient stops.
     */
    struct ColorStopElement {
        /**
         * Color attached to corresponding position
         */
        std::unique_ptr<struct Olor> color;
        /**
         * Value between 0 and 1 representing position along gradient axis
         */
        std::unique_ptr<double> position;
    };

    /**
     * Type of paint as a string enum
     */
    enum class PaintType { EMOJI, GRADIENT_ANGULAR, GRADIENT_DIAMOND, GRADIENT_LINEAR, GRADIENT_RADIAL, IMAGE, SOLID };

    /**
     * A solid color, gradient, or image texture that can be applied as fills or strokes
     *
     * An array of fill paints applied to the node
     *
     * An array of stroke paints applied to the node
     *
     * Paints applied to characters
     */
    struct PaintElement {
        /**
         * Solid color of the paint
         */
        std::unique_ptr<struct Olor> color;
        /**
         * This field contains three vectors, each of which are a position in
         * normalized object space (normalized object space is if the top left
         * corner of the bounding box of the object is (0, 0) and the bottom
         * right is (1,1)). The first position corresponds to the start of the
         * gradient (value 0 for the purposes of calculating gradient stops),
         * the second position is the end of the gradient (value 1), and the
         * third handle position determines the width of the gradient (only
         * relevant for non-linear gradients).
         */
        std::unique_ptr<std::vector<struct Offset>> gradient_handle_positions;
        /**
         * Positions of key points along the gradient axis with the colors
         * anchored there. Colors along the gradient are interpolated smoothly
         * between neighboring gradient stops.
         */
        std::unique_ptr<std::vector<struct ColorStopElement>> gradient_stops;
        /**
         * Overall opacity of paint (colors within the paint can also have opacity
         * values which would blend with this)
         */
        std::unique_ptr<double> opacity;
        /**
         * Image scaling mode
         */
        std::unique_ptr<std::string> scale_mode;
        /**
         * Type of paint as a string enum
         */
        std::unique_ptr<PaintType> type;
        /**
         * Is the paint enabled?
         */
        std::unique_ptr<bool> visible;
    };

    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
     */
    enum class StrokeAlign { CENTER, INSIDE, OUTSIDE };

    /**
     * the type of the node, refer to table below for details
     */
    enum class NodeType { BOOLEAN, CANVAS, COMPONENT, DOCUMENT, ELLIPSE, FRAME, GROUP, INSTANCE, LINE, RECTANGLE, REGULAR_POLYGON, SLICE, STAR, TEXT, VECTOR };

    /**
     * A rectangle
     *
     * Bounding box of the node in absolute space coordinates
     *
     * An array of nodes that are being boolean operated on
     *
     * An array of nodes that are direct children of this node
     *
     * An array of top level layers on the canvas
     *
     * An array of canvases attached to the document
     */
    struct AbsoluteBoundingBox {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * Radius of each corner of the rectangle
         */
        std::unique_ptr<double> corner_radius;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         * "INSIDE": draw stroke inside the shape boundary
         * "OUTSIDE": draw stroke outside the shape boundary
         * "CENTER": draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> strokes;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
    };

    /**
     * A vector network, consisting of vertices and edges
     */
    struct Vector {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         * "INSIDE": draw stroke inside the shape boundary
         * "OUTSIDE": draw stroke outside the shape boundary
         * "CENTER": draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> strokes;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
    };

    /**
     * An RGBA color
     */
    struct Color {
        /**
         * Alpha channel value, between 0 and 1
         */
        std::unique_ptr<double> a;
        /**
         * Blue channel value, between 0 and 1
         */
        std::unique_ptr<double> b;
        /**
         * Green channel value, between 0 and 1
         */
        std::unique_ptr<double> g;
        /**
         * Red channel value, between 0 and 1
         */
        std::unique_ptr<double> r;
    };

    /**
     * A position color pair representing a gradient stop
     */
    struct ColorStop {
        /**
         * Color attached to corresponding position
         */
        std::unique_ptr<struct Olor> color;
        /**
         * Value between 0 and 1 representing position along gradient axis
         */
        std::unique_ptr<double> position;
    };

    /**
     * Layout constraint relative to containing Frame
     */
    struct LayoutConstraint {
        /**
         * Horizontal constraint as an enum
         * "LEFT": Node is laid out relative to left of the containing frame
         * "RIGHT": Node is laid out relative to right of the containing frame
         * "CENTER": Node is horizontally centered relative to containing frame
         * "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
         * (node stretches with frame)
         * "SCALE": Node scales horizontally with containing frame
         */
        std::unique_ptr<Horizontal> horizontal;
        /**
         * Vertical constraint as an enum
         * "TOP": Node is laid out relative to top of the containing frame
         * "BOTTOM": Node is laid out relative to bottom of the containing frame
         * "CENTER": Node is vertically centered relative to containing frame
         * "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
         * (node stretches with frame)
         * "SCALE": Node scales vertically with containing frame
         */
        std::unique_ptr<Vertical> vertical;
    };

    /**
     * Horizontal text alignment as string enum
     */
    enum class TextAlignHorizontal { CENTER, JUSTIFIED, LEFT, RIGHT };

    /**
     * Vertical text alignment as string enum
     */
    enum class TextAlignVertical { BOTTOM, CENTER, TOP };

    /**
     * Metadata for character formatting
     *
     * Map from ID to TypeStyle for looking up style overrides
     *
     * Style of text including font family and weight (see type style
     * section for more information)
     */
    struct Tyle {
        /**
         * Line height in px
         */
        std::unique_ptr<double> line_height_px;
        /**
         * PostScript font name
         */
        std::unique_ptr<std::string> font_post_script_name;
        /**
         * Numeric font weight
         */
        std::unique_ptr<double> font_weight;
        /**
         * Line height as a percentage of normal line height
         */
        std::unique_ptr<double> line_height_percent;
        /**
         * Vertical text alignment as string enum
         */
        std::unique_ptr<TextAlignVertical> text_align_vertical;
        /**
         * Font size in px
         */
        std::unique_ptr<double> font_size;
        /**
         * Is text italicized?
         */
        std::unique_ptr<bool> italic;
        /**
         * Paints applied to characters
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * Font family of text (standard name)
         */
        std::unique_ptr<std::string> font_family;
        /**
         * Horizontal text alignment as string enum
         */
        std::unique_ptr<TextAlignHorizontal> text_align_horizontal;
        /**
         * Space between characters in px
         */
        std::unique_ptr<double> letter_spacing;
    };

    /**
     * A text box
     */
    struct Text {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * Text contained within text box
         */
        std::unique_ptr<std::string> characters;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         * "INSIDE": draw stroke inside the shape boundary
         * "OUTSIDE": draw stroke outside the shape boundary
         * "CENTER": draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::vector<struct Tyle>> style_override_table;
        /**
         * Style of text including font family and weight (see type style
         * section for more information)
         */
        std::unique_ptr<struct Tyle> style;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> strokes;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
        /**
         * Array with same number of elements as characeters in text box,
         * each element is a reference to the styleOverrideTable defined
         * below and maps to the corresponding character in the characters
         * field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
    };

    /**
     * Positioning of grid as a string enum
     * "MIN": Grid starts at the left or top of the frame
     * "MAX": Grid starts at the right or bottom of the frame
     * "CENTER": Grid is center aligned
     */
    enum class Alignment { CENTER, MAX, MIN };

    /**
     * Orientation of the grid as a string enum
     * "COLUMNS": Vertical grid
     * "ROWS": Horizontal grid
     * "GRID": Square grid
     */
    enum class Pattern { COLUMNS, GRID, ROWS };

    /**
     * Guides to align and place objects within a frame
     *
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    struct LayoutGridElement {
        /**
         * Positioning of grid as a string enum
         * "MIN": Grid starts at the left or top of the frame
         * "MAX": Grid starts at the right or bottom of the frame
         * "CENTER": Grid is center aligned
         */
        std::unique_ptr<Alignment> alignment;
        /**
         * Color of the grid
         */
        std::unique_ptr<struct Olor> color;
        /**
         * Number of columns or rows
         */
        std::unique_ptr<double> count;
        /**
         * Spacing in between columns and rows
         */
        std::unique_ptr<double> gutter_size;
        /**
         * Spacing before the first column or row
         */
        std::unique_ptr<double> offset;
        /**
         * Orientation of the grid as a string enum
         * "COLUMNS": Vertical grid
         * "ROWS": Horizontal grid
         * "GRID": Square grid
         */
        std::unique_ptr<Pattern> pattern;
        /**
         * Width of column grid or height of row grid or square grid spacing
         */
        std::unique_ptr<double> section_size;
        /**
         * Is the grid currently visible?
         */
        std::unique_ptr<bool> visible;
    };

    /**
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     *
     * An array of top level layers on the canvas
     *
     * An array of canvases attached to the document
     *
     * Node Properties
     * The root node
     *
     * The root node within the document
     *
     * Represents a single page
     *
     * A node of fixed size containing other nodes
     *
     * A logical grouping of nodes
     *
     * A vector network, consisting of vertices and edges
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * An ellipse
     *
     * A regular n-sided polygon
     *
     * A rectangle
     *
     * Bounding box of the node in absolute space coordinates
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * A mapping from node IDs to component metadata. This is to help you determine which
     * components each instance comes from. Currently the only piece of metadata available on
     * components is the name of the component, but more properties will be forthcoming.
     *
     * An instance of a component, changes to the component result in the same
     * changes applied to the instance
     */
    struct DocumentElement {
        /**
         * An array of canvases attached to the document
         *
         * An array of top level layers on the canvas
         *
         * An array of nodes that are direct children of this node
         *
         * An array of nodes that are being boolean operated on
         */
        std::unique_ptr<std::vector<struct DocumentElement>> children;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * Background color of the canvas
         *
         * Background color of the node
         */
        std::unique_ptr<struct Olor> background_color;
        /**
         * An array of export settings representing images to export from the canvas
         *
         * An array of export settings representing images to export from node
         *
         * An array of export settings representing images to export from this node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section
         * for more details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * Does this node clip content outside of its bounds?
         */
        std::unique_ptr<bool> clips_content;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         * "INSIDE": draw stroke inside the shape boundary
         * "OUTSIDE": draw stroke outside the shape boundary
         * "CENTER": draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> strokes;
        /**
         * Radius of each corner of the rectangle
         */
        std::unique_ptr<double> corner_radius;
        /**
         * Text contained within text box
         */
        std::unique_ptr<std::string> characters;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::vector<struct Tyle>> style_override_table;
        /**
         * Style of text including font family and weight (see type style
         * section for more information)
         */
        std::unique_ptr<struct Tyle> style;
        /**
         * Array with same number of elements as characeters in text box,
         * each element is a reference to the styleOverrideTable defined
         * below and maps to the corresponding character in the characters
         * field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
        /**
         * ID of component that this instance came from, refers to components
         * table (see endpoints section below)
         */
        std::unique_ptr<std::string> component_id;
    };

    /**
     * A node of fixed size containing other nodes
     */
    struct Frame {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section
         * for more details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Background color of the node
         */
        std::unique_ptr<struct Olor> background_color;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * Does this node clip content outside of its bounds?
         */
        std::unique_ptr<bool> clips_content;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
        /**
         * An array of nodes that are direct children of this node
         */
        std::unique_ptr<std::vector<struct DocumentElement>> children;
    };

    /**
     * A rectangle
     */
    struct Rectangle {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * Radius of each corner of the rectangle
         */
        std::unique_ptr<double> corner_radius;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         * "INSIDE": draw stroke inside the shape boundary
         * "OUTSIDE": draw stroke outside the shape boundary
         * "CENTER": draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> strokes;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
    };

    /**
     * Guides to align and place objects within a frame
     */
    struct LayoutGrid {
        /**
         * Positioning of grid as a string enum
         * "MIN": Grid starts at the left or top of the frame
         * "MAX": Grid starts at the right or bottom of the frame
         * "CENTER": Grid is center aligned
         */
        std::unique_ptr<Alignment> alignment;
        /**
         * Color of the grid
         */
        std::unique_ptr<struct Olor> color;
        /**
         * Number of columns or rows
         */
        std::unique_ptr<double> count;
        /**
         * Spacing in between columns and rows
         */
        std::unique_ptr<double> gutter_size;
        /**
         * Spacing before the first column or row
         */
        std::unique_ptr<double> offset;
        /**
         * Orientation of the grid as a string enum
         * "COLUMNS": Vertical grid
         * "ROWS": Horizontal grid
         * "GRID": Square grid
         */
        std::unique_ptr<Pattern> pattern;
        /**
         * Width of column grid or height of row grid or square grid spacing
         */
        std::unique_ptr<double> section_size;
        /**
         * Is the grid currently visible?
         */
        std::unique_ptr<bool> visible;
    };

    /**
     * A visual effect such as a shadow or blur
     */
    struct Effect {
        std::unique_ptr<BlendMode> blend_mode;
        std::unique_ptr<struct Olor> color;
        std::unique_ptr<struct Offset> offset;
        /**
         * Radius of the blur effect (applies to shadows as well)
         */
        std::unique_ptr<double> radius;
        /**
         * Type of effect as a string enum
         */
        std::unique_ptr<EffectType> type;
        /**
         * Is the effect active?
         */
        std::unique_ptr<bool> visible;
    };

    /**
     * A rectangular region of the canvas that can be exported
     */
    struct Slice {
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * An array of export settings representing images to export from this node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
    };

    /**
     * A regular star shape
     */
    struct Star {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         * "INSIDE": draw stroke inside the shape boundary
         * "OUTSIDE": draw stroke outside the shape boundary
         * "CENTER": draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> strokes;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
    };

    /**
     * A straight line
     */
    struct Line {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         * "INSIDE": draw stroke inside the shape boundary
         * "OUTSIDE": draw stroke outside the shape boundary
         * "CENTER": draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> strokes;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
    };

    /**
     * An instance of a component, changes to the component result in the same
     * changes applied to the instance
     */
    struct Instance {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section
         * for more details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Background color of the node
         */
        std::unique_ptr<struct Olor> background_color;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * Does this node clip content outside of its bounds?
         */
        std::unique_ptr<bool> clips_content;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * ID of component that this instance came from, refers to components
         * table (see endpoints section below)
         */
        std::unique_ptr<std::string> component_id;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
        /**
         * An array of nodes that are direct children of this node
         */
        std::unique_ptr<std::vector<struct DocumentElement>> children;
    };

    /**
     * A 2d vector
     */
    struct Vector2D {
        /**
         * X coordinate of the vector
         */
        std::unique_ptr<double> x;
        /**
         * Y coordinate of the vector
         */
        std::unique_ptr<double> y;
    };

    /**
     * Metadata for character formatting
     */
    struct TypeStyle {
        /**
         * Line height in px
         */
        std::unique_ptr<double> line_height_px;
        /**
         * PostScript font name
         */
        std::unique_ptr<std::string> font_post_script_name;
        /**
         * Numeric font weight
         */
        std::unique_ptr<double> font_weight;
        /**
         * Line height as a percentage of normal line height
         */
        std::unique_ptr<double> line_height_percent;
        /**
         * Vertical text alignment as string enum
         */
        std::unique_ptr<TextAlignVertical> text_align_vertical;
        /**
         * Font size in px
         */
        std::unique_ptr<double> font_size;
        /**
         * Is text italicized?
         */
        std::unique_ptr<bool> italic;
        /**
         * Paints applied to characters
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * Font family of text (standard name)
         */
        std::unique_ptr<std::string> font_family;
        /**
         * Horizontal text alignment as string enum
         */
        std::unique_ptr<TextAlignHorizontal> text_align_horizontal;
        /**
         * Space between characters in px
         */
        std::unique_ptr<double> letter_spacing;
    };

    /**
     * A group that has a boolean operation applied to it
     */
    struct BooleanGroup {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         * "INSIDE": draw stroke inside the shape boundary
         * "OUTSIDE": draw stroke outside the shape boundary
         * "CENTER": draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> strokes;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
        /**
         * An array of nodes that are being boolean operated on
         */
        std::unique_ptr<std::vector<struct DocumentElement>> children;
    };

    /**
     * Represents a single page
     */
    struct Canvas {
        /**
         * Background color of the canvas
         */
        std::unique_ptr<struct Olor> background_color;
        /**
         * An array of top level layers on the canvas
         */
        std::unique_ptr<std::vector<struct DocumentElement>> children;
        /**
         * An array of export settings representing images to export from the canvas
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
    };

    /**
     * Node Properties
     * The root node
     */
    struct Document {
        /**
         * An array of canvases attached to the document
         */
        std::unique_ptr<std::vector<struct DocumentElement>> children;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
    };

    /**
     * Format and size to export an asset at
     */
    struct ExportSetting {
        /**
         * Constraint that determines sizing of exported asset
         */
        std::unique_ptr<struct ExportSettingConstraint> constraint;
        /**
         * Image type, string enum
         */
        std::unique_ptr<Format> format;
        /**
         * File suffix to append to all filenames
         */
        std::unique_ptr<Suffix> suffix;
    };

    /**
     * A node that can have instances created of it that share the same properties
     */
    struct Component {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section
         * for more details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Background color of the node
         */
        std::unique_ptr<struct Olor> background_color;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * Does this node clip content outside of its bounds?
         */
        std::unique_ptr<bool> clips_content;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
        /**
         * An array of nodes that are direct children of this node
         */
        std::unique_ptr<std::vector<struct DocumentElement>> children;
    };

    /**
     * A node that can have instances created of it that share the same properties
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     *
     * An array of top level layers on the canvas
     *
     * An array of canvases attached to the document
     *
     * A mapping from node IDs to component metadata. This is to help you determine which
     * components each instance comes from. Currently the only piece of metadata available on
     * components is the name of the component, but more properties will be forthcoming.
     */
    struct ComponentValue {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section
         * for more details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Background color of the node
         */
        std::unique_ptr<struct Olor> background_color;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * Does this node clip content outside of its bounds?
         */
        std::unique_ptr<bool> clips_content;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
        /**
         * An array of nodes that are direct children of this node
         */
        std::unique_ptr<std::vector<struct DocumentElement>> children;
    };

    /**
     * Node Properties
     * The root node
     *
     * An array of nodes that are direct children of this node
     *
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are being boolean operated on
     *
     * The root node within the document
     */
    struct Ocument {
        /**
         * An array of canvases attached to the document
         */
        std::unique_ptr<std::vector<struct DocumentElement>> children;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
    };

    /**
     * GET /v1/files/:key
     *
     * > Description
     *
     * Returns the document refered to by :key as a JSON object. The file key can be parsed from
     * any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
     * contains a Node of type DOCUMENT.
     *
     * The "components" key contains a mapping from node IDs to component metadata. This is to
     * help you determine which components each instance comes from. Currently the only piece of
     * metadata available on components is the name of the component, but more properties will
     * be forthcoming.
     *
     * > Path parameters
     *
     * key String
     * File to export JSON from
     */
    struct FileResponse {
        /**
         * A mapping from node IDs to component metadata. This is to help you determine which
         * components each instance comes from. Currently the only piece of metadata available on
         * components is the name of the component, but more properties will be forthcoming.
         */
        std::unique_ptr<std::map<std::string, struct ComponentValue>> components;
        /**
         * The root node within the document
         */
        std::unique_ptr<struct Ocument> document;
        std::unique_ptr<double> schema_version;
    };

    /**
     * Sizing constraint for exports
     */
    struct Constraint {
        /**
         * Type of constraint to apply; string enum with potential values below
         * "SCALE": Scale by value
         * "WIDTH": Scale proportionally and set width to value
         * "HEIGHT": Scale proportionally and set height to value
         */
        std::unique_ptr<ConstraintType> type;
        /**
         * See type property for effect of this field
         */
        std::unique_ptr<double> value;
    };

    /**
     * A solid color, gradient, or image texture that can be applied as fills or strokes
     */
    struct Paint {
        /**
         * Solid color of the paint
         */
        std::unique_ptr<struct Olor> color;
        /**
         * This field contains three vectors, each of which are a position in
         * normalized object space (normalized object space is if the top left
         * corner of the bounding box of the object is (0, 0) and the bottom
         * right is (1,1)). The first position corresponds to the start of the
         * gradient (value 0 for the purposes of calculating gradient stops),
         * the second position is the end of the gradient (value 1), and the
         * third handle position determines the width of the gradient (only
         * relevant for non-linear gradients).
         */
        std::unique_ptr<std::vector<struct Offset>> gradient_handle_positions;
        /**
         * Positions of key points along the gradient axis with the colors
         * anchored there. Colors along the gradient are interpolated smoothly
         * between neighboring gradient stops.
         */
        std::unique_ptr<std::vector<struct ColorStopElement>> gradient_stops;
        /**
         * Overall opacity of paint (colors within the paint can also have opacity
         * values which would blend with this)
         */
        std::unique_ptr<double> opacity;
        /**
         * Image scaling mode
         */
        std::unique_ptr<std::string> scale_mode;
        /**
         * Type of paint as a string enum
         */
        std::unique_ptr<PaintType> type;
        /**
         * Is the paint enabled?
         */
        std::unique_ptr<bool> visible;
    };

    /**
     * A regular n-sided polygon
     */
    struct RegularPolygon {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         * "INSIDE": draw stroke inside the shape boundary
         * "OUTSIDE": draw stroke outside the shape boundary
         * "CENTER": draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> strokes;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
    };

    /**
     * An ellipse
     */
    struct Ellipse {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         * "INSIDE": draw stroke inside the shape boundary
         * "OUTSIDE": draw stroke outside the shape boundary
         * "CENTER": draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct PaintElement>> strokes;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
    };

    /**
     * A logical grouping of nodes
     */
    struct Group {
        /**
         * An array of effects attached to this node
         * (see effects sectionfor more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section
         * for more details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * the name given to the node by the user in the tool.
         */
        std::unique_ptr<std::string> name;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct AbsoluteBoundingBox> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * How this node blends with nodes behind it in the scene
         * (see blend mode section for more details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * Background color of the node
         */
        std::unique_ptr<struct Olor> background_color;
        /**
         * Horizontal and vertical layout constraints for node
         */
        std::unique_ptr<struct Constraints> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * Does this node clip content outside of its bounds?
         */
        std::unique_ptr<bool> clips_content;
        /**
         * An array of export settings representing images to export from node
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * the type of the node, refer to table below for details
         */
        std::unique_ptr<NodeType> type;
        /**
         * a string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * Keep height and width constrained to same ratio
         */
        std::unique_ptr<bool> preserve_ratio;
        /**
         * An array of nodes that are direct children of this node
         */
        std::unique_ptr<std::vector<struct DocumentElement>> children;
    };
    
    inline json get_untyped(const json &j, const char *property) {
        if (j.find(property) != j.end()) {
            return j.at(property).get<json>();
        }
        return json();
    }
    
    template <typename T>
    inline std::unique_ptr<T> get_optional(const json &j, const char *property) {
        if (j.find(property) != j.end())
            return j.at(property).get<std::unique_ptr<T>>();
        return std::unique_ptr<T>();
    }
}

namespace nlohmann {
    template <typename T>
    struct adl_serializer<std::unique_ptr<T>> {
        static void to_json(json& j, const std::unique_ptr<T>& opt) {
            if (!opt)
                j = nullptr;
            else
                j = *opt;
        }

        static std::unique_ptr<T> from_json(const json& j) {
            if (j.is_null())
                return std::unique_ptr<T>();
            else
                return std::unique_ptr<T>(new T(j.get<T>()));
        }
    };

    inline void from_json(const json& _j, struct quicktype::Constraints& _x) {
        _x.horizontal = quicktype::get_optional<quicktype::Horizontal>(_j, "horizontal");
        _x.vertical = quicktype::get_optional<quicktype::Vertical>(_j, "vertical");
    }

    inline void to_json(json& _j, const struct quicktype::Constraints& _x) {
        _j = json::object();
        _j["horizontal"] = _x.horizontal;
        _j["vertical"] = _x.vertical;
    }

    inline void from_json(const json& _j, struct quicktype::Olor& _x) {
        _x.a = quicktype::get_optional<double>(_j, "a");
        _x.b = quicktype::get_optional<double>(_j, "b");
        _x.g = quicktype::get_optional<double>(_j, "g");
        _x.r = quicktype::get_optional<double>(_j, "r");
    }

    inline void to_json(json& _j, const struct quicktype::Olor& _x) {
        _j = json::object();
        _j["a"] = _x.a;
        _j["b"] = _x.b;
        _j["g"] = _x.g;
        _j["r"] = _x.r;
    }

    inline void from_json(const json& _j, struct quicktype::Offset& _x) {
        _x.x = quicktype::get_optional<double>(_j, "x");
        _x.y = quicktype::get_optional<double>(_j, "y");
    }

    inline void to_json(json& _j, const struct quicktype::Offset& _x) {
        _j = json::object();
        _j["x"] = _x.x;
        _j["y"] = _x.y;
    }

    inline void from_json(const json& _j, struct quicktype::EffectElement& _x) {
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.color = quicktype::get_optional<struct quicktype::Olor>(_j, "color");
        _x.offset = quicktype::get_optional<struct quicktype::Offset>(_j, "offset");
        _x.radius = quicktype::get_optional<double>(_j, "radius");
        _x.type = quicktype::get_optional<quicktype::EffectType>(_j, "type");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
    }

    inline void to_json(json& _j, const struct quicktype::EffectElement& _x) {
        _j = json::object();
        _j["blendMode"] = _x.blend_mode;
        _j["color"] = _x.color;
        _j["offset"] = _x.offset;
        _j["radius"] = _x.radius;
        _j["type"] = _x.type;
        _j["visible"] = _x.visible;
    }

    inline void from_json(const json& _j, struct quicktype::ExportSettingConstraint& _x) {
        _x.type = quicktype::get_optional<quicktype::ConstraintType>(_j, "type");
        _x.value = quicktype::get_optional<double>(_j, "value");
    }

    inline void to_json(json& _j, const struct quicktype::ExportSettingConstraint& _x) {
        _j = json::object();
        _j["type"] = _x.type;
        _j["value"] = _x.value;
    }

    inline void from_json(const json& _j, struct quicktype::ExportSettingElement& _x) {
        _x.constraint = quicktype::get_optional<struct quicktype::ExportSettingConstraint>(_j, "constraint");
        _x.format = quicktype::get_optional<quicktype::Format>(_j, "format");
        _x.suffix = quicktype::get_optional<quicktype::Suffix>(_j, "suffix");
    }

    inline void to_json(json& _j, const struct quicktype::ExportSettingElement& _x) {
        _j = json::object();
        _j["constraint"] = _x.constraint;
        _j["format"] = _x.format;
        _j["suffix"] = _x.suffix;
    }

    inline void from_json(const json& _j, struct quicktype::ColorStopElement& _x) {
        _x.color = quicktype::get_optional<struct quicktype::Olor>(_j, "color");
        _x.position = quicktype::get_optional<double>(_j, "position");
    }

    inline void to_json(json& _j, const struct quicktype::ColorStopElement& _x) {
        _j = json::object();
        _j["color"] = _x.color;
        _j["position"] = _x.position;
    }

    inline void from_json(const json& _j, struct quicktype::PaintElement& _x) {
        _x.color = quicktype::get_optional<struct quicktype::Olor>(_j, "color");
        _x.gradient_handle_positions = quicktype::get_optional<std::vector<struct quicktype::Offset>>(_j, "gradientHandlePositions");
        _x.gradient_stops = quicktype::get_optional<std::vector<struct quicktype::ColorStopElement>>(_j, "gradientStops");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.scale_mode = quicktype::get_optional<std::string>(_j, "scaleMode");
        _x.type = quicktype::get_optional<quicktype::PaintType>(_j, "type");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
    }

    inline void to_json(json& _j, const struct quicktype::PaintElement& _x) {
        _j = json::object();
        _j["color"] = _x.color;
        _j["gradientHandlePositions"] = _x.gradient_handle_positions;
        _j["gradientStops"] = _x.gradient_stops;
        _j["opacity"] = _x.opacity;
        _j["scaleMode"] = _x.scale_mode;
        _j["type"] = _x.type;
        _j["visible"] = _x.visible;
    }

    inline void from_json(const json& _j, struct quicktype::AbsoluteBoundingBox& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.corner_radius = quicktype::get_optional<double>(_j, "cornerRadius");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
    }

    inline void to_json(json& _j, const struct quicktype::AbsoluteBoundingBox& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["cornerRadius"] = _x.corner_radius;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
    }

    inline void from_json(const json& _j, struct quicktype::Vector& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
    }

    inline void to_json(json& _j, const struct quicktype::Vector& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
    }

    inline void from_json(const json& _j, struct quicktype::Color& _x) {
        _x.a = quicktype::get_optional<double>(_j, "a");
        _x.b = quicktype::get_optional<double>(_j, "b");
        _x.g = quicktype::get_optional<double>(_j, "g");
        _x.r = quicktype::get_optional<double>(_j, "r");
    }

    inline void to_json(json& _j, const struct quicktype::Color& _x) {
        _j = json::object();
        _j["a"] = _x.a;
        _j["b"] = _x.b;
        _j["g"] = _x.g;
        _j["r"] = _x.r;
    }

    inline void from_json(const json& _j, struct quicktype::ColorStop& _x) {
        _x.color = quicktype::get_optional<struct quicktype::Olor>(_j, "color");
        _x.position = quicktype::get_optional<double>(_j, "position");
    }

    inline void to_json(json& _j, const struct quicktype::ColorStop& _x) {
        _j = json::object();
        _j["color"] = _x.color;
        _j["position"] = _x.position;
    }

    inline void from_json(const json& _j, struct quicktype::LayoutConstraint& _x) {
        _x.horizontal = quicktype::get_optional<quicktype::Horizontal>(_j, "horizontal");
        _x.vertical = quicktype::get_optional<quicktype::Vertical>(_j, "vertical");
    }

    inline void to_json(json& _j, const struct quicktype::LayoutConstraint& _x) {
        _j = json::object();
        _j["horizontal"] = _x.horizontal;
        _j["vertical"] = _x.vertical;
    }

    inline void from_json(const json& _j, struct quicktype::Tyle& _x) {
        _x.line_height_px = quicktype::get_optional<double>(_j, "lineHeightPx");
        _x.font_post_script_name = quicktype::get_optional<std::string>(_j, "fontPostScriptName");
        _x.font_weight = quicktype::get_optional<double>(_j, "fontWeight");
        _x.line_height_percent = quicktype::get_optional<double>(_j, "lineHeightPercent");
        _x.text_align_vertical = quicktype::get_optional<quicktype::TextAlignVertical>(_j, "textAlignVertical");
        _x.font_size = quicktype::get_optional<double>(_j, "fontSize");
        _x.italic = quicktype::get_optional<bool>(_j, "italic");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.font_family = quicktype::get_optional<std::string>(_j, "fontFamily");
        _x.text_align_horizontal = quicktype::get_optional<quicktype::TextAlignHorizontal>(_j, "textAlignHorizontal");
        _x.letter_spacing = quicktype::get_optional<double>(_j, "letterSpacing");
    }

    inline void to_json(json& _j, const struct quicktype::Tyle& _x) {
        _j = json::object();
        _j["lineHeightPx"] = _x.line_height_px;
        _j["fontPostScriptName"] = _x.font_post_script_name;
        _j["fontWeight"] = _x.font_weight;
        _j["lineHeightPercent"] = _x.line_height_percent;
        _j["textAlignVertical"] = _x.text_align_vertical;
        _j["fontSize"] = _x.font_size;
        _j["italic"] = _x.italic;
        _j["fills"] = _x.fills;
        _j["fontFamily"] = _x.font_family;
        _j["textAlignHorizontal"] = _x.text_align_horizontal;
        _j["letterSpacing"] = _x.letter_spacing;
    }

    inline void from_json(const json& _j, struct quicktype::Text& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.style_override_table = quicktype::get_optional<std::vector<struct quicktype::Tyle>>(_j, "styleOverrideTable");
        _x.style = quicktype::get_optional<struct quicktype::Tyle>(_j, "style");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
    }

    inline void to_json(json& _j, const struct quicktype::Text& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["characters"] = _x.characters;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["style"] = _x.style;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
    }

    inline void from_json(const json& _j, struct quicktype::LayoutGridElement& _x) {
        _x.alignment = quicktype::get_optional<quicktype::Alignment>(_j, "alignment");
        _x.color = quicktype::get_optional<struct quicktype::Olor>(_j, "color");
        _x.count = quicktype::get_optional<double>(_j, "count");
        _x.gutter_size = quicktype::get_optional<double>(_j, "gutterSize");
        _x.offset = quicktype::get_optional<double>(_j, "offset");
        _x.pattern = quicktype::get_optional<quicktype::Pattern>(_j, "pattern");
        _x.section_size = quicktype::get_optional<double>(_j, "sectionSize");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
    }

    inline void to_json(json& _j, const struct quicktype::LayoutGridElement& _x) {
        _j = json::object();
        _j["alignment"] = _x.alignment;
        _j["color"] = _x.color;
        _j["count"] = _x.count;
        _j["gutterSize"] = _x.gutter_size;
        _j["offset"] = _x.offset;
        _j["pattern"] = _x.pattern;
        _j["sectionSize"] = _x.section_size;
        _j["visible"] = _x.visible;
    }

    inline void from_json(const json& _j, struct quicktype::DocumentElement& _x) {
        _x.children = quicktype::get_optional<std::vector<struct quicktype::DocumentElement>>(_j, "children");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.background_color = quicktype::get_optional<struct quicktype::Olor>(_j, "backgroundColor");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.corner_radius = quicktype::get_optional<double>(_j, "cornerRadius");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.style_override_table = quicktype::get_optional<std::vector<struct quicktype::Tyle>>(_j, "styleOverrideTable");
        _x.style = quicktype::get_optional<struct quicktype::Tyle>(_j, "style");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
        _x.component_id = quicktype::get_optional<std::string>(_j, "componentId");
    }

    inline void to_json(json& _j, const struct quicktype::DocumentElement& _x) {
        _j = json::object();
        _j["children"] = _x.children;
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["type"] = _x.type;
        _j["visible"] = _x.visible;
        _j["backgroundColor"] = _x.background_color;
        _j["exportSettings"] = _x.export_settings;
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["strokes"] = _x.strokes;
        _j["cornerRadius"] = _x.corner_radius;
        _j["characters"] = _x.characters;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::Frame& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.background_color = quicktype::get_optional<struct quicktype::Olor>(_j, "backgroundColor");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::DocumentElement>>(_j, "children");
    }

    inline void to_json(json& _j, const struct quicktype::Frame& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["backgroundColor"] = _x.background_color;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, struct quicktype::Rectangle& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.corner_radius = quicktype::get_optional<double>(_j, "cornerRadius");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
    }

    inline void to_json(json& _j, const struct quicktype::Rectangle& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["cornerRadius"] = _x.corner_radius;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
    }

    inline void from_json(const json& _j, struct quicktype::LayoutGrid& _x) {
        _x.alignment = quicktype::get_optional<quicktype::Alignment>(_j, "alignment");
        _x.color = quicktype::get_optional<struct quicktype::Olor>(_j, "color");
        _x.count = quicktype::get_optional<double>(_j, "count");
        _x.gutter_size = quicktype::get_optional<double>(_j, "gutterSize");
        _x.offset = quicktype::get_optional<double>(_j, "offset");
        _x.pattern = quicktype::get_optional<quicktype::Pattern>(_j, "pattern");
        _x.section_size = quicktype::get_optional<double>(_j, "sectionSize");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
    }

    inline void to_json(json& _j, const struct quicktype::LayoutGrid& _x) {
        _j = json::object();
        _j["alignment"] = _x.alignment;
        _j["color"] = _x.color;
        _j["count"] = _x.count;
        _j["gutterSize"] = _x.gutter_size;
        _j["offset"] = _x.offset;
        _j["pattern"] = _x.pattern;
        _j["sectionSize"] = _x.section_size;
        _j["visible"] = _x.visible;
    }

    inline void from_json(const json& _j, struct quicktype::Effect& _x) {
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.color = quicktype::get_optional<struct quicktype::Olor>(_j, "color");
        _x.offset = quicktype::get_optional<struct quicktype::Offset>(_j, "offset");
        _x.radius = quicktype::get_optional<double>(_j, "radius");
        _x.type = quicktype::get_optional<quicktype::EffectType>(_j, "type");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
    }

    inline void to_json(json& _j, const struct quicktype::Effect& _x) {
        _j = json::object();
        _j["blendMode"] = _x.blend_mode;
        _j["color"] = _x.color;
        _j["offset"] = _x.offset;
        _j["radius"] = _x.radius;
        _j["type"] = _x.type;
        _j["visible"] = _x.visible;
    }

    inline void from_json(const json& _j, struct quicktype::Slice& _x) {
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
    }

    inline void to_json(json& _j, const struct quicktype::Slice& _x) {
        _j = json::object();
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["exportSettings"] = _x.export_settings;
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["type"] = _x.type;
        _j["visible"] = _x.visible;
    }

    inline void from_json(const json& _j, struct quicktype::Star& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
    }

    inline void to_json(json& _j, const struct quicktype::Star& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
    }

    inline void from_json(const json& _j, struct quicktype::Line& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
    }

    inline void to_json(json& _j, const struct quicktype::Line& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
    }

    inline void from_json(const json& _j, struct quicktype::Instance& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.background_color = quicktype::get_optional<struct quicktype::Olor>(_j, "backgroundColor");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.component_id = quicktype::get_optional<std::string>(_j, "componentId");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::DocumentElement>>(_j, "children");
    }

    inline void to_json(json& _j, const struct quicktype::Instance& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["backgroundColor"] = _x.background_color;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["exportSettings"] = _x.export_settings;
        _j["componentId"] = _x.component_id;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, struct quicktype::Vector2D& _x) {
        _x.x = quicktype::get_optional<double>(_j, "x");
        _x.y = quicktype::get_optional<double>(_j, "y");
    }

    inline void to_json(json& _j, const struct quicktype::Vector2D& _x) {
        _j = json::object();
        _j["x"] = _x.x;
        _j["y"] = _x.y;
    }

    inline void from_json(const json& _j, struct quicktype::TypeStyle& _x) {
        _x.line_height_px = quicktype::get_optional<double>(_j, "lineHeightPx");
        _x.font_post_script_name = quicktype::get_optional<std::string>(_j, "fontPostScriptName");
        _x.font_weight = quicktype::get_optional<double>(_j, "fontWeight");
        _x.line_height_percent = quicktype::get_optional<double>(_j, "lineHeightPercent");
        _x.text_align_vertical = quicktype::get_optional<quicktype::TextAlignVertical>(_j, "textAlignVertical");
        _x.font_size = quicktype::get_optional<double>(_j, "fontSize");
        _x.italic = quicktype::get_optional<bool>(_j, "italic");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.font_family = quicktype::get_optional<std::string>(_j, "fontFamily");
        _x.text_align_horizontal = quicktype::get_optional<quicktype::TextAlignHorizontal>(_j, "textAlignHorizontal");
        _x.letter_spacing = quicktype::get_optional<double>(_j, "letterSpacing");
    }

    inline void to_json(json& _j, const struct quicktype::TypeStyle& _x) {
        _j = json::object();
        _j["lineHeightPx"] = _x.line_height_px;
        _j["fontPostScriptName"] = _x.font_post_script_name;
        _j["fontWeight"] = _x.font_weight;
        _j["lineHeightPercent"] = _x.line_height_percent;
        _j["textAlignVertical"] = _x.text_align_vertical;
        _j["fontSize"] = _x.font_size;
        _j["italic"] = _x.italic;
        _j["fills"] = _x.fills;
        _j["fontFamily"] = _x.font_family;
        _j["textAlignHorizontal"] = _x.text_align_horizontal;
        _j["letterSpacing"] = _x.letter_spacing;
    }

    inline void from_json(const json& _j, struct quicktype::BooleanGroup& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::DocumentElement>>(_j, "children");
    }

    inline void to_json(json& _j, const struct quicktype::BooleanGroup& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, struct quicktype::Canvas& _x) {
        _x.background_color = quicktype::get_optional<struct quicktype::Olor>(_j, "backgroundColor");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::DocumentElement>>(_j, "children");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
    }

    inline void to_json(json& _j, const struct quicktype::Canvas& _x) {
        _j = json::object();
        _j["backgroundColor"] = _x.background_color;
        _j["children"] = _x.children;
        _j["exportSettings"] = _x.export_settings;
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["type"] = _x.type;
        _j["visible"] = _x.visible;
    }

    inline void from_json(const json& _j, struct quicktype::Document& _x) {
        _x.children = quicktype::get_optional<std::vector<struct quicktype::DocumentElement>>(_j, "children");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
    }

    inline void to_json(json& _j, const struct quicktype::Document& _x) {
        _j = json::object();
        _j["children"] = _x.children;
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["type"] = _x.type;
        _j["visible"] = _x.visible;
    }

    inline void from_json(const json& _j, struct quicktype::ExportSetting& _x) {
        _x.constraint = quicktype::get_optional<struct quicktype::ExportSettingConstraint>(_j, "constraint");
        _x.format = quicktype::get_optional<quicktype::Format>(_j, "format");
        _x.suffix = quicktype::get_optional<quicktype::Suffix>(_j, "suffix");
    }

    inline void to_json(json& _j, const struct quicktype::ExportSetting& _x) {
        _j = json::object();
        _j["constraint"] = _x.constraint;
        _j["format"] = _x.format;
        _j["suffix"] = _x.suffix;
    }

    inline void from_json(const json& _j, struct quicktype::Component& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.background_color = quicktype::get_optional<struct quicktype::Olor>(_j, "backgroundColor");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::DocumentElement>>(_j, "children");
    }

    inline void to_json(json& _j, const struct quicktype::Component& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["backgroundColor"] = _x.background_color;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, struct quicktype::ComponentValue& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.background_color = quicktype::get_optional<struct quicktype::Olor>(_j, "backgroundColor");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::DocumentElement>>(_j, "children");
    }

    inline void to_json(json& _j, const struct quicktype::ComponentValue& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["backgroundColor"] = _x.background_color;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, struct quicktype::Ocument& _x) {
        _x.children = quicktype::get_optional<std::vector<struct quicktype::DocumentElement>>(_j, "children");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
    }

    inline void to_json(json& _j, const struct quicktype::Ocument& _x) {
        _j = json::object();
        _j["children"] = _x.children;
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["type"] = _x.type;
        _j["visible"] = _x.visible;
    }

    inline void from_json(const json& _j, struct quicktype::FileResponse& _x) {
        _x.components = quicktype::get_optional<std::map<std::string, struct quicktype::ComponentValue>>(_j, "components");
        _x.document = quicktype::get_optional<struct quicktype::Ocument>(_j, "document");
        _x.schema_version = quicktype::get_optional<double>(_j, "schemaVersion");
    }

    inline void to_json(json& _j, const struct quicktype::FileResponse& _x) {
        _j = json::object();
        _j["components"] = _x.components;
        _j["document"] = _x.document;
        _j["schemaVersion"] = _x.schema_version;
    }

    inline void from_json(const json& _j, struct quicktype::Constraint& _x) {
        _x.type = quicktype::get_optional<quicktype::ConstraintType>(_j, "type");
        _x.value = quicktype::get_optional<double>(_j, "value");
    }

    inline void to_json(json& _j, const struct quicktype::Constraint& _x) {
        _j = json::object();
        _j["type"] = _x.type;
        _j["value"] = _x.value;
    }

    inline void from_json(const json& _j, struct quicktype::Paint& _x) {
        _x.color = quicktype::get_optional<struct quicktype::Olor>(_j, "color");
        _x.gradient_handle_positions = quicktype::get_optional<std::vector<struct quicktype::Offset>>(_j, "gradientHandlePositions");
        _x.gradient_stops = quicktype::get_optional<std::vector<struct quicktype::ColorStopElement>>(_j, "gradientStops");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.scale_mode = quicktype::get_optional<std::string>(_j, "scaleMode");
        _x.type = quicktype::get_optional<quicktype::PaintType>(_j, "type");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
    }

    inline void to_json(json& _j, const struct quicktype::Paint& _x) {
        _j = json::object();
        _j["color"] = _x.color;
        _j["gradientHandlePositions"] = _x.gradient_handle_positions;
        _j["gradientStops"] = _x.gradient_stops;
        _j["opacity"] = _x.opacity;
        _j["scaleMode"] = _x.scale_mode;
        _j["type"] = _x.type;
        _j["visible"] = _x.visible;
    }

    inline void from_json(const json& _j, struct quicktype::RegularPolygon& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
    }

    inline void to_json(json& _j, const struct quicktype::RegularPolygon& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
    }

    inline void from_json(const json& _j, struct quicktype::Ellipse& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
    }

    inline void to_json(json& _j, const struct quicktype::Ellipse& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
    }

    inline void from_json(const json& _j, struct quicktype::Group& _x) {
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::AbsoluteBoundingBox>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.background_color = quicktype::get_optional<struct quicktype::Olor>(_j, "backgroundColor");
        _x.constraints = quicktype::get_optional<struct quicktype::Constraints>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::DocumentElement>>(_j, "children");
    }

    inline void to_json(json& _j, const struct quicktype::Group& _x) {
        _j = json::object();
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["name"] = _x.name;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["visible"] = _x.visible;
        _j["blendMode"] = _x.blend_mode;
        _j["backgroundColor"] = _x.background_color;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["exportSettings"] = _x.export_settings;
        _j["type"] = _x.type;
        _j["id"] = _x.id;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, quicktype::BlendMode& _x) {
        if (_j == "COLOR") _x = quicktype::BlendMode::COLOR;
        else if (_j == "COLOR_BURN") _x = quicktype::BlendMode::COLOR_BURN;
        else if (_j == "COLOR_DODGE") _x = quicktype::BlendMode::COLOR_DODGE;
        else if (_j == "DARKEN") _x = quicktype::BlendMode::DARKEN;
        else if (_j == "DIFFERENCE") _x = quicktype::BlendMode::DIFFERENCE;
        else if (_j == "EXCLUSION") _x = quicktype::BlendMode::EXCLUSION;
        else if (_j == "HARD_LIGHT") _x = quicktype::BlendMode::HARD_LIGHT;
        else if (_j == "HUE") _x = quicktype::BlendMode::HUE;
        else if (_j == "LIGHTEN") _x = quicktype::BlendMode::LIGHTEN;
        else if (_j == "LINEAR_BURN") _x = quicktype::BlendMode::LINEAR_BURN;
        else if (_j == "LINEAR_DODGE") _x = quicktype::BlendMode::LINEAR_DODGE;
        else if (_j == "LUMINOSITY") _x = quicktype::BlendMode::LUMINOSITY;
        else if (_j == "MULTIPLY") _x = quicktype::BlendMode::MULTIPLY;
        else if (_j == "NORMAL") _x = quicktype::BlendMode::NORMAL;
        else if (_j == "OVERLAY") _x = quicktype::BlendMode::OVERLAY;
        else if (_j == "PASS_THROUGH") _x = quicktype::BlendMode::PASS_THROUGH;
        else if (_j == "SATURATION") _x = quicktype::BlendMode::SATURATION;
        else if (_j == "SCREEN") _x = quicktype::BlendMode::SCREEN;
        else if (_j == "SOFT_LIGHT") _x = quicktype::BlendMode::SOFT_LIGHT;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::BlendMode& _x) {
        switch (_x) {
            case quicktype::BlendMode::COLOR: _j = "COLOR"; break;
            case quicktype::BlendMode::COLOR_BURN: _j = "COLOR_BURN"; break;
            case quicktype::BlendMode::COLOR_DODGE: _j = "COLOR_DODGE"; break;
            case quicktype::BlendMode::DARKEN: _j = "DARKEN"; break;
            case quicktype::BlendMode::DIFFERENCE: _j = "DIFFERENCE"; break;
            case quicktype::BlendMode::EXCLUSION: _j = "EXCLUSION"; break;
            case quicktype::BlendMode::HARD_LIGHT: _j = "HARD_LIGHT"; break;
            case quicktype::BlendMode::HUE: _j = "HUE"; break;
            case quicktype::BlendMode::LIGHTEN: _j = "LIGHTEN"; break;
            case quicktype::BlendMode::LINEAR_BURN: _j = "LINEAR_BURN"; break;
            case quicktype::BlendMode::LINEAR_DODGE: _j = "LINEAR_DODGE"; break;
            case quicktype::BlendMode::LUMINOSITY: _j = "LUMINOSITY"; break;
            case quicktype::BlendMode::MULTIPLY: _j = "MULTIPLY"; break;
            case quicktype::BlendMode::NORMAL: _j = "NORMAL"; break;
            case quicktype::BlendMode::OVERLAY: _j = "OVERLAY"; break;
            case quicktype::BlendMode::PASS_THROUGH: _j = "PASS_THROUGH"; break;
            case quicktype::BlendMode::SATURATION: _j = "SATURATION"; break;
            case quicktype::BlendMode::SCREEN: _j = "SCREEN"; break;
            case quicktype::BlendMode::SOFT_LIGHT: _j = "SOFT_LIGHT"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::Horizontal& _x) {
        if (_j == "CENTER") _x = quicktype::Horizontal::CENTER;
        else if (_j == "LEFT") _x = quicktype::Horizontal::LEFT;
        else if (_j == "LEFT_RIGHT") _x = quicktype::Horizontal::LEFT_RIGHT;
        else if (_j == "RIGHT") _x = quicktype::Horizontal::RIGHT;
        else if (_j == "SCALE") _x = quicktype::Horizontal::SCALE;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::Horizontal& _x) {
        switch (_x) {
            case quicktype::Horizontal::CENTER: _j = "CENTER"; break;
            case quicktype::Horizontal::LEFT: _j = "LEFT"; break;
            case quicktype::Horizontal::LEFT_RIGHT: _j = "LEFT_RIGHT"; break;
            case quicktype::Horizontal::RIGHT: _j = "RIGHT"; break;
            case quicktype::Horizontal::SCALE: _j = "SCALE"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::Vertical& _x) {
        if (_j == "BOTTOM") _x = quicktype::Vertical::BOTTOM;
        else if (_j == "CENTER") _x = quicktype::Vertical::CENTER;
        else if (_j == "SCALE") _x = quicktype::Vertical::SCALE;
        else if (_j == "TOP") _x = quicktype::Vertical::TOP;
        else if (_j == "TOP_BOTTOM") _x = quicktype::Vertical::TOP_BOTTOM;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::Vertical& _x) {
        switch (_x) {
            case quicktype::Vertical::BOTTOM: _j = "BOTTOM"; break;
            case quicktype::Vertical::CENTER: _j = "CENTER"; break;
            case quicktype::Vertical::SCALE: _j = "SCALE"; break;
            case quicktype::Vertical::TOP: _j = "TOP"; break;
            case quicktype::Vertical::TOP_BOTTOM: _j = "TOP_BOTTOM"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::EffectType& _x) {
        if (_j == "BACKGROUND_BLUR") _x = quicktype::EffectType::BACKGROUND_BLUR;
        else if (_j == "DROP_SHADOW") _x = quicktype::EffectType::DROP_SHADOW;
        else if (_j == "INNER_SHADOW") _x = quicktype::EffectType::INNER_SHADOW;
        else if (_j == "LAYER_BLUR") _x = quicktype::EffectType::LAYER_BLUR;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::EffectType& _x) {
        switch (_x) {
            case quicktype::EffectType::BACKGROUND_BLUR: _j = "BACKGROUND_BLUR"; break;
            case quicktype::EffectType::DROP_SHADOW: _j = "DROP_SHADOW"; break;
            case quicktype::EffectType::INNER_SHADOW: _j = "INNER_SHADOW"; break;
            case quicktype::EffectType::LAYER_BLUR: _j = "LAYER_BLUR"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::ConstraintType& _x) {
        if (_j == "HEIGHT") _x = quicktype::ConstraintType::HEIGHT;
        else if (_j == "SCALE") _x = quicktype::ConstraintType::SCALE;
        else if (_j == "WIDTH") _x = quicktype::ConstraintType::WIDTH;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::ConstraintType& _x) {
        switch (_x) {
            case quicktype::ConstraintType::HEIGHT: _j = "HEIGHT"; break;
            case quicktype::ConstraintType::SCALE: _j = "SCALE"; break;
            case quicktype::ConstraintType::WIDTH: _j = "WIDTH"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::Format& _x) {
        if (_j == "JPG") _x = quicktype::Format::JPG;
        else if (_j == "PNG") _x = quicktype::Format::PNG;
        else if (_j == "SVG") _x = quicktype::Format::SVG;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::Format& _x) {
        switch (_x) {
            case quicktype::Format::JPG: _j = "JPG"; break;
            case quicktype::Format::PNG: _j = "PNG"; break;
            case quicktype::Format::SVG: _j = "SVG"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::Suffix& _x) {
        if (_j == "string") _x = quicktype::Suffix::STRING;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::Suffix& _x) {
        switch (_x) {
            case quicktype::Suffix::STRING: _j = "string"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::PaintType& _x) {
        if (_j == "EMOJI") _x = quicktype::PaintType::EMOJI;
        else if (_j == "GRADIENT_ANGULAR") _x = quicktype::PaintType::GRADIENT_ANGULAR;
        else if (_j == "GRADIENT_DIAMOND") _x = quicktype::PaintType::GRADIENT_DIAMOND;
        else if (_j == "GRADIENT_LINEAR") _x = quicktype::PaintType::GRADIENT_LINEAR;
        else if (_j == "GRADIENT_RADIAL") _x = quicktype::PaintType::GRADIENT_RADIAL;
        else if (_j == "IMAGE") _x = quicktype::PaintType::IMAGE;
        else if (_j == "SOLID") _x = quicktype::PaintType::SOLID;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::PaintType& _x) {
        switch (_x) {
            case quicktype::PaintType::EMOJI: _j = "EMOJI"; break;
            case quicktype::PaintType::GRADIENT_ANGULAR: _j = "GRADIENT_ANGULAR"; break;
            case quicktype::PaintType::GRADIENT_DIAMOND: _j = "GRADIENT_DIAMOND"; break;
            case quicktype::PaintType::GRADIENT_LINEAR: _j = "GRADIENT_LINEAR"; break;
            case quicktype::PaintType::GRADIENT_RADIAL: _j = "GRADIENT_RADIAL"; break;
            case quicktype::PaintType::IMAGE: _j = "IMAGE"; break;
            case quicktype::PaintType::SOLID: _j = "SOLID"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::StrokeAlign& _x) {
        if (_j == "CENTER") _x = quicktype::StrokeAlign::CENTER;
        else if (_j == "INSIDE") _x = quicktype::StrokeAlign::INSIDE;
        else if (_j == "OUTSIDE") _x = quicktype::StrokeAlign::OUTSIDE;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::StrokeAlign& _x) {
        switch (_x) {
            case quicktype::StrokeAlign::CENTER: _j = "CENTER"; break;
            case quicktype::StrokeAlign::INSIDE: _j = "INSIDE"; break;
            case quicktype::StrokeAlign::OUTSIDE: _j = "OUTSIDE"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::NodeType& _x) {
        if (_j == "BOOLEAN") _x = quicktype::NodeType::BOOLEAN;
        else if (_j == "CANVAS") _x = quicktype::NodeType::CANVAS;
        else if (_j == "COMPONENT") _x = quicktype::NodeType::COMPONENT;
        else if (_j == "DOCUMENT") _x = quicktype::NodeType::DOCUMENT;
        else if (_j == "ELLIPSE") _x = quicktype::NodeType::ELLIPSE;
        else if (_j == "FRAME") _x = quicktype::NodeType::FRAME;
        else if (_j == "GROUP") _x = quicktype::NodeType::GROUP;
        else if (_j == "INSTANCE") _x = quicktype::NodeType::INSTANCE;
        else if (_j == "LINE") _x = quicktype::NodeType::LINE;
        else if (_j == "RECTANGLE") _x = quicktype::NodeType::RECTANGLE;
        else if (_j == "REGULAR_POLYGON") _x = quicktype::NodeType::REGULAR_POLYGON;
        else if (_j == "SLICE") _x = quicktype::NodeType::SLICE;
        else if (_j == "STAR") _x = quicktype::NodeType::STAR;
        else if (_j == "TEXT") _x = quicktype::NodeType::TEXT;
        else if (_j == "VECTOR") _x = quicktype::NodeType::VECTOR;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::NodeType& _x) {
        switch (_x) {
            case quicktype::NodeType::BOOLEAN: _j = "BOOLEAN"; break;
            case quicktype::NodeType::CANVAS: _j = "CANVAS"; break;
            case quicktype::NodeType::COMPONENT: _j = "COMPONENT"; break;
            case quicktype::NodeType::DOCUMENT: _j = "DOCUMENT"; break;
            case quicktype::NodeType::ELLIPSE: _j = "ELLIPSE"; break;
            case quicktype::NodeType::FRAME: _j = "FRAME"; break;
            case quicktype::NodeType::GROUP: _j = "GROUP"; break;
            case quicktype::NodeType::INSTANCE: _j = "INSTANCE"; break;
            case quicktype::NodeType::LINE: _j = "LINE"; break;
            case quicktype::NodeType::RECTANGLE: _j = "RECTANGLE"; break;
            case quicktype::NodeType::REGULAR_POLYGON: _j = "REGULAR_POLYGON"; break;
            case quicktype::NodeType::SLICE: _j = "SLICE"; break;
            case quicktype::NodeType::STAR: _j = "STAR"; break;
            case quicktype::NodeType::TEXT: _j = "TEXT"; break;
            case quicktype::NodeType::VECTOR: _j = "VECTOR"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::TextAlignHorizontal& _x) {
        if (_j == "CENTER") _x = quicktype::TextAlignHorizontal::CENTER;
        else if (_j == "JUSTIFIED") _x = quicktype::TextAlignHorizontal::JUSTIFIED;
        else if (_j == "LEFT") _x = quicktype::TextAlignHorizontal::LEFT;
        else if (_j == "RIGHT") _x = quicktype::TextAlignHorizontal::RIGHT;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::TextAlignHorizontal& _x) {
        switch (_x) {
            case quicktype::TextAlignHorizontal::CENTER: _j = "CENTER"; break;
            case quicktype::TextAlignHorizontal::JUSTIFIED: _j = "JUSTIFIED"; break;
            case quicktype::TextAlignHorizontal::LEFT: _j = "LEFT"; break;
            case quicktype::TextAlignHorizontal::RIGHT: _j = "RIGHT"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::TextAlignVertical& _x) {
        if (_j == "BOTTOM") _x = quicktype::TextAlignVertical::BOTTOM;
        else if (_j == "CENTER") _x = quicktype::TextAlignVertical::CENTER;
        else if (_j == "TOP") _x = quicktype::TextAlignVertical::TOP;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::TextAlignVertical& _x) {
        switch (_x) {
            case quicktype::TextAlignVertical::BOTTOM: _j = "BOTTOM"; break;
            case quicktype::TextAlignVertical::CENTER: _j = "CENTER"; break;
            case quicktype::TextAlignVertical::TOP: _j = "TOP"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::Alignment& _x) {
        if (_j == "CENTER") _x = quicktype::Alignment::CENTER;
        else if (_j == "MAX") _x = quicktype::Alignment::MAX;
        else if (_j == "MIN") _x = quicktype::Alignment::MIN;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::Alignment& _x) {
        switch (_x) {
            case quicktype::Alignment::CENTER: _j = "CENTER"; break;
            case quicktype::Alignment::MAX: _j = "MAX"; break;
            case quicktype::Alignment::MIN: _j = "MIN"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::Pattern& _x) {
        if (_j == "COLUMNS") _x = quicktype::Pattern::COLUMNS;
        else if (_j == "GRID") _x = quicktype::Pattern::GRID;
        else if (_j == "ROWS") _x = quicktype::Pattern::ROWS;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::Pattern& _x) {
        switch (_x) {
            case quicktype::Pattern::COLUMNS: _j = "COLUMNS"; break;
            case quicktype::Pattern::GRID: _j = "GRID"; break;
            case quicktype::Pattern::ROWS: _j = "ROWS"; break;
            default: throw "This should not happen";
        }
    }
}

#endif
