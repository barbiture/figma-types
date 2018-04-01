package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Horizontal and vertical layout constraints for node
 * Layout constraint relative to containing Frame
 */
public class LayoutConstraint {
    private Vertical vertical;
    private Horizontal horizontal;

    /**
     * Vertical constraint as an enum
     * "TOP": Node is laid out relative to top of the containing frame
     * "BOTTOM": Node is laid out relative to bottom of the containing frame
     * "CENTER": Node is vertically centered relative to containing frame
     * "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
     * (node stretches with frame)
     * "SCALE": Node scales vertically with containing frame
     */
    @JsonProperty("vertical")
    public Vertical getVertical() { return vertical; }
    @JsonProperty("vertical")
    public void setVertical(Vertical value) { this.vertical = value; }

    /**
     * Horizontal constraint as an enum
     * "LEFT": Node is laid out relative to left of the containing frame
     * "RIGHT": Node is laid out relative to right of the containing frame
     * "CENTER": Node is horizontally centered relative to containing frame
     * "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
     * (node stretches with frame)
     * "SCALE": Node scales horizontally with containing frame
     */
    @JsonProperty("horizontal")
    public Horizontal getHorizontal() { return horizontal; }
    @JsonProperty("horizontal")
    public void setHorizontal(Horizontal value) { this.horizontal = value; }
}
