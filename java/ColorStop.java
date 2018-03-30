package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A position color pair representing a gradient stop
 */
public class ColorStop {
    private Olor color;
    private Double position;

    /**
     * Color attached to corresponding position
     */
    @JsonProperty("color")
    public Olor getColor() { return color; }
    @JsonProperty("color")
    public void setColor(Olor value) { this.color = value; }

    /**
     * Value between 0 and 1 representing position along gradient axis
     */
    @JsonProperty("position")
    public Double getPosition() { return position; }
    @JsonProperty("position")
    public void setPosition(Double value) { this.position = value; }
}
