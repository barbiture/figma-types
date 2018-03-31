package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * An array of export settings representing images to export from node
 *
 * Format and size to export an asset at
 *
 * An array of export settings representing images to export from the canvas
 *
 * An array of export settings representing images to export from this node
 */
public class ExportSetting {
    private Constraint constraint;
    private Format format;
    private String suffix;

    /**
     * Constraint that determines sizing of exported asset
     */
    @JsonProperty("constraint")
    public Constraint getConstraint() { return constraint; }
    @JsonProperty("constraint")
    public void setConstraint(Constraint value) { this.constraint = value; }

    /**
     * Image type, string enum
     */
    @JsonProperty("format")
    public Format getFormat() { return format; }
    @JsonProperty("format")
    public void setFormat(Format value) { this.format = value; }

    /**
     * File suffix to append to all filenames
     */
    @JsonProperty("suffix")
    public String getSuffix() { return suffix; }
    @JsonProperty("suffix")
    public void setSuffix(String value) { this.suffix = value; }
}
