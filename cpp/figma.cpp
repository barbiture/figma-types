//  To parse this JSON data, first install
//
//      Boost     http://www.boost.org
//      json.hpp  https://github.com/nlohmann/json
//
//  Then include this file, and then do
//
//     FileResponse data = nlohmann::json::parse(jsonString);

#ifndef __QUICKTYPE_FILERESPONSE_HPP__
#define __QUICKTYPE_FILERESPONSE_HPP__

#include "json.hpp"

namespace quicktype {
    using nlohmann::json;

    /**
     * A rectangle that expresses a bounding box in absolute coordinates
     *
     * Bounding box of the node in absolute space coordinates
     *
     * An array of canvases attached to the document
     */
    struct Rectangle {
        /**
         * X coordinate of top left corner of the rectangle
         */
        double x;
        /**
         * Y coordinate of top left corner of the rectangle
         */
        double y;
        /**
         * Width of the rectangle
         */
        double width;
        /**
         * Height of the rectangle
         */
        double height;
    };

    /**
     * An RGBA color
     *
     * Background color of the canvas
     *
     * See type property for effect of this field
     *
     * Color of the grid
     *
     * Background color of the node
     *
     * (For solid paints) Solid color of the paint
     *
     * Color attached to corresponding position
     */
    struct Color {
        /**
         * Red channel value, between 0 and 1
         */
        double r;
        /**
         * Green channel value, between 0 and 1
         */
        double g;
        /**
         * Blue channel value, between 0 and 1
         */
        double b;
        /**
         * Alpha channel value, between 0 and 1
         */
        double a;
    };

    /**
     * Enum describing how layer blends with layers below
     *
     * See type property for effect of this field
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    enum class BlendMode { COLOR, COLOR_BURN, COLOR_DODGE, DARKEN, DIFFERENCE, EXCLUSION, HARD_LIGHT, HUE, LIGHTEN, LINEAR_BURN, LINEAR_DODGE, LUMINOSITY, MULTIPLY, NORMAL, OVERLAY, PASS_THROUGH, SATURATION, SCREEN, SOFT_LIGHT };

    /**
     * * LEFT: Node is laid out relative to left of the containing frame
     * * RIGHT: Node is laid out relative to right of the containing frame
     * * CENTER: Node is horizontally centered relative to containing frame
     * * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
     * (node stretches with frame)
     * * SCALE: Node scales horizontally with containing frame
     */
    enum class Horizontal { CENTER, LEFT, LEFT_RIGHT, RIGHT, SCALE };

    /**
     * * TOP: Node is laid out relative to top of the containing frame
     * * BOTTOM: Node is laid out relative to bottom of the containing frame
     * * CENTER: Node is vertically centered relative to containing frame
     * * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
     * (node stretches with frame)
     * * SCALE: Node scales vertically with containing frame
     */
    enum class Vertical { BOTTOM, CENTER, SCALE, TOP, TOP_BOTTOM };

