package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A 2d vector
 */
public class Vector {
    private double x;
    private double y;

    /**
     * X coordinate of the vector
     */
    @JsonProperty("x")
    public double getX() { return x; }
    @JsonProperty("x")
    public void setX(double value) { this.x = value; }

    /**
     * Y coordinate of the vector
     */
    @JsonProperty("y")
    public double getY() { return y; }
    @JsonProperty("y")
    public void setY(double value) { this.y = value; }
}
