package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A solid color, gradient, or image texture that can be applied as fills or strokes
 *
 * An array of fill paints applied to the node
 *
 * An array of stroke paints applied to the node
 *
 * Paints applied to characters
 */
public class PaintElement {
    private Olor color;
    private Offset[] gradientHandlePositions;
    private ColorStopElement[] gradientStops;
    private Double opacity;
    private String scaleMode;
    private PaintType type;
    private Boolean visible;

    /**
     * Solid color of the paint
     */
    @JsonProperty("color")
    public Olor getColor() { return color; }
    @JsonProperty("color")
    public void setColor(Olor value) { this.color = value; }

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
    public Offset[] getGradientHandlePositions() { return gradientHandlePositions; }
    @JsonProperty("gradientHandlePositions")
    public void setGradientHandlePositions(Offset[] value) { this.gradientHandlePositions = value; }

    /**
     * Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly
     * between neighboring gradient stops.
     */
    @JsonProperty("gradientStops")
    public ColorStopElement[] getGradientStops() { return gradientStops; }
    @JsonProperty("gradientStops")
    public void setGradientStops(ColorStopElement[] value) { this.gradientStops = value; }

    /**
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     */
    @JsonProperty("opacity")
    public Double getOpacity() { return opacity; }
    @JsonProperty("opacity")
    public void setOpacity(Double value) { this.opacity = value; }

    /**
     * Image scaling mode
     */
    @JsonProperty("scaleMode")
    public String getScaleMode() { return scaleMode; }
    @JsonProperty("scaleMode")
    public void setScaleMode(String value) { this.scaleMode = value; }

    /**
     * Type of paint as a string enum
     */
    @JsonProperty("type")
    public PaintType getType() { return type; }
    @JsonProperty("type")
    public void setType(PaintType value) { this.type = value; }

    /**
     * Is the paint enabled?
     */
    @JsonProperty("visible")
    public Boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(Boolean value) { this.visible = value; }
}
