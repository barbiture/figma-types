package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * Type of effect as a string enum
 */
public enum EffectType {
    BACKGROUND_BLUR, DROP_SHADOW, INNER_SHADOW, LAYER_BLUR;

    @JsonValue
    public String toValue() {
        switch (this) {
        case BACKGROUND_BLUR: return "BACKGROUND_BLUR";
        case DROP_SHADOW: return "DROP_SHADOW";
        case INNER_SHADOW: return "INNER_SHADOW";
        case LAYER_BLUR: return "LAYER_BLUR";
        }
        return null;
    }

    @JsonCreator
    public static EffectType forValue(String value) throws IOException {
        if (value.equals("BACKGROUND_BLUR")) return BACKGROUND_BLUR;
        if (value.equals("DROP_SHADOW")) return DROP_SHADOW;
        if (value.equals("INNER_SHADOW")) return INNER_SHADOW;
        if (value.equals("LAYER_BLUR")) return LAYER_BLUR;
        throw new IOException("Cannot deserialize EffectType");
    }
}
