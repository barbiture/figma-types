package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * 2d vector offset within the frame.
 * A 2d vector
 * This field contains three vectors, each of which are a position in
 * normalized object space (normalized object space is if the top left
 * corner of the bounding box of the object is (0, 0) and the bottom
 * right is (1,1)). The first position corresponds to the start of the
 * gradient (value 0 for the purposes of calculating gradient stops),
 * the second position is the end of the gradient (value 1), and the
 * third handle position determines the width of the gradient (only
 * relevant for non-linear gradients).
 */
public class Vector2 {
    private double x;
    private double y;

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
    @JsonProperty("x")
    public double getX() { return x; }
    @JsonProperty("x")
    public void setX(double value) { this.x = value; }

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
    @JsonProperty("y")
    public double getY() { return y; }
    @JsonProperty("y")
    public void setY(double value) { this.y = value; }
}
