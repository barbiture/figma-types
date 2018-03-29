//  To parse this JSON data, first install
//
//      Boost     http://www.boost.org
//      json.hpp  https://github.com/nlohmann/json
//
//  Then include this file, and then do
//
//     RegularPolygonNode data = nlohmann::json::parse(jsonString);
//     EllipseNode data = nlohmann::json::parse(jsonString);
//     GroupNode data = nlohmann::json::parse(jsonString);
//     Node data = nlohmann::json::parse(jsonString);
//     Vector data = nlohmann::json::parse(jsonString);
//     Color data = nlohmann::json::parse(jsonString);
//     Global data = nlohmann::json::parse(jsonString);
//     ColorStop data = nlohmann::json::parse(jsonString);
//     VectorNode data = nlohmann::json::parse(jsonString);
//     LayoutConstraint data = nlohmann::json::parse(jsonString);
//     BooleanNode data = nlohmann::json::parse(jsonString);
//     User data = nlohmann::json::parse(jsonString);
//     TextNode data = nlohmann::json::parse(jsonString);
//     FrameNode data = nlohmann::json::parse(jsonString);
//     Rectangle data = nlohmann::json::parse(jsonString);
//     LayoutGrid data = nlohmann::json::parse(jsonString);
//     Effect data = nlohmann::json::parse(jsonString);
//     RectangleNode data = nlohmann::json::parse(jsonString);
//     BlendMode data = nlohmann::json::parse(jsonString);
//     SliceNode data = nlohmann::json::parse(jsonString);
//     StarNode data = nlohmann::json::parse(jsonString);
//     LineNode data = nlohmann::json::parse(jsonString);
//     InstanceNode data = nlohmann::json::parse(jsonString);
//     TypeStyle data = nlohmann::json::parse(jsonString);
//     CanvasNode data = nlohmann::json::parse(jsonString);
//     ExportSetting data = nlohmann::json::parse(jsonString);
//     DocumentNode data = nlohmann::json::parse(jsonString);
//     Constraint data = nlohmann::json::parse(jsonString);
//     Paint data = nlohmann::json::parse(jsonString);
//     ComponentNode data = nlohmann::json::parse(jsonString);
//     Comment data = nlohmann::json::parse(jsonString);

#ifndef __QUICKTYPE_REGULARPOLYGONNODE_ELLIPSENODE_GROUPNODE_NODE_VECTOR_COLOR_GLOBAL_COLORSTOP_VECTORNODE_LAYOUTCONSTRAINT_BOOLEANNODE_USER_TEXTNODE_FRAMENODE_RECTANGLE_LAYOUTGRID_EFFECT_RECTANGLENODE_BLENDMODE_SLICENODE_STARNODE_LINENODE_INSTANCENODE_TYPESTYLE_CANVASNODE_EXPORTSETTING_DOCUMENTNODE_CONSTRAINT_PAINT_COMPONENTNODE_COMMENT_HPP__
#define __QUICKTYPE_REGULARPOLYGONNODE_ELLIPSENODE_GROUPNODE_NODE_VECTOR_COLOR_GLOBAL_COLORSTOP_VECTORNODE_LAYOUTCONSTRAINT_BOOLEANNODE_USER_TEXTNODE_FRAMENODE_RECTANGLE_LAYOUTGRID_EFFECT_RECTANGLENODE_BLENDMODE_SLICENODE_STARNODE_LINENODE_INSTANCENODE_TYPESTYLE_CANVASNODE_EXPORTSETTING_DOCUMENTNODE_CONSTRAINT_PAINT_COMPONENTNODE_COMMENT_HPP__

#include "json.hpp"

namespace quicktype {
    using nlohmann::json;

    /**
     * A rectangle that expresses a bounding box in absolute coordinates
     *
     * Bounding box of the node in absolute space coordinates
     */
    struct RegularPolygonNodeRectangle {
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
    struct RegularPolygonNodeLayoutConstraint {
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
     * An RGBA color
     *
     * See type property for effect of this field
     *
     * (For solid paints) Solid color of the paint
     *
     * Color attached to corresponding position
     *
     * Color of the grid
     *
     * Background color of the node
     *
     * Background color of the canvas
     */
    struct EffectColor {
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
    struct EffectVector {
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
    struct EffectElement {
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
        struct EffectColor color;
        /**
         * See type property for effect of this field
         */
        BlendMode blend_mode;
        /**
         * See type property for effect of this field
         */
        struct EffectVector offset;
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
    struct ExportSettingConstraint {
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
     * An array of export settings representing images to export from node
     *
     * An array of export settings representing images to export from the canvas
     *
     * A rectangular region of the canvas that can be exported
     */
    struct ExportSettingElement {
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
        struct ExportSettingConstraint constraint;
    };

    /**
     * A position color pair representing a gradient stop
     *
     * (For gradient paints) Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly between neighboring
     * gradient stops.
     */
    struct ColorStopElement {
        /**
         * Color attached to corresponding position
         */
        struct EffectColor color;
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
    struct PaintElement {
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
        std::unique_ptr<struct EffectColor> color;
        /**
         * (For gradient paints) This field contains three vectors, each of which are a position in
         * normalized object space (normalized object space is if the top left corner of the
         * bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
         * corresponds to the start of the gradient (value 0 for the purposes of calculating
         * gradient stops), the second position is the end of the gradient (value 1), and the third
         * handle position determines the width of the gradient (only relevant for non-linear
         * gradients).
         */
        std::unique_ptr<std::vector<struct EffectVector>> gradient_handle_positions;
        /**
         * (For gradient paints) Positions of key points along the gradient axis with the colors
         * anchored there. Colors along the gradient are interpolated smoothly between neighboring
         * gradient stops.
         */
        std::unique_ptr<std::vector<struct ColorStopElement>> gradient_stops;
        /**
         * (For image paints) Image scaling mode
         */
        std::unique_ptr<ScaleMode> scale_mode;
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
     * The type of the node
     */
    enum class RegularPolygonNodeType { BOOLEAN, CANVAS, COMPONENT, DOCUMENT, ELLIPSE, FRAME, GROUP, INSTANCE, LINE, RECTANGLE, REGULAR_POLYGON, SLICE, STAR, TEXT, VECTOR };

    /**
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct RegularPolygonNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         *
         * * INSIDE: draw stroke inside the shape boundary
         * * OUTSIDE: draw stroke outside the shape boundary
         * * CENTER: draw stroke centered along the shape boundary
         */
        StrokeAlign stroke_align;
        /**
         * The weight of strokes on the node
         */
        double stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::vector<struct PaintElement> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        bool is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::vector<struct ExportSettingElement> export_settings;
        /**
         * An array of stroke paints applied to the node
         */
        std::vector<struct PaintElement> strokes;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        bool preserve_ratio;
    };

