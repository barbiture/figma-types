package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * Type of paint as a string enum
 */
public enum PaintType {
    EMOJI, GRADIENT_ANGULAR, GRADIENT_DIAMOND, GRADIENT_LINEAR, GRADIENT_RADIAL, IMAGE, SOLID;

    @JsonValue
    public String toValue() {
        switch (this) {
        case EMOJI: return "EMOJI";
        case GRADIENT_ANGULAR: return "GRADIENT_ANGULAR";
        case GRADIENT_DIAMOND: return "GRADIENT_DIAMOND";
        case GRADIENT_LINEAR: return "GRADIENT_LINEAR";
        case GRADIENT_RADIAL: return "GRADIENT_RADIAL";
        case IMAGE: return "IMAGE";
        case SOLID: return "SOLID";
        }
        return null;
    }

    @JsonCreator
    public static PaintType forValue(String value) throws IOException {
        if (value.equals("EMOJI")) return EMOJI;
        if (value.equals("GRADIENT_ANGULAR")) return GRADIENT_ANGULAR;
        if (value.equals("GRADIENT_DIAMOND")) return GRADIENT_DIAMOND;
        if (value.equals("GRADIENT_LINEAR")) return GRADIENT_LINEAR;
        if (value.equals("GRADIENT_RADIAL")) return GRADIENT_RADIAL;
        if (value.equals("IMAGE")) return IMAGE;
        if (value.equals("SOLID")) return SOLID;
        throw new IOException("Cannot deserialize PaintType");
    }
}
