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
    private double lineHeightPx;
    private String fontPostScriptName;
    private double fontWeight;
    private double lineHeightPercent;
    private TextAlignVertical textAlignVertical;
    private double fontSize;
    private boolean italic;
    private PaintElement[] fills;
    private String fontFamily;
    private TextAlignHorizontal textAlignHorizontal;
    private double letterSpacing;

    /**
     * Line height in px
     */
    @JsonProperty("lineHeightPx")
    public double getLineHeightPx() { return lineHeightPx; }
    @JsonProperty("lineHeightPx")
    public void setLineHeightPx(double value) { this.lineHeightPx = value; }

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
    public double getFontWeight() { return fontWeight; }
    @JsonProperty("fontWeight")
    public void setFontWeight(double value) { this.fontWeight = value; }

    /**
     * Line height as a percentage of normal line height
     */
    @JsonProperty("lineHeightPercent")
    public double getLineHeightPercent() { return lineHeightPercent; }
    @JsonProperty("lineHeightPercent")
    public void setLineHeightPercent(double value) { this.lineHeightPercent = value; }

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
    public double getFontSize() { return fontSize; }
    @JsonProperty("fontSize")
    public void setFontSize(double value) { this.fontSize = value; }

    /**
     * Is text italicized?
     */
    @JsonProperty("italic")
    public boolean getItalic() { return italic; }
    @JsonProperty("italic")
    public void setItalic(boolean value) { this.italic = value; }

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
    public double getLetterSpacing() { return letterSpacing; }
    @JsonProperty("letterSpacing")
    public void setLetterSpacing(double value) { this.letterSpacing = value; }
}
