package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * Vertical text alignment as string enum
 */
public enum TextAlignVertical {
    BOTTOM, CENTER, TOP;

    @JsonValue
    public String toValue() {
        switch (this) {
        case BOTTOM: return "BOTTOM";
        case CENTER: return "CENTER";
        case TOP: return "TOP";
        }
        return null;
    }

    @JsonCreator
    public static TextAlignVertical forValue(String value) throws IOException {
        if (value.equals("BOTTOM")) return BOTTOM;
        if (value.equals("CENTER")) return CENTER;
        if (value.equals("TOP")) return TOP;
        throw new IOException("Cannot deserialize TextAlignVertical");
    }
}
