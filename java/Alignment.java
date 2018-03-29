package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * Positioning of grid as a string enum
 *
 * * MIN: Grid starts at the left or top of the frame
 * * MAX: Grid starts at the right or bottom of the frame
 * * CENTER: Grid is center aligned
 */
public enum Alignment {
    CENTER, MAX, MIN;

    @JsonValue
    public String toValue() {
        switch (this) {
        case CENTER: return "CENTER";
        case MAX: return "MAX";
        case MIN: return "MIN";
        }
        return null;
    }

    @JsonCreator
    public static Alignment forValue(String value) throws IOException {
        if (value.equals("CENTER")) return CENTER;
        if (value.equals("MAX")) return MAX;
        if (value.equals("MIN")) return MIN;
        throw new IOException("Cannot deserialize Alignment");
    }
}