    /**
     * An ellipse
     *
     * A regular n-sided polygon
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct EllipseNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         *
         * * INSIDE: draw stroke inside the shape boundary
         * * OUTSIDE: draw stroke outside the shape boundary
         * * CENTER: draw stroke centered along the shape boundary
         */
        StrokeAlign stroke_align;
        /**
         * The weight of strokes on the node
         */
        double stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::vector<struct PaintElement> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        bool is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::vector<struct ExportSettingElement> export_settings;
        /**
         * An array of stroke paints applied to the node
         */
        std::vector<struct PaintElement> strokes;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        bool preserve_ratio;
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
    struct LayoutGridElement {
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
        struct EffectColor color;
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
    struct NodeTypeStyle {
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
        std::vector<struct PaintElement> fills;
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
     * An array of canvases attached to the document
     *
     * An array of nodes that are direct children of this node
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are being boolean operated on
     */
    struct NodeNode {
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
        RegularPolygonNodeType type;
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
        std::unique_ptr<struct EffectColor> background_color;
        /**
         * An array of export settings representing images to export from the canvas
         *
         * An array of export settings representing images to export from node
         *
         * A rectangular region of the canvas that can be exported
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct RegularPolygonNodeRectangle> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<struct RegularPolygonNodeLayoutConstraint> constraints;
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
         * Style of text including font family and weight (see type style section for more
         * information)
         */
        std::unique_ptr<struct NodeTypeStyle> style;
        /**
         * Array with same number of elements as characeters in text box, each element is a
         * reference to the styleOverrideTable defined below and maps to the corresponding character
         * in the characters field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::map<std::string, struct NodeTypeStyle>> style_override_table;
        /**
         * ID of component that this instance came from, refers to components table (see endpoints
         * section below)
         */
        std::unique_ptr<std::string> component_id;
    };

    /**
     * An array of nodes that are direct children of this node
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct PurpleNode {
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
        RegularPolygonNodeType type;
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
        std::unique_ptr<struct EffectColor> background_color;
        /**
         * An array of export settings representing images to export from the canvas
         *
         * An array of export settings representing images to export from node
         *
         * A rectangular region of the canvas that can be exported
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct RegularPolygonNodeRectangle> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<struct RegularPolygonNodeLayoutConstraint> constraints;
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
         * Style of text including font family and weight (see type style section for more
         * information)
         */
        std::unique_ptr<struct NodeTypeStyle> style;
        /**
         * Array with same number of elements as characeters in text box, each element is a
         * reference to the styleOverrideTable defined below and maps to the corresponding character
         * in the characters field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::map<std::string, struct NodeTypeStyle>> style_override_table;
        /**
         * ID of component that this instance came from, refers to components table (see endpoints
         * section below)
         */
        std::unique_ptr<std::string> component_id;
    };

    /**
     * A logical grouping of nodes
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct GroupNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::vector<struct LayoutGridElement> layout_grids;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * Background color of the node
         */
        struct EffectColor background_color;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
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
        std::vector<struct ExportSettingElement> export_settings;
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
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct Node {
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
        RegularPolygonNodeType type;
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
        std::unique_ptr<struct EffectColor> background_color;
        /**
         * An array of export settings representing images to export from the canvas
         *
         * An array of export settings representing images to export from node
         *
         * A rectangular region of the canvas that can be exported
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct RegularPolygonNodeRectangle> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<struct RegularPolygonNodeLayoutConstraint> constraints;
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
         * Style of text including font family and weight (see type style section for more
         * information)
         */
        std::unique_ptr<struct NodeTypeStyle> style;
        /**
         * Array with same number of elements as characeters in text box, each element is a
         * reference to the styleOverrideTable defined below and maps to the corresponding character
         * in the characters field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::map<std::string, struct NodeTypeStyle>> style_override_table;
        /**
         * ID of component that this instance came from, refers to components table (see endpoints
         * section below)
         */
        std::unique_ptr<std::string> component_id;
    };

    /**
     * A 2d vector
     */
    struct Vector {
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
     * An RGBA color
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
     * Properties are shared across all nodes
     */
    struct Global {
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
        RegularPolygonNodeType type;
    };

    /**
     * A position color pair representing a gradient stop
     */
    struct ColorStop {
        /**
         * Color attached to corresponding position
         */
        struct EffectColor color;
        /**
         * Value between 0 and 1 representing position along gradient axis
         */
        double position;
    };

    /**
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct VectorNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         *
         * * INSIDE: draw stroke inside the shape boundary
         * * OUTSIDE: draw stroke outside the shape boundary
         * * CENTER: draw stroke centered along the shape boundary
         */
        StrokeAlign stroke_align;
        /**
         * The weight of strokes on the node
         */
        double stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::vector<struct PaintElement> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        bool is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::vector<struct ExportSettingElement> export_settings;
        /**
         * An array of stroke paints applied to the node
         */
        std::vector<struct PaintElement> strokes;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        bool preserve_ratio;
    };

    /**
     * Layout constraint relative to containing Frame
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
     * An array of nodes that are being boolean operated on
     *
     * An array of nodes that are direct children of this node
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct FluffyNode {
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
        RegularPolygonNodeType type;
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
        std::unique_ptr<struct EffectColor> background_color;
        /**
         * An array of export settings representing images to export from the canvas
         *
         * An array of export settings representing images to export from node
         *
         * A rectangular region of the canvas that can be exported
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct RegularPolygonNodeRectangle> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<struct RegularPolygonNodeLayoutConstraint> constraints;
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
         * Style of text including font family and weight (see type style section for more
         * information)
         */
        std::unique_ptr<struct NodeTypeStyle> style;
        /**
         * Array with same number of elements as characeters in text box, each element is a
         * reference to the styleOverrideTable defined below and maps to the corresponding character
         * in the characters field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::map<std::string, struct NodeTypeStyle>> style_override_table;
        /**
         * ID of component that this instance came from, refers to components table (see endpoints
         * section below)
         */
        std::unique_ptr<std::string> component_id;
    };

    /**
     * A group that has a boolean operation applied to it
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct BooleanNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         *
         * * INSIDE: draw stroke inside the shape boundary
         * * OUTSIDE: draw stroke outside the shape boundary
         * * CENTER: draw stroke centered along the shape boundary
         */
        StrokeAlign stroke_align;
        /**
         * The weight of strokes on the node
         */
        double stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::vector<struct PaintElement> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        bool is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::vector<struct ExportSettingElement> export_settings;
        /**
         * An array of stroke paints applied to the node
         */
        std::vector<struct PaintElement> strokes;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        bool preserve_ratio;
        /**
         * An array of nodes that are being boolean operated on
         */
        std::vector<struct FluffyNode> children;
    };

    /**
     * A description of a user
     */
    struct User {
        std::string handle;
        std::string img_url;
    };

