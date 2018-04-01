package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * An array of fill paints applied to the node
 * A solid color, gradient, or image texture that can be applied as fills or strokes
 * An array of stroke paints applied to the node
 * Paints applied to characters
 */
public class Paint {
    private PaintType type;
    private boolean visible;
    private double opacity;
    private Color color;
    private Vector2[] gradientHandlePositions;
    private ColorStop[] gradientStops;
    private String scaleMode;

    /**
     * Type of paint as a string enum
     */
    @JsonProperty("type")
    public PaintType getType() { return type; }
    @JsonProperty("type")
    public void setType(PaintType value) { this.type = value; }

    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    @JsonProperty("visible")
    public boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(boolean value) { this.visible = value; }

    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    @JsonProperty("opacity")
    public double getOpacity() { return opacity; }
    @JsonProperty("opacity")
    public void setOpacity(double value) { this.opacity = value; }

    /**
     * Background color of the node
     * An RGBA color
     * Solid color of the paint
     * Color attached to corresponding position
     * Color of the grid
     * Background color of the canvas
     */
    @JsonProperty("color")
    public Color getColor() { return color; }
    @JsonProperty("color")
    public void setColor(Color value) { this.color = value; }

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
    @JsonProperty("gradientHandlePositions")
    public Vector2[] getGradientHandlePositions() { return gradientHandlePositions; }
    @JsonProperty("gradientHandlePositions")
    public void setGradientHandlePositions(Vector2[] value) { this.gradientHandlePositions = value; }

    /**
     * Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly
     * between neighboring gradient stops.
     */
    @JsonProperty("gradientStops")
    public ColorStop[] getGradientStops() { return gradientStops; }
    @JsonProperty("gradientStops")
    public void setGradientStops(ColorStop[] value) { this.gradientStops = value; }

    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    @JsonProperty("scaleMode")
    public String getScaleMode() { return scaleMode; }
    @JsonProperty("scaleMode")
    public void setScaleMode(String value) { this.scaleMode = value; }
}
