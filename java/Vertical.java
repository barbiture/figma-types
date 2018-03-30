package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * Vertical constraint as an enum
 * "TOP": Node is laid out relative to top of the containing frame
 * "BOTTOM": Node is laid out relative to bottom of the containing frame
 * "CENTER": Node is vertically centered relative to containing frame
 * "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
 * (node stretches with frame)
 * "SCALE": Node scales vertically with containing frame
 */
public enum Vertical {
    BOTTOM, CENTER, SCALE, TOP, TOP_BOTTOM;

    @JsonValue
    public String toValue() {
        switch (this) {
        case BOTTOM: return "BOTTOM";
        case CENTER: return "CENTER";
        case SCALE: return "SCALE";
        case TOP: return "TOP";
        case TOP_BOTTOM: return "TOP_BOTTOM";
        }
        return null;
    }

    @JsonCreator
    public static Vertical forValue(String value) throws IOException {
        if (value.equals("BOTTOM")) return BOTTOM;
        if (value.equals("CENTER")) return CENTER;
        if (value.equals("SCALE")) return SCALE;
        if (value.equals("TOP")) return TOP;
        if (value.equals("TOP_BOTTOM")) return TOP_BOTTOM;
        throw new IOException("Cannot deserialize Vertical");
    }
}
