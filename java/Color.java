package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * An RGBA color
 *
 * Background color of the canvas
 *
 * See type property for effect of this field
 *
 * Color of the grid
 *
 * Background color of the node
 *
 * (For solid paints) Solid color of the paint
 *
 * Color attached to corresponding position
 */
public class Color {
    private double r;
    private double g;
    private double b;
    private double a;

    /**
     * Red channel value, between 0 and 1
     */
    @JsonProperty("r")
    public double getR() { return r; }
    @JsonProperty("r")
    public void setR(double value) { this.r = value; }

    /**
     * Green channel value, between 0 and 1
     */
    @JsonProperty("g")
    public double getG() { return g; }
    @JsonProperty("g")
    public void setG(double value) { this.g = value; }

    /**
     * Blue channel value, between 0 and 1
     */
    @JsonProperty("b")
    public double getB() { return b; }
    @JsonProperty("b")
    public void setB(double value) { this.b = value; }

    /**
     * Alpha channel value, between 0 and 1
     */
    @JsonProperty("a")
    public double getA() { return a; }
    @JsonProperty("a")
    public void setA(double value) { this.a = value; }
}
