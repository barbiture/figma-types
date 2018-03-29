package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * Enum describing how layer blends with layers below
 *
 * See type property for effect of this field
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 */
public enum BlendMode {
    COLOR, COLOR_BURN, COLOR_DODGE, DARKEN, DIFFERENCE, EXCLUSION, HARD_LIGHT, HUE, LIGHTEN, LINEAR_BURN, LINEAR_DODGE, LUMINOSITY, MULTIPLY, NORMAL, OVERLAY, PASS_THROUGH, SATURATION, SCREEN, SOFT_LIGHT;

    @JsonValue
    public String toValue() {
        switch (this) {
        case COLOR: return "COLOR";
        case COLOR_BURN: return "COLOR_BURN";
        case COLOR_DODGE: return "COLOR_DODGE";
        case DARKEN: return "DARKEN";
        case DIFFERENCE: return "DIFFERENCE";
        case EXCLUSION: return "EXCLUSION";
        case HARD_LIGHT: return "HARD_LIGHT";
        case HUE: return "HUE";
        case LIGHTEN: return "LIGHTEN";
        case LINEAR_BURN: return "LINEAR_BURN";
        case LINEAR_DODGE: return "LINEAR_DODGE";
        case LUMINOSITY: return "LUMINOSITY";
        case MULTIPLY: return "MULTIPLY";
        case NORMAL: return "NORMAL";
        case OVERLAY: return "OVERLAY";
        case PASS_THROUGH: return "PASS_THROUGH";
        case SATURATION: return "SATURATION";
        case SCREEN: return "SCREEN";
        case SOFT_LIGHT: return "SOFT_LIGHT";
        }
        return null;
    }

    @JsonCreator
    public static BlendMode forValue(String value) throws IOException {
        if (value.equals("COLOR")) return COLOR;
        if (value.equals("COLOR_BURN")) return COLOR_BURN;
        if (value.equals("COLOR_DODGE")) return COLOR_DODGE;
        if (value.equals("DARKEN")) return DARKEN;
        if (value.equals("DIFFERENCE")) return DIFFERENCE;
        if (value.equals("EXCLUSION")) return EXCLUSION;
        if (value.equals("HARD_LIGHT")) return HARD_LIGHT;
        if (value.equals("HUE")) return HUE;
        if (value.equals("LIGHTEN")) return LIGHTEN;
        if (value.equals("LINEAR_BURN")) return LINEAR_BURN;
        if (value.equals("LINEAR_DODGE")) return LINEAR_DODGE;
        if (value.equals("LUMINOSITY")) return LUMINOSITY;
        if (value.equals("MULTIPLY")) return MULTIPLY;
        if (value.equals("NORMAL")) return NORMAL;
        if (value.equals("OVERLAY")) return OVERLAY;
        if (value.equals("PASS_THROUGH")) return PASS_THROUGH;
        if (value.equals("SATURATION")) return SATURATION;
        if (value.equals("SCREEN")) return SCREEN;
        if (value.equals("SOFT_LIGHT")) return SOFT_LIGHT;
        throw new IOException("Cannot deserialize BlendMode");
    }
}
