package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * An array of effects attached to this node
 * (see effects sectionfor more details)
 *
 * A visual effect such as a shadow or blur
 */
public class Effect {
    private BlendMode blendMode;
    private Olor color;
    private Offset offset;
    private double radius;
    private EffectType type;
    private boolean visible;

    @JsonProperty("blendMode")
    public BlendMode getBlendMode() { return blendMode; }
    @JsonProperty("blendMode")
    public void setBlendMode(BlendMode value) { this.blendMode = value; }

    @JsonProperty("color")
    public Olor getColor() { return color; }
    @JsonProperty("color")
    public void setColor(Olor value) { this.color = value; }

    @JsonProperty("offset")
    public Offset getOffset() { return offset; }
    @JsonProperty("offset")
    public void setOffset(Offset value) { this.offset = value; }

    /**
     * Radius of the blur effect (applies to shadows as well)
     */
    @JsonProperty("radius")
    public double getRadius() { return radius; }
    @JsonProperty("radius")
    public void setRadius(double value) { this.radius = value; }

    /**
     * Type of effect as a string enum
     */
    @JsonProperty("type")
    public EffectType getType() { return type; }
    @JsonProperty("type")
    public void setType(EffectType value) { this.type = value; }

    /**
     * Is the effect active?
     */
    @JsonProperty("visible")
    public boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(boolean value) { this.visible = value; }
}
