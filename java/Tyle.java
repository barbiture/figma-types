package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Metadata for character formatting
 *
 * Map from ID to TypeStyle for looking up style overrides
 *
 * Style of text including font family and weight (see type style
 * section for more information)
 */
public class Tyle {
    private Double lineHeightPx;
    private String fontPostScriptName;
    private Double fontWeight;
    private Double lineHeightPercent;
    private TextAlignVertical textAlignVertical;
    private Double fontSize;
    private Boolean italic;
    private PaintElement[] fills;
    private String fontFamily;
    private TextAlignHorizontal textAlignHorizontal;
    private Double letterSpacing;

    /**
     * Line height in px
     */
    @JsonProperty("lineHeightPx")
    public Double getLineHeightPx() { return lineHeightPx; }
    @JsonProperty("lineHeightPx")
    public void setLineHeightPx(Double value) { this.lineHeightPx = value; }

    /**
     * PostScript font name
     */
    @JsonProperty("fontPostScriptName")
    public String getFontPostScriptName() { return fontPostScriptName; }
    @JsonProperty("fontPostScriptName")
    public void setFontPostScriptName(String value) { this.fontPostScriptName = value; }

    /**
     * Numeric font weight
     */
    @JsonProperty("fontWeight")
    public Double getFontWeight() { return fontWeight; }
    @JsonProperty("fontWeight")
    public void setFontWeight(Double value) { this.fontWeight = value; }

    /**
     * Line height as a percentage of normal line height
     */
    @JsonProperty("lineHeightPercent")
    public Double getLineHeightPercent() { return lineHeightPercent; }
    @JsonProperty("lineHeightPercent")
    public void setLineHeightPercent(Double value) { this.lineHeightPercent = value; }

    /**
     * Vertical text alignment as string enum
     */
    @JsonProperty("textAlignVertical")
    public TextAlignVertical getTextAlignVertical() { return textAlignVertical; }
    @JsonProperty("textAlignVertical")
    public void setTextAlignVertical(TextAlignVertical value) { this.textAlignVertical = value; }

    /**
     * Font size in px
     */
    @JsonProperty("fontSize")
    public Double getFontSize() { return fontSize; }
    @JsonProperty("fontSize")
    public void setFontSize(Double value) { this.fontSize = value; }

    /**
     * Is text italicized?
     */
    @JsonProperty("italic")
    public Boolean getItalic() { return italic; }
    @JsonProperty("italic")
    public void setItalic(Boolean value) { this.italic = value; }

    /**
     * Paints applied to characters
     */
    @JsonProperty("fills")
    public PaintElement[] getFills() { return fills; }
    @JsonProperty("fills")
    public void setFills(PaintElement[] value) { this.fills = value; }

    /**
     * Font family of text (standard name)
     */
    @JsonProperty("fontFamily")
    public String getFontFamily() { return fontFamily; }
    @JsonProperty("fontFamily")
    public void setFontFamily(String value) { this.fontFamily = value; }

    /**
     * Horizontal text alignment as string enum
     */
    @JsonProperty("textAlignHorizontal")
    public TextAlignHorizontal getTextAlignHorizontal() { return textAlignHorizontal; }
    @JsonProperty("textAlignHorizontal")
    public void setTextAlignHorizontal(TextAlignHorizontal value) { this.textAlignHorizontal = value; }

    /**
     * Space between characters in px
     */
    @JsonProperty("letterSpacing")
    public Double getLetterSpacing() { return letterSpacing; }
    @JsonProperty("letterSpacing")
    public void setLetterSpacing(Double value) { this.letterSpacing = value; }
}
