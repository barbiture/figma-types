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
public class Paint {
    private PaintType type;
    private boolean visible;
    private double opacity;
    private Color color;
    private Vector2D[] gradientHandlePositions;
    private ColorStop[] gradientStops;
    private ScaleMode scaleMode;

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
    public boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(boolean value) { this.visible = value; }

    /**
     * Overall opacity of paint (colors within the paint can also have opacity values which
     * would blend with this)
     */
    @JsonProperty("opacity")
    public double getOpacity() { return opacity; }
    @JsonProperty("opacity")
    public void setOpacity(double value) { this.opacity = value; }

    /**
     * (For solid paints) Solid color of the paint
     */
    @JsonProperty("color")
    public Color getColor() { return color; }
    @JsonProperty("color")
    public void setColor(Color value) { this.color = value; }

    /**
     * (For gradient paints) This field contains three vectors, each of which are a position in
     * normalized object space (normalized object space is if the top left corner of the
     * bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
     * corresponds to the start of the gradient (value 0 for the purposes of calculating
     * gradient stops), the second position is the end of the gradient (value 1), and the third
     * handle position determines the width of the gradient (only relevant for non-linear
     * gradients).
     */
    @JsonProperty("gradientHandlePositions")
    public Vector2D[] getGradientHandlePositions() { return gradientHandlePositions; }
    @JsonProperty("gradientHandlePositions")
    public void setGradientHandlePositions(Vector2D[] value) { this.gradientHandlePositions = value; }

    /**
     * (For gradient paints) Positions of key points along the gradient axis with the colors
     * anchored there. Colors along the gradient are interpolated smoothly between neighboring
     * gradient stops.
     */
    @JsonProperty("gradientStops")
    public ColorStop[] getGradientStops() { return gradientStops; }
    @JsonProperty("gradientStops")
    public void setGradientStops(ColorStop[] value) { this.gradientStops = value; }

    /**
     * (For image paints) Image scaling mode
     */
    @JsonProperty("scaleMode")
    public ScaleMode getScaleMode() { return scaleMode; }
    @JsonProperty("scaleMode")
    public void setScaleMode(ScaleMode value) { this.scaleMode = value; }
}
