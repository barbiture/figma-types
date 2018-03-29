package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * Horizontal text alignment as string enum
 */
public enum TextAlignHorizontal {
    CENTER, JUSTIFIED, LEFT, RIGHT;

    @JsonValue
    public String toValue() {
        switch (this) {
        case CENTER: return "CENTER";
        case JUSTIFIED: return "JUSTIFIED";
        case LEFT: return "LEFT";
        case RIGHT: return "RIGHT";
        }
        return null;
    }

    @JsonCreator
    public static TextAlignHorizontal forValue(String value) throws IOException {
        if (value.equals("CENTER")) return CENTER;
        if (value.equals("JUSTIFIED")) return JUSTIFIED;
        if (value.equals("LEFT")) return LEFT;
        if (value.equals("RIGHT")) return RIGHT;
        throw new IOException("Cannot deserialize TextAlignHorizontal");
    }
}
