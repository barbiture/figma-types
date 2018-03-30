package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Format and size to export an asset at
 *
 * An array of export settings representing images to export from node
 *
 * An array of export settings representing images to export from this node
 *
 * An array of export settings representing images to export from the canvas
 */
public class ExportSettingElement {
    private ExportSettingConstraint constraint;
    private Format format;
    private Suffix suffix;

    /**
     * Constraint that determines sizing of exported asset
     */
    @JsonProperty("constraint")
    public ExportSettingConstraint getConstraint() { return constraint; }
    @JsonProperty("constraint")
    public void setConstraint(ExportSettingConstraint value) { this.constraint = value; }

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
    public Suffix getSuffix() { return suffix; }
    @JsonProperty("suffix")
    public void setSuffix(Suffix value) { this.suffix = value; }
}
