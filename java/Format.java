package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * Type of constraint to apply; string enum with potential values below
 *
 * * "SCALE": Scale by value
 * * "WIDTH": Scale proportionally and set width to value
 * * "HEIGHT": Scale proportionally and set height to value
 */
public enum Format {
    JPG, PNG, SVG;

    @JsonValue
    public String toValue() {
        switch (this) {
        case JPG: return "JPG";
        case PNG: return "PNG";
        case SVG: return "SVG";
        }
        return null;
    }

    @JsonCreator
    public static Format forValue(String value) throws IOException {
        if (value.equals("JPG")) return JPG;
        if (value.equals("PNG")) return PNG;
        if (value.equals("SVG")) return SVG;
        throw new IOException("Cannot deserialize Format");
    }
}