    /**
     * A text box
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct TextNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         *
         * * INSIDE: draw stroke inside the shape boundary
         * * OUTSIDE: draw stroke outside the shape boundary
         * * CENTER: draw stroke centered along the shape boundary
         */
        StrokeAlign stroke_align;
        /**
         * The weight of strokes on the node
         */
        double stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::vector<struct PaintElement> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        bool is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::vector<struct ExportSettingElement> export_settings;
        /**
         * An array of stroke paints applied to the node
         */
        std::vector<struct PaintElement> strokes;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        bool preserve_ratio;
        /**
         * Text contained within text box
         */
        std::string characters;
        /**
         * Style of text including font family and weight (see type style section for more
         * information)
         */
        struct NodeTypeStyle style;
        /**
         * Array with same number of elements as characeters in text box, each element is a
         * reference to the styleOverrideTable defined below and maps to the corresponding character
         * in the characters field. Elements with value 0 have the default type style
         */
        std::vector<double> character_style_overrides;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::map<std::string, struct NodeTypeStyle> style_override_table;
    };

    /**
     * An array of nodes that are direct children of this node
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct FrameNodeNode {
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
        RegularPolygonNodeType type;
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
        std::unique_ptr<struct EffectColor> background_color;
        /**
         * An array of export settings representing images to export from the canvas
         *
         * An array of export settings representing images to export from node
         *
         * A rectangular region of the canvas that can be exported
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct RegularPolygonNodeRectangle> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<struct RegularPolygonNodeLayoutConstraint> constraints;
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
         * Style of text including font family and weight (see type style section for more
         * information)
         */
        std::unique_ptr<struct NodeTypeStyle> style;
        /**
         * Array with same number of elements as characeters in text box, each element is a
         * reference to the styleOverrideTable defined below and maps to the corresponding character
         * in the characters field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::map<std::string, struct NodeTypeStyle>> style_override_table;
        /**
         * ID of component that this instance came from, refers to components table (see endpoints
         * section below)
         */
        std::unique_ptr<std::string> component_id;
    };

    /**
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct FrameNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::vector<struct LayoutGridElement> layout_grids;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * Background color of the node
         */
        struct EffectColor background_color;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
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
        std::vector<struct ExportSettingElement> export_settings;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        bool preserve_ratio;
        /**
         * An array of nodes that are direct children of this node
         */
        std::vector<struct FrameNodeNode> children;
    };

    /**
     * A rectangle that expresses a bounding box in absolute coordinates
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
     * Guides to align and place objects within a frame
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
        struct EffectColor color;
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
     * A visual effect such as a shadow or blur
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
        struct EffectColor color;
        /**
         * See type property for effect of this field
         */
        BlendMode blend_mode;
        /**
         * See type property for effect of this field
         */
        struct EffectVector offset;
    };

    /**
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct RectangleNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         *
         * * INSIDE: draw stroke inside the shape boundary
         * * OUTSIDE: draw stroke outside the shape boundary
         * * CENTER: draw stroke centered along the shape boundary
         */
        StrokeAlign stroke_align;
        /**
         * The weight of strokes on the node
         */
        double stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::vector<struct PaintElement> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        bool is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::vector<struct ExportSettingElement> export_settings;
        /**
         * An array of stroke paints applied to the node
         */
        std::vector<struct PaintElement> strokes;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        bool preserve_ratio;
        /**
         * Radius of each corner of the rectangle
         */
        double corner_radius;
    };

    /**
     * A rectangular region of the canvas that can be exported
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct SliceNode {
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
        RegularPolygonNodeType type;
        /**
         * A rectangular region of the canvas that can be exported
         */
        std::vector<struct ExportSettingElement> export_settings;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
    };

