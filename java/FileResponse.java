package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * GET /v1/files/:key
 *
 * > Description
 *
 * Returns the document refered to by :key as a JSON object. The file key can be parsed from
 * any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
 * contains a Node of type DOCUMENT.
 *
 * The "components" key contains a mapping from node IDs to component metadata. This is to
 * help you determine which components each instance comes from. Currently the only piece of
 * metadata available on components is the name of the component, but more properties will
 * be forthcoming.
 *
 * > Path parameters
 *
 * key String
 * File to export JSON from
 */
public class FileResponse {
    private Map<String, Component> components;
    private DocumentClass document;
    private double schemaVersion;

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
     * The root node within the document
     */
    @JsonProperty("document")
    public DocumentClass getDocument() { return document; }
    @JsonProperty("document")
    public void setDocument(DocumentClass value) { this.document = value; }

    @JsonProperty("schemaVersion")
    public double getSchemaVersion() { return schemaVersion; }
    @JsonProperty("schemaVersion")
    public void setSchemaVersion(double value) { this.schemaVersion = value; }
}
