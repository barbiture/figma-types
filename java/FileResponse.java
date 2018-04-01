package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class FileResponse {
    private Document document;
    private Map<String, Component> components;
    private double schemaVersion;

    /**
     * Node Properties
     * The root node
     * The root node within the document
     */
    @JsonProperty("document")
    public Document getDocument() { return document; }
    @JsonProperty("document")
    public void setDocument(Document value) { this.document = value; }

    /**
     * A mapping from node IDs to component metadata. This is to help you determine which
     * components each instance comes from. Currently the only piece of metadata available on
     * components is the name of the component, but more properties will be forthcoming.
     */
    @JsonProperty("components")
    public Map<String, Component> getComponents() { return components; }
    @JsonProperty("components")
    public void setComponents(Map<String, Component> value) { this.components = value; }

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
    @JsonProperty("schemaVersion")
    public double getSchemaVersion() { return schemaVersion; }
    @JsonProperty("schemaVersion")
    public void setSchemaVersion(double value) { this.schemaVersion = value; }
}
