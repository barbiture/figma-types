package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * Where stroke is drawn relative to the vector outline as a string enum
 * "INSIDE": draw stroke inside the shape boundary
 * "OUTSIDE": draw stroke outside the shape boundary
 * "CENTER": draw stroke centered along the shape boundary
 */
public enum StrokeAlign {
    CENTER, INSIDE, OUTSIDE;

    @JsonValue
    public String toValue() {
        switch (this) {
        case CENTER: return "CENTER";
        case INSIDE: return "INSIDE";
        case OUTSIDE: return "OUTSIDE";
        }
        return null;
    }

    @JsonCreator
    public static StrokeAlign forValue(String value) throws IOException {
        if (value.equals("CENTER")) return CENTER;
        if (value.equals("INSIDE")) return INSIDE;
        if (value.equals("OUTSIDE")) return OUTSIDE;
        throw new IOException("Cannot deserialize StrokeAlign");
    }
}
