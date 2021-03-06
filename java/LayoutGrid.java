package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * An array of layout grids attached to this node (see layout grids section
 * for more details). GROUP nodes do not have this attribute
 *
 * Guides to align and place objects within a frame
 */
public class LayoutGrid {
    private Alignment alignment;
    private Color color;
    private double count;
    private double gutterSize;
    private double offset;
    private Pattern pattern;
    private double sectionSize;
    private boolean visible;

    /**
     * Positioning of grid as a string enum
     * "MIN": Grid starts at the left or top of the frame
     * "MAX": Grid starts at the right or bottom of the frame
     * "CENTER": Grid is center aligned
     */
    @JsonProperty("alignment")
    public Alignment getAlignment() { return alignment; }
    @JsonProperty("alignment")
    public void setAlignment(Alignment value) { this.alignment = value; }

    /**
     * Color of the grid
     */
    @JsonProperty("color")
    public Color getColor() { return color; }
    @JsonProperty("color")
    public void setColor(Color value) { this.color = value; }

    /**
     * Number of columns or rows
     */
    @JsonProperty("count")
    public double getCount() { return count; }
    @JsonProperty("count")
    public void setCount(double value) { this.count = value; }

    /**
     * Spacing in between columns and rows
     */
    @JsonProperty("gutterSize")
    public double getGutterSize() { return gutterSize; }
    @JsonProperty("gutterSize")
    public void setGutterSize(double value) { this.gutterSize = value; }

    /**
     * Spacing before the first column or row
     */
    @JsonProperty("offset")
    public double getOffset() { return offset; }
    @JsonProperty("offset")
    public void setOffset(double value) { this.offset = value; }

    /**
     * Orientation of the grid as a string enum
     * "COLUMNS": Vertical grid
     * "ROWS": Horizontal grid
     * "GRID": Square grid
     */
    @JsonProperty("pattern")
    public Pattern getPattern() { return pattern; }
    @JsonProperty("pattern")
    public void setPattern(Pattern value) { this.pattern = value; }

    /**
     * Width of column grid or height of row grid or square grid spacing
     */
    @JsonProperty("sectionSize")
    public double getSectionSize() { return sectionSize; }
    @JsonProperty("sectionSize")
    public void setSectionSize(double value) { this.sectionSize = value; }

    /**
     * Is the grid currently visible?
     */
    @JsonProperty("visible")
    public boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(boolean value) { this.visible = value; }
}
