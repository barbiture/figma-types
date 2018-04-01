package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Map from ID to TypeStyle for looking up style overrides
 * Metadata for character formatting
 * Style of text including font family and weight (see type style
 * section for more information)
 */
public class TypeStyle {
    private double lineHeightPx;
    private String fontPostScriptName;
    private double fontWeight;
    private double lineHeightPercent;
    private TextAlignVertical textAlignVertical;
    private double fontSize;
    private boolean italic;
    private Paint[] fills;
    private String fontFamily;
    private TextAlignHorizontal textAlignHorizontal;
    private double letterSpacing;

    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    @JsonProperty("lineHeightPx")
    public double getLineHeightPx() { return lineHeightPx; }
    @JsonProperty("lineHeightPx")
    public void setLineHeightPx(double value) { this.lineHeightPx = value; }

    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    @JsonProperty("fontPostScriptName")
    public String getFontPostScriptName() { return fontPostScriptName; }
    @JsonProperty("fontPostScriptName")
    public void setFontPostScriptName(String value) { this.fontPostScriptName = value; }

    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    @JsonProperty("fontWeight")
    public double getFontWeight() { return fontWeight; }
    @JsonProperty("fontWeight")
    public void setFontWeight(double value) { this.fontWeight = value; }

    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
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
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    @JsonProperty("fontSize")
    public double getFontSize() { return fontSize; }
    @JsonProperty("fontSize")
    public void setFontSize(double value) { this.fontSize = value; }

    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    @JsonProperty("italic")
    public boolean getItalic() { return italic; }
    @JsonProperty("italic")
    public void setItalic(boolean value) { this.italic = value; }

    /**
     * An array of fill paints applied to the node
     * An array of stroke paints applied to the node
     * Paints applied to characters
     */
    @JsonProperty("fills")
    public Paint[] getFills() { return fills; }
    @JsonProperty("fills")
    public void setFills(Paint[] value) { this.fills = value; }

    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
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
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    @JsonProperty("letterSpacing")
    public double getLetterSpacing() { return letterSpacing; }
    @JsonProperty("letterSpacing")
    public void setLetterSpacing(double value) { this.letterSpacing = value; }
}
