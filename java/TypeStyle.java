package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Map from ID to TypeStyle for looking up style overrides
 *
 * Metadata for character formatting
 *
 * Style of text including font family and weight (see type style
 * section for more information)
 */
public class TypeStyle {
    private Paint[] fills;
    private String fontFamily;
    private String fontPostScriptName;
    private double fontSize;
    private double fontWeight;
    private boolean italic;
    private double letterSpacing;
    private double lineHeightPercent;
    private double lineHeightPx;
    private TextAlignHorizontal textAlignHorizontal;
    private TextAlignVertical textAlignVertical;

    /**
     * Paints applied to characters
     */
    @JsonProperty("fills")
    public Paint[] getFills() { return fills; }
    @JsonProperty("fills")
    public void setFills(Paint[] value) { this.fills = value; }

    /**
     * Font family of text (standard name)
     */
    @JsonProperty("fontFamily")
    public String getFontFamily() { return fontFamily; }
    @JsonProperty("fontFamily")
    public void setFontFamily(String value) { this.fontFamily = value; }

    /**
     * PostScript font name
     */
    @JsonProperty("fontPostScriptName")
    public String getFontPostScriptName() { return fontPostScriptName; }
    @JsonProperty("fontPostScriptName")
    public void setFontPostScriptName(String value) { this.fontPostScriptName = value; }

    /**
     * Font size in px
     */
    @JsonProperty("fontSize")
    public double getFontSize() { return fontSize; }
    @JsonProperty("fontSize")
    public void setFontSize(double value) { this.fontSize = value; }

    /**
     * Numeric font weight
     */
    @JsonProperty("fontWeight")
    public double getFontWeight() { return fontWeight; }
    @JsonProperty("fontWeight")
    public void setFontWeight(double value) { this.fontWeight = value; }

    /**
     * Is text italicized?
     */
    @JsonProperty("italic")
    public boolean getItalic() { return italic; }
    @JsonProperty("italic")
    public void setItalic(boolean value) { this.italic = value; }

    /**
     * Space between characters in px
     */
    @JsonProperty("letterSpacing")
    public double getLetterSpacing() { return letterSpacing; }
    @JsonProperty("letterSpacing")
    public void setLetterSpacing(double value) { this.letterSpacing = value; }

    /**
     * Line height as a percentage of normal line height
     */
    @JsonProperty("lineHeightPercent")
    public double getLineHeightPercent() { return lineHeightPercent; }
    @JsonProperty("lineHeightPercent")
    public void setLineHeightPercent(double value) { this.lineHeightPercent = value; }

    /**
     * Line height in px
     */
    @JsonProperty("lineHeightPx")
    public double getLineHeightPx() { return lineHeightPx; }
    @JsonProperty("lineHeightPx")
    public void setLineHeightPx(double value) { this.lineHeightPx = value; }

    /**
     * Horizontal text alignment as string enum
     */
    @JsonProperty("textAlignHorizontal")
    public TextAlignHorizontal getTextAlignHorizontal() { return textAlignHorizontal; }
    @JsonProperty("textAlignHorizontal")
    public void setTextAlignHorizontal(TextAlignHorizontal value) { this.textAlignHorizontal = value; }

    /**
     * Vertical text alignment as string enum
     */
    @JsonProperty("textAlignVertical")
    public TextAlignVertical getTextAlignVertical() { return textAlignVertical; }
    @JsonProperty("textAlignVertical")
    public void setTextAlignVertical(TextAlignVertical value) { this.textAlignVertical = value; }
}