    /**
     * Layout constraint relative to containing Frame
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    struct LayoutConstraint {
        /**
         * * TOP: Node is laid out relative to top of the containing frame
         * * BOTTOM: Node is laid out relative to bottom of the containing frame
         * * CENTER: Node is vertically centered relative to containing frame
         * * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
         * (node stretches with frame)
         * * SCALE: Node scales vertically with containing frame
         */
        Vertical vertical;
        /**
         * * LEFT: Node is laid out relative to left of the containing frame
         * * RIGHT: Node is laid out relative to right of the containing frame
         * * CENTER: Node is horizontally centered relative to containing frame
         * * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
         * (node stretches with frame)
         * * SCALE: Node scales horizontally with containing frame
         */
        Horizontal horizontal;
    };

    /**
     * A 2d vector
     *
     * See type property for effect of this field
     *
     * (For gradient paints) This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left corner of the
     * bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
     * corresponds to the start of the gradient (value 0 for the purposes of calculating
     * gradient stops), the second position is the end of the gradient (value 1), and the third
     * handle position determines the width of the gradient (only relevant for non-linear
     * gradients).
     */
    struct Vector2D {
        /**
         * X coordinate of the vector
         */
        double x;
        /**
         * Y coordinate of the vector
         */
        double y;
    };

    /**
     * Type of effect as a string enum
     */
    enum class EffectType { BACKGROUND_BLUR, DROP_SHADOW, INNER_SHADOW, LAYER_BLUR };

    /**
     * A visual effect such as a shadow or blur
     *
     * An array of effects attached to this node (see effects section for more details)
     */
    struct Effect {
        /**
         * Type of effect as a string enum
         */
        EffectType type;
        /**
         * See type property for effect of this field
         */
        double radius;
        /**
         * See type property for effect of this field
         */
        bool visible;
        /**
         * See type property for effect of this field
         */
        struct Color color;
        /**
         * See type property for effect of this field
         */
        BlendMode blend_mode;
        /**
         * See type property for effect of this field
         */
        struct Vector2D offset;
    };

    /**
     * Type of constraint to apply; string enum with potential values below
     *
     * * "SCALE": Scale by value
     * * "WIDTH": Scale proportionally and set width to value
     * * "HEIGHT": Scale proportionally and set height to value
     */
    enum class ConstraintType { HEIGHT, SCALE, WIDTH };

    /**
     * Sizing constraint for exports
     *
     * Constraint that determines sizing of exported asset
     */
    struct Constraint {
        /**
         * Type of constraint to apply; string enum with potential values below
         *
         * * "SCALE": Scale by value
         * * "WIDTH": Scale proportionally and set width to value
         * * "HEIGHT": Scale proportionally and set height to value
         */
        ConstraintType type;
        /**
         * See type property for effect of this field
         */
        std::unique_ptr<double> value;
    };

    /**
     * Type of constraint to apply; string enum with potential values below
     *
     * * "SCALE": Scale by value
     * * "WIDTH": Scale proportionally and set width to value
     * * "HEIGHT": Scale proportionally and set height to value
     */
    enum class Format { JPG, PNG, SVG };

    /**
     * Format and size to export an asset at
     *
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * A rectangular region of the canvas that can be exported
     */
    struct ExportSetting {
        /**
         * File suffix to append to all filenames
         */
        std::string suffix;
        /**
         * Type of constraint to apply; string enum with potential values below
         *
         * * "SCALE": Scale by value
         * * "WIDTH": Scale proportionally and set width to value
         * * "HEIGHT": Scale proportionally and set height to value
         */
        Format format;
        /**
         * Constraint that determines sizing of exported asset
         */
        struct Constraint constraint;
    };

    /**
     * A position color pair representing a gradient stop
     *
     * (For gradient paints) Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly between neighboring
     * gradient stops.
     */
    struct ColorStop {
        /**
         * Color attached to corresponding position
         */
        struct Color color;
        /**
         * Value between 0 and 1 representing position along gradient axis
         */
        double position;
    };

    /**
     * (For image paints) Image scaling mode
     */
    enum class ScaleMode { FILL, FIT, STRETCH, TILE };

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
    struct Paint {
        /**
         * Type of paint as a string enum
         */
        PaintType type;
        /**
         * Is the paint enabled?
         */
        bool visible;
        /**
         * Overall opacity of paint (colors within the paint can also have opacity values which
         * would blend with this)
         */
        double opacity;
        /**
         * (For solid paints) Solid color of the paint
         */
        std::unique_ptr<struct Color> color;
        /**
         * (For gradient paints) This field contains three vectors, each of which are a position in
         * normalized object space (normalized object space is if the top left corner of the
         * bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
         * corresponds to the start of the gradient (value 0 for the purposes of calculating
         * gradient stops), the second position is the end of the gradient (value 1), and the third
         * handle position determines the width of the gradient (only relevant for non-linear
         * gradients).
         */
        std::unique_ptr<std::vector<struct Vector2D>> gradient_handle_positions;
        /**
         * (For gradient paints) Positions of key points along the gradient axis with the colors
         * anchored there. Colors along the gradient are interpolated smoothly between neighboring
         * gradient stops.
         */
        std::unique_ptr<std::vector<struct ColorStop>> gradient_stops;
        /**
         * (For image paints) Image scaling mode
         */
        std::unique_ptr<ScaleMode> scale_mode;
    };

    /**
     * Positioning of grid as a string enum
     *
     * * MIN: Grid starts at the left or top of the frame
     * * MAX: Grid starts at the right or bottom of the frame
     * * CENTER: Grid is center aligned
     */
    enum class Alignment { CENTER, MAX, MIN };

    /**
     * * COLUMNS: Vertical grid
     * * ROWS: Horizontal grid
     * * GRID: Square grid
     */
    enum class Pattern { COLUMNS, GRID, ROWS };

    /**
     * Guides to align and place objects within a frame
     *
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    struct LayoutGrid {
        /**
         * * COLUMNS: Vertical grid
         * * ROWS: Horizontal grid
         * * GRID: Square grid
         */
        Pattern pattern;
        /**
         * Width of column grid or height of row grid or square grid spacing
         */
        double section_size;
        /**
         * Is the grid currently visible?
         */
        bool visible;
        /**
         * Color of the grid
         */
        struct Color color;
        /**
         * Positioning of grid as a string enum
         *
         * * MIN: Grid starts at the left or top of the frame
         * * MAX: Grid starts at the right or bottom of the frame
         * * CENTER: Grid is center aligned
         */
        Alignment alignment;
        /**
         * Spacing in between columns and rows
         */
        double gutter_size;
        /**
         * Spacing before the first column or row
         */
        double offset;
        /**
         * Number of columns or rows
         */
        double count;
    };

    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    enum class StrokeAlign { CENTER, INSIDE, OUTSIDE };

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
     * Style of text including font family and weight (see type style section for more
     * information)
     *
     * Map from ID to TypeStyle for looking up style overrides
     */
    struct TypeStyle {
        /**
         * Line height in px
         */
        double line_height_px;
        /**
         * PostScript font name
         */
        std::string font_post_script_name;
        /**
         * Numeric font weight
         */
        double font_weight;
        /**
         * Line height as a percentage of normal line height
         */
        double line_height_percent;
        /**
         * Vertical text alignment as string enum
         */
        TextAlignVertical text_align_vertical;
        /**
         * Font size in px
         */
        double font_size;
        /**
         * Is text italicized?
         */
        bool italic;
        /**
         * Paints applied to characters
         */
        std::vector<struct Paint> fills;
        /**
         * Font family of text (standard name)
         */
        std::string font_family;
        /**
         * Horizontal text alignment as string enum
         */
        TextAlignHorizontal text_align_horizontal;
        /**
         * Space between characters in px
         */
        double letter_spacing;
    };

    /**
     * The type of the node
     */
    enum class NodeType { BOOLEAN, CANVAS, COMPONENT, DOCUMENT, ELLIPSE, FRAME, GROUP, INSTANCE, LINE, RECTANGLE, REGULAR_POLYGON, SLICE, STAR, TEXT, VECTOR };

    /**
     * An array of canvases attached to the document
     *
     * The root node within the document
     *
     * Properties are shared across all nodes
     *
     * A rectangular region of the canvas that can be exported
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * See type property for effect of this field
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Opacity of the node
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * Line height in px
     *
     * Numeric font weight
     *
     * Line height as a percentage of normal line height
     *
     * Font size in px
     *
     * Space between characters in px
     *
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     *
     * Whether or not the node is visible on the canvas
     *
     * Is the grid currently visible?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * Does this node clip content outside of its bounds?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the paint enabled?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * File suffix to append to all filenames
     *
     * Node ID of node to transition to in prototyping
     *
     * A group that has a boolean operation applied to it
     *
     * A text box
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * A logical grouping of nodes
     *
     * A regular star shape
     *
     * A straight line
     *
     * An ellipse
     *
     * A regular n-sided polygon
     *
     * A rectangle that expresses a bounding box in absolute coordinates
     *
     * Bounding box of the node in absolute space coordinates
     *
     * A node that can have instances created of it that share the same properties
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    struct NodeNode {
        /**
         * A string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * The name given to the node by the user in the tool
         */
        std::unique_ptr<std::string> name;
        /**
         * Whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * The type of the node
         */
        std::unique_ptr<NodeType> type;
        /**
         * An array of canvases attached to the document
         *
         * An array of top level layers on the canvas
         *
         * An array of nodes that are direct children of this node
         *
         * An array of nodes that are being boolean operated on
         */
        std::unique_ptr<std::vector<struct NodeNode>> children;
        /**
         * Background color of the canvas
         *
         * Background color of the node
         */
        std::unique_ptr<struct Color> background_color;
        /**
         * An array of export settings representing images to export from the canvas
         *
         * An array of export settings representing images to export from node
         *
         * A rectangular region of the canvas that can be exported
         */
        std::unique_ptr<std::vector<struct ExportSetting>> export_settings;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::unique_ptr<std::vector<struct Effect>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGrid>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_id;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct Rectangle> absolute_bounding_box;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<struct LayoutConstraint> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * Does this node clip content outside of its bounds?
         */
        std::unique_ptr<bool> clips_content;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<bool> preserve_ratio;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         *
         * * INSIDE: draw stroke inside the shape boundary
         * * OUTSIDE: draw stroke outside the shape boundary
         * * CENTER: draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct Paint>> fills;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct Paint>> strokes;
        /**
         * X coordinate of top left corner of the rectangle
         */
        std::unique_ptr<double> x;
        /**
         * Y coordinate of top left corner of the rectangle
         */
        std::unique_ptr<double> y;
        /**
         * Width of the rectangle
         */
        std::unique_ptr<double> width;
        /**
         * Height of the rectangle
         */
        std::unique_ptr<double> height;
        /**
         * Text contained within text box
         */
        std::unique_ptr<std::string> characters;
        /**
         * Style of text including font family and weight (see type style section for more
         * information)
         */
        std::unique_ptr<struct TypeStyle> style;
        /**
         * Array with same number of elements as characeters in text box, each element is a
         * reference to the styleOverrideTable defined below and maps to the corresponding character
         * in the characters field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::map<std::string, struct TypeStyle>> style_override_table;
        /**
         * ID of component that this instance came from, refers to components table (see endpoints
         * section below)
         */
        std::unique_ptr<std::string> component_id;
    };

    /**
     * An array of nodes that are direct children of this node
     *
     * An array of canvases attached to the document
     *
     * The root node within the document
     *
     * Properties are shared across all nodes
     *
     * A rectangular region of the canvas that can be exported
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * See type property for effect of this field
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Opacity of the node
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * Line height in px
     *
     * Numeric font weight
     *
     * Line height as a percentage of normal line height
     *
     * Font size in px
     *
     * Space between characters in px
     *
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     *
     * Whether or not the node is visible on the canvas
     *
     * Is the grid currently visible?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * Does this node clip content outside of its bounds?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the paint enabled?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * File suffix to append to all filenames
     *
     * Node ID of node to transition to in prototyping
     *
     * A group that has a boolean operation applied to it
     *
     * A text box
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * A logical grouping of nodes
     *
     * A regular star shape
     *
     * A straight line
     *
     * An ellipse
     *
     * A regular n-sided polygon
     *
     * A rectangle that expresses a bounding box in absolute coordinates
     *
     * Bounding box of the node in absolute space coordinates
     *
     * A node that can have instances created of it that share the same properties
     */
    struct PurpleNode {
        /**
         * A string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * The name given to the node by the user in the tool
         */
        std::unique_ptr<std::string> name;
        /**
         * Whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * The type of the node
         */
        std::unique_ptr<NodeType> type;
        /**
         * An array of canvases attached to the document
         *
         * An array of top level layers on the canvas
         *
         * An array of nodes that are direct children of this node
         *
         * An array of nodes that are being boolean operated on
         */
        std::unique_ptr<std::vector<struct NodeNode>> children;
        /**
         * Background color of the canvas
         *
         * Background color of the node
         */
        std::unique_ptr<struct Color> background_color;
        /**
         * An array of export settings representing images to export from the canvas
         *
         * An array of export settings representing images to export from node
         *
         * A rectangular region of the canvas that can be exported
         */
        std::unique_ptr<std::vector<struct ExportSetting>> export_settings;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::unique_ptr<std::vector<struct Effect>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGrid>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_id;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct Rectangle> absolute_bounding_box;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<struct LayoutConstraint> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * Does this node clip content outside of its bounds?
         */
        std::unique_ptr<bool> clips_content;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<bool> preserve_ratio;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         *
         * * INSIDE: draw stroke inside the shape boundary
         * * OUTSIDE: draw stroke outside the shape boundary
         * * CENTER: draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct Paint>> fills;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct Paint>> strokes;
        /**
         * X coordinate of top left corner of the rectangle
         */
        std::unique_ptr<double> x;
        /**
         * Y coordinate of top left corner of the rectangle
         */
        std::unique_ptr<double> y;
        /**
         * Width of the rectangle
         */
        std::unique_ptr<double> width;
        /**
         * Height of the rectangle
         */
        std::unique_ptr<double> height;
        /**
         * Text contained within text box
         */
        std::unique_ptr<std::string> characters;
        /**
         * Style of text including font family and weight (see type style section for more
         * information)
         */
        std::unique_ptr<struct TypeStyle> style;
        /**
         * Array with same number of elements as characeters in text box, each element is a
         * reference to the styleOverrideTable defined below and maps to the corresponding character
         * in the characters field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::map<std::string, struct TypeStyle>> style_override_table;
        /**
         * ID of component that this instance came from, refers to components table (see endpoints
         * section below)
         */
        std::unique_ptr<std::string> component_id;
    };

    /**
     * A mapping from node IDs to component metadata. This is to help you determine which
     * components each instance comes from. Currently the only piece of metadata available on
     * components is the name of the component, but more properties will be forthcoming.
     *
     * A node that can have instances created of it that share the same properties
     *
     * An array of canvases attached to the document
     *
     * Properties are shared across all nodes
     *
     * The root node within the document
     *
     * A rectangular region of the canvas that can be exported
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * See type property for effect of this field
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Opacity of the node
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * Line height in px
     *
     * Numeric font weight
     *
     * Line height as a percentage of normal line height
     *
     * Font size in px
     *
     * Space between characters in px
     *
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     *
     * Whether or not the node is visible on the canvas
     *
     * Is the grid currently visible?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * Does this node clip content outside of its bounds?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the paint enabled?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * File suffix to append to all filenames
     *
     * Node ID of node to transition to in prototyping
     *
     * A group that has a boolean operation applied to it
     *
     * A text box
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    struct Component {
        /**
         * A string uniquely identifying this node within the document
         */
        std::string id;
        /**
         * The name given to the node by the user in the tool
         */
        std::string name;
        /**
         * Whether or not the node is visible on the canvas
         */
        bool visible;
        /**
         * The type of the node
         */
        NodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct Effect> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::vector<struct LayoutGrid> layout_grids;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_id;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct Rectangle absolute_bounding_box;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * Background color of the node
         */
        struct Color background_color;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct LayoutConstraint constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        bool is_mask;
        /**
         * Does this node clip content outside of its bounds?
         */
        bool clips_content;
        /**
         * An array of export settings representing images to export from node
         */
        std::vector<struct ExportSetting> export_settings;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        bool preserve_ratio;
        /**
         * An array of nodes that are direct children of this node
         */
        std::vector<struct PurpleNode> children;
    };

    /**
     * An array of canvases attached to the document
     *
     * The root node within the document
     *
     * Properties are shared across all nodes
     *
     * A rectangular region of the canvas that can be exported
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * See type property for effect of this field
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Opacity of the node
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * Line height in px
     *
     * Numeric font weight
     *
     * Line height as a percentage of normal line height
     *
     * Font size in px
     *
     * Space between characters in px
     *
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     *
     * Whether or not the node is visible on the canvas
     *
     * Is the grid currently visible?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * Does this node clip content outside of its bounds?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the paint enabled?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * File suffix to append to all filenames
     *
     * Node ID of node to transition to in prototyping
     *
     * A group that has a boolean operation applied to it
     *
     * A text box
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * A logical grouping of nodes
     *
     * A regular star shape
     *
     * A straight line
     *
     * An ellipse
     *
     * A regular n-sided polygon
     *
     * A rectangle that expresses a bounding box in absolute coordinates
     *
     * Bounding box of the node in absolute space coordinates
     *
     * A node that can have instances created of it that share the same properties
     */
    struct FluffyNode {
        /**
         * A string uniquely identifying this node within the document
         */
        std::unique_ptr<std::string> id;
        /**
         * The name given to the node by the user in the tool
         */
        std::unique_ptr<std::string> name;
        /**
         * Whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * The type of the node
         */
        std::unique_ptr<NodeType> type;
        /**
         * An array of canvases attached to the document
         *
         * An array of top level layers on the canvas
         *
         * An array of nodes that are direct children of this node
         *
         * An array of nodes that are being boolean operated on
         */
        std::unique_ptr<std::vector<struct NodeNode>> children;
        /**
         * Background color of the canvas
         *
         * Background color of the node
         */
        std::unique_ptr<struct Color> background_color;
        /**
         * An array of export settings representing images to export from the canvas
         *
         * An array of export settings representing images to export from node
         *
         * A rectangular region of the canvas that can be exported
         */
        std::unique_ptr<std::vector<struct ExportSetting>> export_settings;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::unique_ptr<std::vector<struct Effect>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGrid>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_id;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct Rectangle> absolute_bounding_box;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<struct LayoutConstraint> constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        std::unique_ptr<bool> is_mask;
        /**
         * Does this node clip content outside of its bounds?
         */
        std::unique_ptr<bool> clips_content;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<bool> preserve_ratio;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         *
         * * INSIDE: draw stroke inside the shape boundary
         * * OUTSIDE: draw stroke outside the shape boundary
         * * CENTER: draw stroke centered along the shape boundary
         */
        std::unique_ptr<StrokeAlign> stroke_align;
        /**
         * The weight of strokes on the node
         */
        std::unique_ptr<double> stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::unique_ptr<std::vector<struct Paint>> fills;
        /**
         * An array of stroke paints applied to the node
         */
        std::unique_ptr<std::vector<struct Paint>> strokes;
        /**
         * X coordinate of top left corner of the rectangle
         */
        std::unique_ptr<double> x;
        /**
         * Y coordinate of top left corner of the rectangle
         */
        std::unique_ptr<double> y;
        /**
         * Width of the rectangle
         */
        std::unique_ptr<double> width;
        /**
         * Height of the rectangle
         */
        std::unique_ptr<double> height;
        /**
         * Text contained within text box
         */
        std::unique_ptr<std::string> characters;
        /**
         * Style of text including font family and weight (see type style section for more
         * information)
         */
        std::unique_ptr<struct TypeStyle> style;
        /**
         * Array with same number of elements as characeters in text box, each element is a
         * reference to the styleOverrideTable defined below and maps to the corresponding character
         * in the characters field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::map<std::string, struct TypeStyle>> style_override_table;
        /**
         * ID of component that this instance came from, refers to components table (see endpoints
         * section below)
         */
        std::unique_ptr<std::string> component_id;
    };

    /**
     * The root node within the document
     *
     * Properties are shared across all nodes
     *
     * An array of canvases attached to the document
     *
     * A rectangular region of the canvas that can be exported
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * See type property for effect of this field
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Opacity of the node
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * Line height in px
     *
     * Numeric font weight
     *
     * Line height as a percentage of normal line height
     *
     * Font size in px
     *
     * Space between characters in px
     *
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     *
     * Whether or not the node is visible on the canvas
     *
     * Is the grid currently visible?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * Does this node clip content outside of its bounds?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the paint enabled?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * File suffix to append to all filenames
     *
     * Node ID of node to transition to in prototyping
     *
     * A group that has a boolean operation applied to it
     *
     * A text box
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    struct Document {
        /**
         * A string uniquely identifying this node within the document
         */
        std::string id;
        /**
         * The name given to the node by the user in the tool
         */
        std::string name;
        /**
         * Whether or not the node is visible on the canvas
         */
        bool visible;
        /**
         * The type of the node
         */
        NodeType type;
        /**
         * An array of canvases attached to the document
         */
        std::vector<struct FluffyNode> children;
    };

    /**
     * GET /v1/files/:key
     *
     * Returns the document refered to by :key as a JSON object. The file key can be parsed from
     * any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
     * contains a Node of type DOCUMENT.
     */
    struct FileResponse {
        /**
         * The root node within the document
         */
        struct Document document;
        /**
         * A mapping from node IDs to component metadata. This is to help you determine which
         * components each instance comes from. Currently the only piece of metadata available on
         * components is the name of the component, but more properties will be forthcoming.
         */
        std::map<std::string, struct Component> components;
        double schema_version;
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

    inline void from_json(const json& _j, struct quicktype::Rectangle& _x) {
        _x.x = _j.at("x").get<double>();
        _x.y = _j.at("y").get<double>();
        _x.width = _j.at("width").get<double>();
        _x.height = _j.at("height").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::Rectangle& _x) {
        _j = json::object();
        _j["x"] = _x.x;
        _j["y"] = _x.y;
        _j["width"] = _x.width;
        _j["height"] = _x.height;
    }

    inline void from_json(const json& _j, struct quicktype::Color& _x) {
        _x.r = _j.at("r").get<double>();
        _x.g = _j.at("g").get<double>();
        _x.b = _j.at("b").get<double>();
        _x.a = _j.at("a").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::Color& _x) {
        _j = json::object();
        _j["r"] = _x.r;
        _j["g"] = _x.g;
        _j["b"] = _x.b;
        _j["a"] = _x.a;
    }

    inline void from_json(const json& _j, struct quicktype::LayoutConstraint& _x) {
        _x.vertical = _j.at("vertical").get<quicktype::Vertical>();
        _x.horizontal = _j.at("horizontal").get<quicktype::Horizontal>();
    }

    inline void to_json(json& _j, const struct quicktype::LayoutConstraint& _x) {
        _j = json::object();
        _j["vertical"] = _x.vertical;
        _j["horizontal"] = _x.horizontal;
    }

    inline void from_json(const json& _j, struct quicktype::Vector2D& _x) {
        _x.x = _j.at("x").get<double>();
        _x.y = _j.at("y").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::Vector2D& _x) {
        _j = json::object();
        _j["x"] = _x.x;
        _j["y"] = _x.y;
    }

    inline void from_json(const json& _j, struct quicktype::Effect& _x) {
        _x.type = _j.at("type").get<quicktype::EffectType>();
        _x.radius = _j.at("radius").get<double>();
        _x.visible = _j.at("visible").get<bool>();
        _x.color = _j.at("color").get<struct quicktype::Color>();
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.offset = _j.at("offset").get<struct quicktype::Vector2D>();
    }

    inline void to_json(json& _j, const struct quicktype::Effect& _x) {
        _j = json::object();
        _j["type"] = _x.type;
        _j["radius"] = _x.radius;
        _j["visible"] = _x.visible;
        _j["color"] = _x.color;
        _j["blendMode"] = _x.blend_mode;
        _j["offset"] = _x.offset;
    }

    inline void from_json(const json& _j, struct quicktype::Constraint& _x) {
        _x.type = _j.at("type").get<quicktype::ConstraintType>();
        _x.value = quicktype::get_optional<double>(_j, "value");
    }

    inline void to_json(json& _j, const struct quicktype::Constraint& _x) {
        _j = json::object();
        _j["type"] = _x.type;
        _j["value"] = _x.value;
    }

    inline void from_json(const json& _j, struct quicktype::ExportSetting& _x) {
        _x.suffix = _j.at("suffix").get<std::string>();
        _x.format = _j.at("format").get<quicktype::Format>();
        _x.constraint = _j.at("constraint").get<struct quicktype::Constraint>();
    }

    inline void to_json(json& _j, const struct quicktype::ExportSetting& _x) {
        _j = json::object();
        _j["suffix"] = _x.suffix;
        _j["format"] = _x.format;
        _j["constraint"] = _x.constraint;
    }

    inline void from_json(const json& _j, struct quicktype::ColorStop& _x) {
        _x.color = _j.at("color").get<struct quicktype::Color>();
        _x.position = _j.at("position").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::ColorStop& _x) {
        _j = json::object();
        _j["color"] = _x.color;
        _j["position"] = _x.position;
    }

    inline void from_json(const json& _j, struct quicktype::Paint& _x) {
        _x.type = _j.at("type").get<quicktype::PaintType>();
        _x.visible = _j.at("visible").get<bool>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.color = quicktype::get_optional<struct quicktype::Color>(_j, "color");
        _x.gradient_handle_positions = quicktype::get_optional<std::vector<struct quicktype::Vector2D>>(_j, "gradientHandlePositions");
        _x.gradient_stops = quicktype::get_optional<std::vector<struct quicktype::ColorStop>>(_j, "gradientStops");
        _x.scale_mode = quicktype::get_optional<quicktype::ScaleMode>(_j, "scaleMode");
    }

    inline void to_json(json& _j, const struct quicktype::Paint& _x) {
        _j = json::object();
        _j["type"] = _x.type;
        _j["visible"] = _x.visible;
        _j["opacity"] = _x.opacity;
        _j["color"] = _x.color;
        _j["gradientHandlePositions"] = _x.gradient_handle_positions;
        _j["gradientStops"] = _x.gradient_stops;
        _j["scaleMode"] = _x.scale_mode;
    }

    inline void from_json(const json& _j, struct quicktype::LayoutGrid& _x) {
        _x.pattern = _j.at("pattern").get<quicktype::Pattern>();
        _x.section_size = _j.at("sectionSize").get<double>();
        _x.visible = _j.at("visible").get<bool>();
        _x.color = _j.at("color").get<struct quicktype::Color>();
        _x.alignment = _j.at("alignment").get<quicktype::Alignment>();
        _x.gutter_size = _j.at("gutterSize").get<double>();
        _x.offset = _j.at("offset").get<double>();
        _x.count = _j.at("count").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::LayoutGrid& _x) {
        _j = json::object();
        _j["pattern"] = _x.pattern;
        _j["sectionSize"] = _x.section_size;
        _j["visible"] = _x.visible;
        _j["color"] = _x.color;
        _j["alignment"] = _x.alignment;
        _j["gutterSize"] = _x.gutter_size;
        _j["offset"] = _x.offset;
        _j["count"] = _x.count;
    }

    inline void from_json(const json& _j, struct quicktype::TypeStyle& _x) {
        _x.line_height_px = _j.at("lineHeightPx").get<double>();
        _x.font_post_script_name = _j.at("fontPostScriptName").get<std::string>();
        _x.font_weight = _j.at("fontWeight").get<double>();
        _x.line_height_percent = _j.at("lineHeightPercent").get<double>();
        _x.text_align_vertical = _j.at("textAlignVertical").get<quicktype::TextAlignVertical>();
        _x.font_size = _j.at("fontSize").get<double>();
        _x.italic = _j.at("italic").get<bool>();
        _x.fills = _j.at("fills").get<std::vector<struct quicktype::Paint>>();
        _x.font_family = _j.at("fontFamily").get<std::string>();
        _x.text_align_horizontal = _j.at("textAlignHorizontal").get<quicktype::TextAlignHorizontal>();
        _x.letter_spacing = _j.at("letterSpacing").get<double>();
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

    inline void from_json(const json& _j, struct quicktype::NodeNode& _x) {
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::Color>(_j, "backgroundColor");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSetting>>(_j, "exportSettings");
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::Effect>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGrid>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.transition_id = quicktype::get_optional<std::string>(_j, "transitionID");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::Rectangle>(_j, "absoluteBoundingBox");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::LayoutConstraint>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::Paint>>(_j, "fills");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::Paint>>(_j, "strokes");
        _x.x = quicktype::get_optional<double>(_j, "x");
        _x.y = quicktype::get_optional<double>(_j, "y");
        _x.width = quicktype::get_optional<double>(_j, "width");
        _x.height = quicktype::get_optional<double>(_j, "height");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.style = quicktype::get_optional<struct quicktype::TypeStyle>(_j, "style");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
        _x.style_override_table = quicktype::get_optional<std::map<std::string, struct quicktype::TypeStyle>>(_j, "styleOverrideTable");
        _x.component_id = quicktype::get_optional<std::string>(_j, "componentId");
    }

    inline void to_json(json& _j, const struct quicktype::NodeNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
        _j["backgroundColor"] = _x.background_color;
        _j["exportSettings"] = _x.export_settings;
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["transitionID"] = _x.transition_id;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["strokes"] = _x.strokes;
        _j["x"] = _x.x;
        _j["y"] = _x.y;
        _j["width"] = _x.width;
        _j["height"] = _x.height;
        _j["characters"] = _x.characters;
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::PurpleNode& _x) {
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::Color>(_j, "backgroundColor");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSetting>>(_j, "exportSettings");
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::Effect>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGrid>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.transition_id = quicktype::get_optional<std::string>(_j, "transitionID");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::Rectangle>(_j, "absoluteBoundingBox");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::LayoutConstraint>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::Paint>>(_j, "fills");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::Paint>>(_j, "strokes");
        _x.x = quicktype::get_optional<double>(_j, "x");
        _x.y = quicktype::get_optional<double>(_j, "y");
        _x.width = quicktype::get_optional<double>(_j, "width");
        _x.height = quicktype::get_optional<double>(_j, "height");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.style = quicktype::get_optional<struct quicktype::TypeStyle>(_j, "style");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
        _x.style_override_table = quicktype::get_optional<std::map<std::string, struct quicktype::TypeStyle>>(_j, "styleOverrideTable");
        _x.component_id = quicktype::get_optional<std::string>(_j, "componentId");
    }

    inline void to_json(json& _j, const struct quicktype::PurpleNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
        _j["backgroundColor"] = _x.background_color;
        _j["exportSettings"] = _x.export_settings;
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["transitionID"] = _x.transition_id;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["strokes"] = _x.strokes;
        _j["x"] = _x.x;
        _j["y"] = _x.y;
        _j["width"] = _x.width;
        _j["height"] = _x.height;
        _j["characters"] = _x.characters;
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::Component& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::NodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::Effect>>();
        _x.layout_grids = _j.at("layoutGrids").get<std::vector<struct quicktype::LayoutGrid>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.transition_id = quicktype::get_optional<std::string>(_j, "transitionID");
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::Rectangle>();
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.background_color = _j.at("backgroundColor").get<struct quicktype::Color>();
        _x.constraints = _j.at("constraints").get<struct quicktype::LayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.clips_content = _j.at("clipsContent").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSetting>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
        _x.children = _j.at("children").get<std::vector<struct quicktype::PurpleNode>>();
    }

    inline void to_json(json& _j, const struct quicktype::Component& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["transitionID"] = _x.transition_id;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["blendMode"] = _x.blend_mode;
        _j["backgroundColor"] = _x.background_color;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["exportSettings"] = _x.export_settings;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, struct quicktype::FluffyNode& _x) {
        _x.id = quicktype::get_optional<std::string>(_j, "id");
        _x.name = quicktype::get_optional<std::string>(_j, "name");
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::Color>(_j, "backgroundColor");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSetting>>(_j, "exportSettings");
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::Effect>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGrid>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.transition_id = quicktype::get_optional<std::string>(_j, "transitionID");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::Rectangle>(_j, "absoluteBoundingBox");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::LayoutConstraint>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::Paint>>(_j, "fills");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::Paint>>(_j, "strokes");
        _x.x = quicktype::get_optional<double>(_j, "x");
        _x.y = quicktype::get_optional<double>(_j, "y");
        _x.width = quicktype::get_optional<double>(_j, "width");
        _x.height = quicktype::get_optional<double>(_j, "height");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.style = quicktype::get_optional<struct quicktype::TypeStyle>(_j, "style");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
        _x.style_override_table = quicktype::get_optional<std::map<std::string, struct quicktype::TypeStyle>>(_j, "styleOverrideTable");
        _x.component_id = quicktype::get_optional<std::string>(_j, "componentId");
    }

    inline void to_json(json& _j, const struct quicktype::FluffyNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
        _j["backgroundColor"] = _x.background_color;
        _j["exportSettings"] = _x.export_settings;
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["transitionID"] = _x.transition_id;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["strokes"] = _x.strokes;
        _j["x"] = _x.x;
        _j["y"] = _x.y;
        _j["width"] = _x.width;
        _j["height"] = _x.height;
        _j["characters"] = _x.characters;
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::Document& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::NodeType>();
        _x.children = _j.at("children").get<std::vector<struct quicktype::FluffyNode>>();
    }

    inline void to_json(json& _j, const struct quicktype::Document& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, struct quicktype::FileResponse& _x) {
        _x.document = _j.at("document").get<struct quicktype::Document>();
        _x.components = _j.at("components").get<std::map<std::string, struct quicktype::Component>>();
        _x.schema_version = _j.at("schemaVersion").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::FileResponse& _x) {
        _j = json::object();
        _j["document"] = _x.document;
        _j["components"] = _x.components;
        _j["schemaVersion"] = _x.schema_version;
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

    inline void from_json(const json& _j, quicktype::ScaleMode& _x) {
        if (_j == "FILL") _x = quicktype::ScaleMode::FILL;
        else if (_j == "FIT") _x = quicktype::ScaleMode::FIT;
        else if (_j == "STRETCH") _x = quicktype::ScaleMode::STRETCH;
        else if (_j == "TILE") _x = quicktype::ScaleMode::TILE;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::ScaleMode& _x) {
        switch (_x) {
            case quicktype::ScaleMode::FILL: _j = "FILL"; break;
            case quicktype::ScaleMode::FIT: _j = "FIT"; break;
            case quicktype::ScaleMode::STRETCH: _j = "STRETCH"; break;
            case quicktype::ScaleMode::TILE: _j = "TILE"; break;
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
}

#endif
