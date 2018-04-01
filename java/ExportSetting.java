package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * An array of export settings representing images to export from node
 * Format and size to export an asset at
 * An array of export settings representing images to export from the canvas
 * An array of export settings representing images to export from this node
 */
public class ExportSetting {
    private String suffix;
    private Format format;
    private Constraint constraint;

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
    @JsonProperty("suffix")
    public String getSuffix() { return suffix; }
    @JsonProperty("suffix")
    public void setSuffix(String value) { this.suffix = value; }

    /**
     * Image type, string enum
     */
    @JsonProperty("format")
    public Format getFormat() { return format; }
    @JsonProperty("format")
    public void setFormat(Format value) { this.format = value; }

    /**
     * Constraint that determines sizing of exported asset
     * Sizing constraint for exports
     */
    @JsonProperty("constraint")
    public Constraint getConstraint() { return constraint; }
    @JsonProperty("constraint")
    public void setConstraint(Constraint value) { this.constraint = value; }
}
