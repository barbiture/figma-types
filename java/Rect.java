package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Bounding box of the node in absolute space coordinates
 *
 * A rectangle that expresses a bounding box in absolute coordinates
 */
public class Rect {
    private double height;
    private double width;
    private double x;
    private double y;

    /**
     * Height of the rectangle
     */
    @JsonProperty("height")
    public double getHeight() { return height; }
    @JsonProperty("height")
    public void setHeight(double value) { this.height = value; }

    /**
     * Width of the rectangle
     */
    @JsonProperty("width")
    public double getWidth() { return width; }
    @JsonProperty("width")
    public void setWidth(double value) { this.width = value; }

    /**
     * X coordinate of top left corner of the rectangle
     */
    @JsonProperty("x")
    public double getX() { return x; }
    @JsonProperty("x")
    public void setX(double value) { this.x = value; }

    /**
     * Y coordinate of top left corner of the rectangle
     */
    @JsonProperty("y")
    public double getY() { return y; }
    @JsonProperty("y")
    public void setY(double value) { this.y = value; }
}
