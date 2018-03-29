package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A 2d vector
 *
 * See type property for effect of this field
 *
 * (For gradient paints) This field contains three vectors, each of which are a position in
 * normalized object space (normalized object space is if the top left corner of the
 * bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
 * corresponds to the start of the gradient (value 0 for the purposes of calculating
 * gradient stops), the second position is the end of the gradient (value 1), and the third
 * handle position determines the width of the gradient (only relevant for non-linear
 * gradients).
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