    /**
     * A regular star shape
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct StarNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         *
         * * INSIDE: draw stroke inside the shape boundary
         * * OUTSIDE: draw stroke outside the shape boundary
         * * CENTER: draw stroke centered along the shape boundary
         */
        StrokeAlign stroke_align;
        /**
         * The weight of strokes on the node
         */
        double stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::vector<struct PaintElement> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        bool is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::vector<struct ExportSettingElement> export_settings;
        /**
         * An array of stroke paints applied to the node
         */
        std::vector<struct PaintElement> strokes;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        bool preserve_ratio;
    };

    /**
     * A straight line
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct LineNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Where stroke is drawn relative to the vector outline as a string enum
         *
         * * INSIDE: draw stroke inside the shape boundary
         * * OUTSIDE: draw stroke outside the shape boundary
         * * CENTER: draw stroke centered along the shape boundary
         */
        StrokeAlign stroke_align;
        /**
         * The weight of strokes on the node
         */
        double stroke_weight;
        /**
         * An array of fill paints applied to the node
         */
        std::vector<struct PaintElement> fills;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
        /**
         * Does this node mask sibling nodes in front of it?
         */
        bool is_mask;
        /**
         * An array of export settings representing images to export from node
         */
        std::vector<struct ExportSettingElement> export_settings;
        /**
         * An array of stroke paints applied to the node
         */
        std::vector<struct PaintElement> strokes;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        bool preserve_ratio;
    };

    /**
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * A logical grouping of nodes
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct InstanceNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::vector<struct LayoutGridElement> layout_grids;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * Background color of the node
         */
        struct EffectColor background_color;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
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
        std::vector<struct ExportSettingElement> export_settings;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        bool preserve_ratio;
        /**
         * An array of nodes that are direct children of this node
         */
        std::vector<struct PurpleNode> children;
        /**
         * ID of component that this instance came from, refers to components table (see endpoints
         * section below)
         */
        std::string component_id;
    };

    /**
     * Metadata for character formatting
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
        std::vector<struct PaintElement> fills;
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
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct TentacledNode {
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
        RegularPolygonNodeType type;
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
        std::unique_ptr<struct EffectColor> background_color;
        /**
         * An array of export settings representing images to export from the canvas
         *
         * An array of export settings representing images to export from node
         *
         * A rectangular region of the canvas that can be exported
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct RegularPolygonNodeRectangle> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<struct RegularPolygonNodeLayoutConstraint> constraints;
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
         * Style of text including font family and weight (see type style section for more
         * information)
         */
        std::unique_ptr<struct NodeTypeStyle> style;
        /**
         * Array with same number of elements as characeters in text box, each element is a
         * reference to the styleOverrideTable defined below and maps to the corresponding character
         * in the characters field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::map<std::string, struct NodeTypeStyle>> style_override_table;
        /**
         * ID of component that this instance came from, refers to components table (see endpoints
         * section below)
         */
        std::unique_ptr<std::string> component_id;
    };

    /**
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct CanvasNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of top level layers on the canvas
         */
        std::vector<struct TentacledNode> children;
        /**
         * Background color of the canvas
         */
        struct EffectColor background_color;
        /**
         * An array of export settings representing images to export from the canvas
         */
        std::vector<struct ExportSettingElement> export_settings;
    };

    /**
     * Format and size to export an asset at
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
        struct ExportSettingConstraint constraint;
    };

    /**
     * An array of canvases attached to the document
     *
     * An array of nodes that are direct children of this node
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct StickyNode {
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
        RegularPolygonNodeType type;
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
        std::unique_ptr<struct EffectColor> background_color;
        /**
         * An array of export settings representing images to export from the canvas
         *
         * An array of export settings representing images to export from node
         *
         * A rectangular region of the canvas that can be exported
         */
        std::unique_ptr<std::vector<struct ExportSettingElement>> export_settings;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::unique_ptr<std::vector<struct EffectElement>> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::unique_ptr<std::vector<struct LayoutGridElement>> layout_grids;
        /**
         * Opacity of the node
         */
        std::unique_ptr<double> opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        std::unique_ptr<struct RegularPolygonNodeRectangle> absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<BlendMode> blend_mode;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        std::unique_ptr<struct RegularPolygonNodeLayoutConstraint> constraints;
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
         * Style of text including font family and weight (see type style section for more
         * information)
         */
        std::unique_ptr<struct NodeTypeStyle> style;
        /**
         * Array with same number of elements as characeters in text box, each element is a
         * reference to the styleOverrideTable defined below and maps to the corresponding character
         * in the characters field. Elements with value 0 have the default type style
         */
        std::unique_ptr<std::vector<double>> character_style_overrides;
        /**
         * Map from ID to TypeStyle for looking up style overrides
         */
        std::unique_ptr<std::map<std::string, struct NodeTypeStyle>> style_override_table;
        /**
         * ID of component that this instance came from, refers to components table (see endpoints
         * section below)
         */
        std::unique_ptr<std::string> component_id;
    };

    /**
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * A logical grouping of nodes
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * A node that can have instances created of it that share the same properties
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct DocumentNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of canvases attached to the document
         */
        std::vector<struct StickyNode> children;
    };

    /**
     * Sizing constraint for exports
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
     * A solid color, gradient, or image texture that can be applied as fills or strokes
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
        std::unique_ptr<struct EffectColor> color;
        /**
         * (For gradient paints) This field contains three vectors, each of which are a position in
         * normalized object space (normalized object space is if the top left corner of the
         * bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
         * corresponds to the start of the gradient (value 0 for the purposes of calculating
         * gradient stops), the second position is the end of the gradient (value 1), and the third
         * handle position determines the width of the gradient (only relevant for non-linear
         * gradients).
         */
        std::unique_ptr<std::vector<struct EffectVector>> gradient_handle_positions;
        /**
         * (For gradient paints) Positions of key points along the gradient axis with the colors
         * anchored there. Colors along the gradient are interpolated smoothly between neighboring
         * gradient stops.
         */
        std::unique_ptr<std::vector<struct ColorStopElement>> gradient_stops;
        /**
         * (For image paints) Image scaling mode
         */
        std::unique_ptr<ScaleMode> scale_mode;
    };

    /**
     * A node that can have instances created of it that share the same properties
     *
     * A logical grouping of nodes
     *
     * A regular n-sided polygon
     *
     * An ellipse
     *
     * An array of nodes that are direct children of this node
     *
     * A group that has a boolean operation applied to it
     *
     * A regular star shape
     *
     * A straight line
     *
     * A text box
     *
     * A rectangular region of the canvas that can be exported
     *
     * An instance of a component, changes to the component result in the same changes applied
     * to the instance
     *
     * Properties are shared across all nodes
     *
     * See type property for effect of this field
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * X coordinate of the vector
     *
     * Y coordinate of the vector
     *
     * Opacity of the node
     *
     * The weight of strokes on the node
     *
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     *
     * Value between 0 and 1 representing position along gradient axis
     *
     * X coordinate of top left corner of the rectangle
     *
     * Y coordinate of top left corner of the rectangle
     *
     * Width of the rectangle
     *
     * Height of the rectangle
     *
     * Width of column grid or height of row grid or square grid spacing
     *
     * Spacing in between columns and rows
     *
     * Spacing before the first column or row
     *
     * Number of columns or rows
     *
     * Radius of each corner of the rectangle
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
     * Is the paint enabled?
     *
     * Does this node mask sibling nodes in front of it?
     *
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     *
     * Is the grid currently visible?
     *
     * Does this node clip content outside of its bounds?
     *
     * Is text italicized?
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Node ID of node to transition to in prototyping
     *
     * File suffix to append to all filenames
     *
     * Text contained within text box
     *
     * PostScript font name
     *
     * Font family of text (standard name)
     *
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct ComponentNode {
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
        RegularPolygonNodeType type;
        /**
         * An array of effects attached to this node (see effects section for more details)
         */
        std::vector<struct EffectElement> effects;
        /**
         * An array of layout grids attached to this node (see layout grids section for more
         * details). GROUP nodes do not have this attribute
         */
        std::vector<struct LayoutGridElement> layout_grids;
        /**
         * Opacity of the node
         */
        double opacity;
        /**
         * Bounding box of the node in absolute space coordinates
         */
        struct RegularPolygonNodeRectangle absolute_bounding_box;
        /**
         * Node ID of node to transition to in prototyping
         */
        std::unique_ptr<std::string> transition_node_id;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        BlendMode blend_mode;
        /**
         * Background color of the node
         */
        struct EffectColor background_color;
        /**
         * How this node blends with nodes behind it in the scene (see blend mode section for more
         * details)
         */
        struct RegularPolygonNodeLayoutConstraint constraints;
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
        std::vector<struct ExportSettingElement> export_settings;
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
     * A description of a user
     *
     * The user who left the comment
     */
    struct CommentUser {
        std::string handle;
        std::string img_url;
    };

    /**
     * A comment or reply left by a user
     */
    struct Comment {
        /**
         * Unique identifier for comment
         */
        std::string id;
        /**
         * The file in which the comment lives
         */
        std::string file_key;
        /**
         * If present, the id of the comment to which this is the reply
         */
        std::unique_ptr<std::string> parent_id;
        /**
         * The user who left the comment
         */
        struct CommentUser user;
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

    inline void from_json(const json& _j, struct quicktype::RegularPolygonNodeRectangle& _x) {
        _x.x = _j.at("x").get<double>();
        _x.y = _j.at("y").get<double>();
        _x.width = _j.at("width").get<double>();
        _x.height = _j.at("height").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::RegularPolygonNodeRectangle& _x) {
        _j = json::object();
        _j["x"] = _x.x;
        _j["y"] = _x.y;
        _j["width"] = _x.width;
        _j["height"] = _x.height;
    }

    inline void from_json(const json& _j, struct quicktype::RegularPolygonNodeLayoutConstraint& _x) {
        _x.vertical = _j.at("vertical").get<quicktype::Vertical>();
        _x.horizontal = _j.at("horizontal").get<quicktype::Horizontal>();
    }

    inline void to_json(json& _j, const struct quicktype::RegularPolygonNodeLayoutConstraint& _x) {
        _j = json::object();
        _j["vertical"] = _x.vertical;
        _j["horizontal"] = _x.horizontal;
    }

    inline void from_json(const json& _j, struct quicktype::EffectColor& _x) {
        _x.r = _j.at("r").get<double>();
        _x.g = _j.at("g").get<double>();
        _x.b = _j.at("b").get<double>();
        _x.a = _j.at("a").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::EffectColor& _x) {
        _j = json::object();
        _j["r"] = _x.r;
        _j["g"] = _x.g;
        _j["b"] = _x.b;
        _j["a"] = _x.a;
    }

    inline void from_json(const json& _j, struct quicktype::EffectVector& _x) {
        _x.x = _j.at("x").get<double>();
        _x.y = _j.at("y").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::EffectVector& _x) {
        _j = json::object();
        _j["x"] = _x.x;
        _j["y"] = _x.y;
    }

    inline void from_json(const json& _j, struct quicktype::EffectElement& _x) {
        _x.type = _j.at("type").get<quicktype::EffectType>();
        _x.radius = _j.at("radius").get<double>();
        _x.visible = _j.at("visible").get<bool>();
        _x.color = _j.at("color").get<struct quicktype::EffectColor>();
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.offset = _j.at("offset").get<struct quicktype::EffectVector>();
    }

    inline void to_json(json& _j, const struct quicktype::EffectElement& _x) {
        _j = json::object();
        _j["type"] = _x.type;
        _j["radius"] = _x.radius;
        _j["visible"] = _x.visible;
        _j["color"] = _x.color;
        _j["blendMode"] = _x.blend_mode;
        _j["offset"] = _x.offset;
    }

    inline void from_json(const json& _j, struct quicktype::ExportSettingConstraint& _x) {
        _x.type = _j.at("type").get<quicktype::ConstraintType>();
        _x.value = quicktype::get_optional<double>(_j, "value");
    }

    inline void to_json(json& _j, const struct quicktype::ExportSettingConstraint& _x) {
        _j = json::object();
        _j["type"] = _x.type;
        _j["value"] = _x.value;
    }

    inline void from_json(const json& _j, struct quicktype::ExportSettingElement& _x) {
        _x.suffix = _j.at("suffix").get<std::string>();
        _x.format = _j.at("format").get<quicktype::Format>();
        _x.constraint = _j.at("constraint").get<struct quicktype::ExportSettingConstraint>();
    }

    inline void to_json(json& _j, const struct quicktype::ExportSettingElement& _x) {
        _j = json::object();
        _j["suffix"] = _x.suffix;
        _j["format"] = _x.format;
        _j["constraint"] = _x.constraint;
    }

    inline void from_json(const json& _j, struct quicktype::ColorStopElement& _x) {
        _x.color = _j.at("color").get<struct quicktype::EffectColor>();
        _x.position = _j.at("position").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::ColorStopElement& _x) {
        _j = json::object();
        _j["color"] = _x.color;
        _j["position"] = _x.position;
    }

    inline void from_json(const json& _j, struct quicktype::PaintElement& _x) {
        _x.type = _j.at("type").get<quicktype::PaintType>();
        _x.visible = _j.at("visible").get<bool>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.color = quicktype::get_optional<struct quicktype::EffectColor>(_j, "color");
        _x.gradient_handle_positions = quicktype::get_optional<std::vector<struct quicktype::EffectVector>>(_j, "gradientHandlePositions");
        _x.gradient_stops = quicktype::get_optional<std::vector<struct quicktype::ColorStopElement>>(_j, "gradientStops");
        _x.scale_mode = quicktype::get_optional<quicktype::ScaleMode>(_j, "scaleMode");
    }

    inline void to_json(json& _j, const struct quicktype::PaintElement& _x) {
        _j = json::object();
        _j["type"] = _x.type;
        _j["visible"] = _x.visible;
        _j["opacity"] = _x.opacity;
        _j["color"] = _x.color;
        _j["gradientHandlePositions"] = _x.gradient_handle_positions;
        _j["gradientStops"] = _x.gradient_stops;
        _j["scaleMode"] = _x.scale_mode;
    }

    inline void from_json(const json& _j, struct quicktype::RegularPolygonNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.stroke_align = _j.at("strokeAlign").get<quicktype::StrokeAlign>();
        _x.stroke_weight = _j.at("strokeWeight").get<double>();
        _x.fills = _j.at("fills").get<std::vector<struct quicktype::PaintElement>>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.strokes = _j.at("strokes").get<std::vector<struct quicktype::PaintElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
    }

    inline void to_json(json& _j, const struct quicktype::RegularPolygonNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
    }

    inline void from_json(const json& _j, struct quicktype::EllipseNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.stroke_align = _j.at("strokeAlign").get<quicktype::StrokeAlign>();
        _x.stroke_weight = _j.at("strokeWeight").get<double>();
        _x.fills = _j.at("fills").get<std::vector<struct quicktype::PaintElement>>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.strokes = _j.at("strokes").get<std::vector<struct quicktype::PaintElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
    }

    inline void to_json(json& _j, const struct quicktype::EllipseNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
    }

    inline void from_json(const json& _j, struct quicktype::LayoutGridElement& _x) {
        _x.pattern = _j.at("pattern").get<quicktype::Pattern>();
        _x.section_size = _j.at("sectionSize").get<double>();
        _x.visible = _j.at("visible").get<bool>();
        _x.color = _j.at("color").get<struct quicktype::EffectColor>();
        _x.alignment = _j.at("alignment").get<quicktype::Alignment>();
        _x.gutter_size = _j.at("gutterSize").get<double>();
        _x.offset = _j.at("offset").get<double>();
        _x.count = _j.at("count").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::LayoutGridElement& _x) {
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

    inline void from_json(const json& _j, struct quicktype::NodeTypeStyle& _x) {
        _x.line_height_px = _j.at("lineHeightPx").get<double>();
        _x.font_post_script_name = _j.at("fontPostScriptName").get<std::string>();
        _x.font_weight = _j.at("fontWeight").get<double>();
        _x.line_height_percent = _j.at("lineHeightPercent").get<double>();
        _x.text_align_vertical = _j.at("textAlignVertical").get<quicktype::TextAlignVertical>();
        _x.font_size = _j.at("fontSize").get<double>();
        _x.italic = _j.at("italic").get<bool>();
        _x.fills = _j.at("fills").get<std::vector<struct quicktype::PaintElement>>();
        _x.font_family = _j.at("fontFamily").get<std::string>();
        _x.text_align_horizontal = _j.at("textAlignHorizontal").get<quicktype::TextAlignHorizontal>();
        _x.letter_spacing = _j.at("letterSpacing").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::NodeTypeStyle& _x) {
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
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::EffectColor>(_j, "backgroundColor");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::RegularPolygonNodeRectangle>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::RegularPolygonNodeLayoutConstraint>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.corner_radius = quicktype::get_optional<double>(_j, "cornerRadius");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.style = quicktype::get_optional<struct quicktype::NodeTypeStyle>(_j, "style");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
        _x.style_override_table = quicktype::get_optional<std::map<std::string, struct quicktype::NodeTypeStyle>>(_j, "styleOverrideTable");
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
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::PurpleNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::EffectColor>(_j, "backgroundColor");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::RegularPolygonNodeRectangle>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::RegularPolygonNodeLayoutConstraint>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.corner_radius = quicktype::get_optional<double>(_j, "cornerRadius");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.style = quicktype::get_optional<struct quicktype::NodeTypeStyle>(_j, "style");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
        _x.style_override_table = quicktype::get_optional<std::map<std::string, struct quicktype::NodeTypeStyle>>(_j, "styleOverrideTable");
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
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::GroupNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.layout_grids = _j.at("layoutGrids").get<std::vector<struct quicktype::LayoutGridElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.background_color = _j.at("backgroundColor").get<struct quicktype::EffectColor>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.clips_content = _j.at("clipsContent").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
        _x.children = _j.at("children").get<std::vector<struct quicktype::PurpleNode>>();
    }

    inline void to_json(json& _j, const struct quicktype::GroupNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["backgroundColor"] = _x.background_color;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["exportSettings"] = _x.export_settings;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, struct quicktype::Node& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::EffectColor>(_j, "backgroundColor");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::RegularPolygonNodeRectangle>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::RegularPolygonNodeLayoutConstraint>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.corner_radius = quicktype::get_optional<double>(_j, "cornerRadius");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.style = quicktype::get_optional<struct quicktype::NodeTypeStyle>(_j, "style");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
        _x.style_override_table = quicktype::get_optional<std::map<std::string, struct quicktype::NodeTypeStyle>>(_j, "styleOverrideTable");
        _x.component_id = quicktype::get_optional<std::string>(_j, "componentId");
    }

    inline void to_json(json& _j, const struct quicktype::Node& _x) {
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
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::Vector& _x) {
        _x.x = _j.at("x").get<double>();
        _x.y = _j.at("y").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::Vector& _x) {
        _j = json::object();
        _j["x"] = _x.x;
        _j["y"] = _x.y;
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

    inline void from_json(const json& _j, struct quicktype::Global& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
    }

    inline void to_json(json& _j, const struct quicktype::Global& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
    }

    inline void from_json(const json& _j, struct quicktype::ColorStop& _x) {
        _x.color = _j.at("color").get<struct quicktype::EffectColor>();
        _x.position = _j.at("position").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::ColorStop& _x) {
        _j = json::object();
        _j["color"] = _x.color;
        _j["position"] = _x.position;
    }

    inline void from_json(const json& _j, struct quicktype::VectorNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.stroke_align = _j.at("strokeAlign").get<quicktype::StrokeAlign>();
        _x.stroke_weight = _j.at("strokeWeight").get<double>();
        _x.fills = _j.at("fills").get<std::vector<struct quicktype::PaintElement>>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.strokes = _j.at("strokes").get<std::vector<struct quicktype::PaintElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
    }

    inline void to_json(json& _j, const struct quicktype::VectorNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
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

    inline void from_json(const json& _j, struct quicktype::FluffyNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::EffectColor>(_j, "backgroundColor");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::RegularPolygonNodeRectangle>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::RegularPolygonNodeLayoutConstraint>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.corner_radius = quicktype::get_optional<double>(_j, "cornerRadius");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.style = quicktype::get_optional<struct quicktype::NodeTypeStyle>(_j, "style");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
        _x.style_override_table = quicktype::get_optional<std::map<std::string, struct quicktype::NodeTypeStyle>>(_j, "styleOverrideTable");
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
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::BooleanNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.stroke_align = _j.at("strokeAlign").get<quicktype::StrokeAlign>();
        _x.stroke_weight = _j.at("strokeWeight").get<double>();
        _x.fills = _j.at("fills").get<std::vector<struct quicktype::PaintElement>>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.strokes = _j.at("strokes").get<std::vector<struct quicktype::PaintElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
        _x.children = _j.at("children").get<std::vector<struct quicktype::FluffyNode>>();
    }

    inline void to_json(json& _j, const struct quicktype::BooleanNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, struct quicktype::User& _x) {
        _x.handle = _j.at("handle").get<std::string>();
        _x.img_url = _j.at("img_url").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::User& _x) {
        _j = json::object();
        _j["handle"] = _x.handle;
        _j["img_url"] = _x.img_url;
    }

    inline void from_json(const json& _j, struct quicktype::TextNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.stroke_align = _j.at("strokeAlign").get<quicktype::StrokeAlign>();
        _x.stroke_weight = _j.at("strokeWeight").get<double>();
        _x.fills = _j.at("fills").get<std::vector<struct quicktype::PaintElement>>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.strokes = _j.at("strokes").get<std::vector<struct quicktype::PaintElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
        _x.characters = _j.at("characters").get<std::string>();
        _x.style = _j.at("style").get<struct quicktype::NodeTypeStyle>();
        _x.character_style_overrides = _j.at("characterStyleOverrides").get<std::vector<double>>();
        _x.style_override_table = _j.at("styleOverrideTable").get<std::map<std::string, struct quicktype::NodeTypeStyle>>();
    }

    inline void to_json(json& _j, const struct quicktype::TextNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["characters"] = _x.characters;
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["styleOverrideTable"] = _x.style_override_table;
    }

    inline void from_json(const json& _j, struct quicktype::FrameNodeNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::EffectColor>(_j, "backgroundColor");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::RegularPolygonNodeRectangle>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::RegularPolygonNodeLayoutConstraint>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.corner_radius = quicktype::get_optional<double>(_j, "cornerRadius");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.style = quicktype::get_optional<struct quicktype::NodeTypeStyle>(_j, "style");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
        _x.style_override_table = quicktype::get_optional<std::map<std::string, struct quicktype::NodeTypeStyle>>(_j, "styleOverrideTable");
        _x.component_id = quicktype::get_optional<std::string>(_j, "componentId");
    }

    inline void to_json(json& _j, const struct quicktype::FrameNodeNode& _x) {
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
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::FrameNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.layout_grids = _j.at("layoutGrids").get<std::vector<struct quicktype::LayoutGridElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.background_color = _j.at("backgroundColor").get<struct quicktype::EffectColor>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.clips_content = _j.at("clipsContent").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
        _x.children = _j.at("children").get<std::vector<struct quicktype::FrameNodeNode>>();
    }

    inline void to_json(json& _j, const struct quicktype::FrameNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["backgroundColor"] = _x.background_color;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["exportSettings"] = _x.export_settings;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
    }

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

    inline void from_json(const json& _j, struct quicktype::LayoutGrid& _x) {
        _x.pattern = _j.at("pattern").get<quicktype::Pattern>();
        _x.section_size = _j.at("sectionSize").get<double>();
        _x.visible = _j.at("visible").get<bool>();
        _x.color = _j.at("color").get<struct quicktype::EffectColor>();
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

    inline void from_json(const json& _j, struct quicktype::Effect& _x) {
        _x.type = _j.at("type").get<quicktype::EffectType>();
        _x.radius = _j.at("radius").get<double>();
        _x.visible = _j.at("visible").get<bool>();
        _x.color = _j.at("color").get<struct quicktype::EffectColor>();
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.offset = _j.at("offset").get<struct quicktype::EffectVector>();
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

    inline void from_json(const json& _j, struct quicktype::RectangleNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.stroke_align = _j.at("strokeAlign").get<quicktype::StrokeAlign>();
        _x.stroke_weight = _j.at("strokeWeight").get<double>();
        _x.fills = _j.at("fills").get<std::vector<struct quicktype::PaintElement>>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.strokes = _j.at("strokes").get<std::vector<struct quicktype::PaintElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
        _x.corner_radius = _j.at("cornerRadius").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::RectangleNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["cornerRadius"] = _x.corner_radius;
    }

    inline void from_json(const json& _j, struct quicktype::SliceNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
    }

    inline void to_json(json& _j, const struct quicktype::SliceNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["exportSettings"] = _x.export_settings;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
    }

    inline void from_json(const json& _j, struct quicktype::StarNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.stroke_align = _j.at("strokeAlign").get<quicktype::StrokeAlign>();
        _x.stroke_weight = _j.at("strokeWeight").get<double>();
        _x.fills = _j.at("fills").get<std::vector<struct quicktype::PaintElement>>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.strokes = _j.at("strokes").get<std::vector<struct quicktype::PaintElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
    }

    inline void to_json(json& _j, const struct quicktype::StarNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
    }

    inline void from_json(const json& _j, struct quicktype::LineNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.stroke_align = _j.at("strokeAlign").get<quicktype::StrokeAlign>();
        _x.stroke_weight = _j.at("strokeWeight").get<double>();
        _x.fills = _j.at("fills").get<std::vector<struct quicktype::PaintElement>>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.strokes = _j.at("strokes").get<std::vector<struct quicktype::PaintElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
    }

    inline void to_json(json& _j, const struct quicktype::LineNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["opacity"] = _x.opacity;
        _j["strokeAlign"] = _x.stroke_align;
        _j["strokeWeight"] = _x.stroke_weight;
        _j["fills"] = _x.fills;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["exportSettings"] = _x.export_settings;
        _j["strokes"] = _x.strokes;
        _j["preserveRatio"] = _x.preserve_ratio;
    }

    inline void from_json(const json& _j, struct quicktype::InstanceNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.layout_grids = _j.at("layoutGrids").get<std::vector<struct quicktype::LayoutGridElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.background_color = _j.at("backgroundColor").get<struct quicktype::EffectColor>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.clips_content = _j.at("clipsContent").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
        _x.children = _j.at("children").get<std::vector<struct quicktype::PurpleNode>>();
        _x.component_id = _j.at("componentId").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::InstanceNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["backgroundColor"] = _x.background_color;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["exportSettings"] = _x.export_settings;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::TypeStyle& _x) {
        _x.line_height_px = _j.at("lineHeightPx").get<double>();
        _x.font_post_script_name = _j.at("fontPostScriptName").get<std::string>();
        _x.font_weight = _j.at("fontWeight").get<double>();
        _x.line_height_percent = _j.at("lineHeightPercent").get<double>();
        _x.text_align_vertical = _j.at("textAlignVertical").get<quicktype::TextAlignVertical>();
        _x.font_size = _j.at("fontSize").get<double>();
        _x.italic = _j.at("italic").get<bool>();
        _x.fills = _j.at("fills").get<std::vector<struct quicktype::PaintElement>>();
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

    inline void from_json(const json& _j, struct quicktype::TentacledNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::EffectColor>(_j, "backgroundColor");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::RegularPolygonNodeRectangle>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::RegularPolygonNodeLayoutConstraint>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.corner_radius = quicktype::get_optional<double>(_j, "cornerRadius");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.style = quicktype::get_optional<struct quicktype::NodeTypeStyle>(_j, "style");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
        _x.style_override_table = quicktype::get_optional<std::map<std::string, struct quicktype::NodeTypeStyle>>(_j, "styleOverrideTable");
        _x.component_id = quicktype::get_optional<std::string>(_j, "componentId");
    }

    inline void to_json(json& _j, const struct quicktype::TentacledNode& _x) {
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
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::CanvasNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.children = _j.at("children").get<std::vector<struct quicktype::TentacledNode>>();
        _x.background_color = _j.at("backgroundColor").get<struct quicktype::EffectColor>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
    }

    inline void to_json(json& _j, const struct quicktype::CanvasNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
        _j["backgroundColor"] = _x.background_color;
        _j["exportSettings"] = _x.export_settings;
    }

    inline void from_json(const json& _j, struct quicktype::ExportSetting& _x) {
        _x.suffix = _j.at("suffix").get<std::string>();
        _x.format = _j.at("format").get<quicktype::Format>();
        _x.constraint = _j.at("constraint").get<struct quicktype::ExportSettingConstraint>();
    }

    inline void to_json(json& _j, const struct quicktype::ExportSetting& _x) {
        _j = json::object();
        _j["suffix"] = _x.suffix;
        _j["format"] = _x.format;
        _j["constraint"] = _x.constraint;
    }

    inline void from_json(const json& _j, struct quicktype::StickyNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::EffectColor>(_j, "backgroundColor");
        _x.export_settings = quicktype::get_optional<std::vector<struct quicktype::ExportSettingElement>>(_j, "exportSettings");
        _x.effects = quicktype::get_optional<std::vector<struct quicktype::EffectElement>>(_j, "effects");
        _x.layout_grids = quicktype::get_optional<std::vector<struct quicktype::LayoutGridElement>>(_j, "layoutGrids");
        _x.opacity = quicktype::get_optional<double>(_j, "opacity");
        _x.absolute_bounding_box = quicktype::get_optional<struct quicktype::RegularPolygonNodeRectangle>(_j, "absoluteBoundingBox");
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = quicktype::get_optional<quicktype::BlendMode>(_j, "blendMode");
        _x.constraints = quicktype::get_optional<struct quicktype::RegularPolygonNodeLayoutConstraint>(_j, "constraints");
        _x.is_mask = quicktype::get_optional<bool>(_j, "isMask");
        _x.clips_content = quicktype::get_optional<bool>(_j, "clipsContent");
        _x.preserve_ratio = quicktype::get_optional<bool>(_j, "preserveRatio");
        _x.stroke_align = quicktype::get_optional<quicktype::StrokeAlign>(_j, "strokeAlign");
        _x.stroke_weight = quicktype::get_optional<double>(_j, "strokeWeight");
        _x.fills = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "fills");
        _x.strokes = quicktype::get_optional<std::vector<struct quicktype::PaintElement>>(_j, "strokes");
        _x.corner_radius = quicktype::get_optional<double>(_j, "cornerRadius");
        _x.characters = quicktype::get_optional<std::string>(_j, "characters");
        _x.style = quicktype::get_optional<struct quicktype::NodeTypeStyle>(_j, "style");
        _x.character_style_overrides = quicktype::get_optional<std::vector<double>>(_j, "characterStyleOverrides");
        _x.style_override_table = quicktype::get_optional<std::map<std::string, struct quicktype::NodeTypeStyle>>(_j, "styleOverrideTable");
        _x.component_id = quicktype::get_optional<std::string>(_j, "componentId");
    }

    inline void to_json(json& _j, const struct quicktype::StickyNode& _x) {
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
        _j["style"] = _x.style;
        _j["characterStyleOverrides"] = _x.character_style_overrides;
        _j["styleOverrideTable"] = _x.style_override_table;
        _j["componentId"] = _x.component_id;
    }

    inline void from_json(const json& _j, struct quicktype::DocumentNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.children = _j.at("children").get<std::vector<struct quicktype::StickyNode>>();
    }

    inline void to_json(json& _j, const struct quicktype::DocumentNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
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

    inline void from_json(const json& _j, struct quicktype::Paint& _x) {
        _x.type = _j.at("type").get<quicktype::PaintType>();
        _x.visible = _j.at("visible").get<bool>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.color = quicktype::get_optional<struct quicktype::EffectColor>(_j, "color");
        _x.gradient_handle_positions = quicktype::get_optional<std::vector<struct quicktype::EffectVector>>(_j, "gradientHandlePositions");
        _x.gradient_stops = quicktype::get_optional<std::vector<struct quicktype::ColorStopElement>>(_j, "gradientStops");
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

    inline void from_json(const json& _j, struct quicktype::ComponentNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = _j.at("visible").get<bool>();
        _x.type = _j.at("type").get<quicktype::RegularPolygonNodeType>();
        _x.effects = _j.at("effects").get<std::vector<struct quicktype::EffectElement>>();
        _x.layout_grids = _j.at("layoutGrids").get<std::vector<struct quicktype::LayoutGridElement>>();
        _x.opacity = _j.at("opacity").get<double>();
        _x.absolute_bounding_box = _j.at("absoluteBoundingBox").get<struct quicktype::RegularPolygonNodeRectangle>();
        _x.transition_node_id = quicktype::get_optional<std::string>(_j, "transitionNodeID");
        _x.blend_mode = _j.at("blendMode").get<quicktype::BlendMode>();
        _x.background_color = _j.at("backgroundColor").get<struct quicktype::EffectColor>();
        _x.constraints = _j.at("constraints").get<struct quicktype::RegularPolygonNodeLayoutConstraint>();
        _x.is_mask = _j.at("isMask").get<bool>();
        _x.clips_content = _j.at("clipsContent").get<bool>();
        _x.export_settings = _j.at("exportSettings").get<std::vector<struct quicktype::ExportSettingElement>>();
        _x.preserve_ratio = _j.at("preserveRatio").get<bool>();
        _x.children = _j.at("children").get<std::vector<struct quicktype::PurpleNode>>();
    }

    inline void to_json(json& _j, const struct quicktype::ComponentNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["effects"] = _x.effects;
        _j["layoutGrids"] = _x.layout_grids;
        _j["opacity"] = _x.opacity;
        _j["absoluteBoundingBox"] = _x.absolute_bounding_box;
        _j["transitionNodeID"] = _x.transition_node_id;
        _j["blendMode"] = _x.blend_mode;
        _j["backgroundColor"] = _x.background_color;
        _j["constraints"] = _x.constraints;
        _j["isMask"] = _x.is_mask;
        _j["clipsContent"] = _x.clips_content;
        _j["exportSettings"] = _x.export_settings;
        _j["preserveRatio"] = _x.preserve_ratio;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, struct quicktype::CommentUser& _x) {
        _x.handle = _j.at("handle").get<std::string>();
        _x.img_url = _j.at("img_url").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::CommentUser& _x) {
        _j = json::object();
        _j["handle"] = _x.handle;
        _j["img_url"] = _x.img_url;
    }

    inline void from_json(const json& _j, struct quicktype::Comment& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.file_key = _j.at("file_key").get<std::string>();
        _x.parent_id = quicktype::get_optional<std::string>(_j, "parent_id");
        _x.user = _j.at("user").get<struct quicktype::CommentUser>();
    }

    inline void to_json(json& _j, const struct quicktype::Comment& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["file_key"] = _x.file_key;
        _j["parent_id"] = _x.parent_id;
        _j["user"] = _x.user;
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

    inline void from_json(const json& _j, quicktype::RegularPolygonNodeType& _x) {
        if (_j == "BOOLEAN") _x = quicktype::RegularPolygonNodeType::BOOLEAN;
        else if (_j == "CANVAS") _x = quicktype::RegularPolygonNodeType::CANVAS;
        else if (_j == "COMPONENT") _x = quicktype::RegularPolygonNodeType::COMPONENT;
        else if (_j == "DOCUMENT") _x = quicktype::RegularPolygonNodeType::DOCUMENT;
        else if (_j == "ELLIPSE") _x = quicktype::RegularPolygonNodeType::ELLIPSE;
        else if (_j == "FRAME") _x = quicktype::RegularPolygonNodeType::FRAME;
        else if (_j == "GROUP") _x = quicktype::RegularPolygonNodeType::GROUP;
        else if (_j == "INSTANCE") _x = quicktype::RegularPolygonNodeType::INSTANCE;
        else if (_j == "LINE") _x = quicktype::RegularPolygonNodeType::LINE;
        else if (_j == "RECTANGLE") _x = quicktype::RegularPolygonNodeType::RECTANGLE;
        else if (_j == "REGULAR_POLYGON") _x = quicktype::RegularPolygonNodeType::REGULAR_POLYGON;
        else if (_j == "SLICE") _x = quicktype::RegularPolygonNodeType::SLICE;
        else if (_j == "STAR") _x = quicktype::RegularPolygonNodeType::STAR;
        else if (_j == "TEXT") _x = quicktype::RegularPolygonNodeType::TEXT;
        else if (_j == "VECTOR") _x = quicktype::RegularPolygonNodeType::VECTOR;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::RegularPolygonNodeType& _x) {
        switch (_x) {
            case quicktype::RegularPolygonNodeType::BOOLEAN: _j = "BOOLEAN"; break;
            case quicktype::RegularPolygonNodeType::CANVAS: _j = "CANVAS"; break;
            case quicktype::RegularPolygonNodeType::COMPONENT: _j = "COMPONENT"; break;
            case quicktype::RegularPolygonNodeType::DOCUMENT: _j = "DOCUMENT"; break;
            case quicktype::RegularPolygonNodeType::ELLIPSE: _j = "ELLIPSE"; break;
            case quicktype::RegularPolygonNodeType::FRAME: _j = "FRAME"; break;
            case quicktype::RegularPolygonNodeType::GROUP: _j = "GROUP"; break;
            case quicktype::RegularPolygonNodeType::INSTANCE: _j = "INSTANCE"; break;
            case quicktype::RegularPolygonNodeType::LINE: _j = "LINE"; break;
            case quicktype::RegularPolygonNodeType::RECTANGLE: _j = "RECTANGLE"; break;
            case quicktype::RegularPolygonNodeType::REGULAR_POLYGON: _j = "REGULAR_POLYGON"; break;
            case quicktype::RegularPolygonNodeType::SLICE: _j = "SLICE"; break;
            case quicktype::RegularPolygonNodeType::STAR: _j = "STAR"; break;
            case quicktype::RegularPolygonNodeType::TEXT: _j = "TEXT"; break;
            case quicktype::RegularPolygonNodeType::VECTOR: _j = "VECTOR"; break;
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
}

#endif
