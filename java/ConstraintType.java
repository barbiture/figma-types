package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * Type of constraint to apply; string enum with potential values below
 * "SCALE": Scale by value
 * "WIDTH": Scale proportionally and set width to value
 * "HEIGHT": Scale proportionally and set height to value
 */
public enum ConstraintType {
    HEIGHT, SCALE, WIDTH;

    @JsonValue
    public String toValue() {
        switch (this) {
        case HEIGHT: return "HEIGHT";
        case SCALE: return "SCALE";
        case WIDTH: return "WIDTH";
        }
        return null;
    }

    @JsonCreator
    public static ConstraintType forValue(String value) throws IOException {
        if (value.equals("HEIGHT")) return HEIGHT;
        if (value.equals("SCALE")) return SCALE;
        if (value.equals("WIDTH")) return WIDTH;
        throw new IOException("Cannot deserialize ConstraintType");
    }
}
