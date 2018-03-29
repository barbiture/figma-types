package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * (For image paints) Image scaling mode
 */
public enum ScaleMode {
    FILL, FIT, STRETCH, TILE;

    @JsonValue
    public String toValue() {
        switch (this) {
        case FILL: return "FILL";
        case FIT: return "FIT";
        case STRETCH: return "STRETCH";
        case TILE: return "TILE";
        }
        return null;
    }

    @JsonCreator
    public static ScaleMode forValue(String value) throws IOException {
        if (value.equals("FILL")) return FILL;
        if (value.equals("FIT")) return FIT;
        if (value.equals("STRETCH")) return STRETCH;
        if (value.equals("TILE")) return TILE;
        throw new IOException("Cannot deserialize ScaleMode");
    }
}
