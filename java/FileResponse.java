package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * GET /v1/files/:key
 *
 * Returns the document refered to by :key as a JSON object. The file key can be parsed from
 * any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
 * contains a Node of type DOCUMENT.
 */
public class FileResponse {
    private Document document;
    private Map<String, Component> components;
    private double schemaVersion;

    /**
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

    @JsonProperty("schemaVersion")
    public double getSchemaVersion() { return schemaVersion; }
    @JsonProperty("schemaVersion")
    public void setSchemaVersion(double value) { this.schemaVersion = value; }
}
