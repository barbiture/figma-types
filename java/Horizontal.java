package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * * LEFT: Node is laid out relative to left of the containing frame
 * * RIGHT: Node is laid out relative to right of the containing frame
 * * CENTER: Node is horizontally centered relative to containing frame
 * * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
 * (node stretches with frame)
 * * SCALE: Node scales horizontally with containing frame
 */
public enum Horizontal {
    CENTER, LEFT, LEFT_RIGHT, RIGHT, SCALE;

    @JsonValue
    public String toValue() {
        switch (this) {
        case CENTER: return "CENTER";
        case LEFT: return "LEFT";
        case LEFT_RIGHT: return "LEFT_RIGHT";
        case RIGHT: return "RIGHT";
        case SCALE: return "SCALE";
        }
        return null;
    }

    @JsonCreator
    public static Horizontal forValue(String value) throws IOException {
        if (value.equals("CENTER")) return CENTER;
        if (value.equals("LEFT")) return LEFT;
        if (value.equals("LEFT_RIGHT")) return LEFT_RIGHT;
        if (value.equals("RIGHT")) return RIGHT;
        if (value.equals("SCALE")) return SCALE;
        throw new IOException("Cannot deserialize Horizontal");
    }
}
