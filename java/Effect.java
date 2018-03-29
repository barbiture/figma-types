package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A visual effect such as a shadow or blur
 *
 * An array of effects attached to this node (see effects section for more details)
 */
public class Effect {
    private EffectType type;
    private double radius;
    private boolean visible;
    private Color color;
    private BlendMode blendMode;
    private Vector2D offset;

    /**
     * Type of effect as a string enum
     */
    @JsonProperty("type")
    public EffectType getType() { return type; }
    @JsonProperty("type")
    public void setType(EffectType value) { this.type = value; }

    /**
     * See type property for effect of this field
     */
    @JsonProperty("radius")
    public double getRadius() { return radius; }
    @JsonProperty("radius")
    public void setRadius(double value) { this.radius = value; }

    /**
     * See type property for effect of this field
     */
    @JsonProperty("visible")
    public boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(boolean value) { this.visible = value; }

    /**
     * See type property for effect of this field
     */
    @JsonProperty("color")
    public Color getColor() { return color; }
    @JsonProperty("color")
    public void setColor(Color value) { this.color = value; }

    /**
     * See type property for effect of this field
     */
    @JsonProperty("blendMode")
    public BlendMode getBlendMode() { return blendMode; }
    @JsonProperty("blendMode")
    public void setBlendMode(BlendMode value) { this.blendMode = value; }

    /**
     * See type property for effect of this field
     */
    @JsonProperty("offset")
    public Vector2D getOffset() { return offset; }
    @JsonProperty("offset")
    public void setOffset(Vector2D value) { this.offset = value; }
}
