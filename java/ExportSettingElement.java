package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Format and size to export an asset at
 *
 * An array of export settings representing images to export from node
 *
 * An array of export settings representing images to export from the canvas
 *
 * A rectangular region of the canvas that can be exported
 */
public class ExportSettingElement {
    private String suffix;
    private Format format;
    private ExportSettingConstraint constraint;

    /**
     * File suffix to append to all filenames
     */
    @JsonProperty("suffix")
    public String getSuffix() { return suffix; }
    @JsonProperty("suffix")
    public void setSuffix(String value) { this.suffix = value; }

    /**
     * Type of constraint to apply; string enum with potential values below
     *
     * * "SCALE": Scale by value
     * * "WIDTH": Scale proportionally and set width to value
     * * "HEIGHT": Scale proportionally and set height to value
     */
    @JsonProperty("format")
    public Format getFormat() { return format; }
    @JsonProperty("format")
    public void setFormat(Format value) { this.format = value; }

    /**
     * Constraint that determines sizing of exported asset
     */
    @JsonProperty("constraint")
    public ExportSettingConstraint getConstraint() { return constraint; }
    @JsonProperty("constraint")
    public void setConstraint(ExportSettingConstraint value) { this.constraint = value; }
}
