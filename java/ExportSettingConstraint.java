package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Sizing constraint for exports
 *
 * Constraint that determines sizing of exported asset
 */
public class ExportSettingConstraint {
    private ConstraintType type;
    private Double value;

    /**
     * Type of constraint to apply; string enum with potential values below
     * "SCALE": Scale by value
     * "WIDTH": Scale proportionally and set width to value
     * "HEIGHT": Scale proportionally and set height to value
     */
    @JsonProperty("type")
    public ConstraintType getType() { return type; }
    @JsonProperty("type")
    public void setType(ConstraintType value) { this.type = value; }

    /**
     * See type property for effect of this field
     */
    @JsonProperty("value")
    public Double getValue() { return value; }
    @JsonProperty("value")
    public void setValue(Double value) { this.value = value; }
}
