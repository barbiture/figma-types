package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Constraint that determines sizing of exported asset
 * Sizing constraint for exports
 */
public class Constraint {
    private ConstraintType type;
    private double value;

    /**
     * Type of constraint to apply; string enum with potential values below
     * "SCALE": Scale by value
     * "WIDTH": Scale proportionally and set width to value
     * "HEIGHT": Scale proportionally and set height to value
     */
    @JsonProperty("type")
    public ConstraintType getType() { return type; }
    @JsonProperty("type")
    public void setType(ConstraintType value) { this.type = value; }

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
    @JsonProperty("value")
    public double getValue() { return value; }
    @JsonProperty("value")
    public void setValue(double value) { this.value = value; }
}
