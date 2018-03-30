package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A 2d vector
 */
public class Vector2D {
    private Double x;
    private Double y;

    /**
     * X coordinate of the vector
     */
    @JsonProperty("x")
    public Double getX() { return x; }
    @JsonProperty("x")
    public void setX(Double value) { this.x = value; }

    /**
     * Y coordinate of the vector
     */
    @JsonProperty("y")
    public Double getY() { return y; }
    @JsonProperty("y")
    public void setY(Double value) { this.y = value; }
}
