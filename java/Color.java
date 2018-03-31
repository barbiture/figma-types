package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Solid color of the paint
 *
 * An RGBA color
 *
 * Color of the grid
 *
 * Background color of the node
 *
 * Color attached to corresponding position
 *
 * Background color of the canvas
 */
public class Color {
    private double a;
    private double b;
    private double g;
    private double r;

    /**
     * Alpha channel value, between 0 and 1
     */
    @JsonProperty("a")
    public double getA() { return a; }
    @JsonProperty("a")
    public void setA(double value) { this.a = value; }

    /**
     * Blue channel value, between 0 and 1
     */
    @JsonProperty("b")
    public double getB() { return b; }
    @JsonProperty("b")
    public void setB(double value) { this.b = value; }

    /**
     * Green channel value, between 0 and 1
     */
    @JsonProperty("g")
    public double getG() { return g; }
    @JsonProperty("g")
    public void setG(double value) { this.g = value; }

    /**
     * Red channel value, between 0 and 1
     */
    @JsonProperty("r")
    public double getR() { return r; }
    @JsonProperty("r")
    public void setR(double value) { this.r = value; }
}
