package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Guides to align and place objects within a frame
 */
public class LayoutGrid {
    private Alignment alignment;
    private Olor color;
    private Double count;
    private Double gutterSize;
    private Double offset;
    private Pattern pattern;
    private Double sectionSize;
    private Boolean visible;

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
    public Olor getColor() { return color; }
    @JsonProperty("color")
    public void setColor(Olor value) { this.color = value; }

    /**
     * Number of columns or rows
     */
    @JsonProperty("count")
    public Double getCount() { return count; }
    @JsonProperty("count")
    public void setCount(Double value) { this.count = value; }

    /**
     * Spacing in between columns and rows
     */
    @JsonProperty("gutterSize")
    public Double getGutterSize() { return gutterSize; }
    @JsonProperty("gutterSize")
    public void setGutterSize(Double value) { this.gutterSize = value; }

    /**
     * Spacing before the first column or row
     */
    @JsonProperty("offset")
    public Double getOffset() { return offset; }
    @JsonProperty("offset")
    public void setOffset(Double value) { this.offset = value; }

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
    public Double getSectionSize() { return sectionSize; }
    @JsonProperty("sectionSize")
    public void setSectionSize(Double value) { this.sectionSize = value; }

    /**
     * Is the grid currently visible?
     */
    @JsonProperty("visible")
    public Boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(Boolean value) { this.visible = value; }
}
