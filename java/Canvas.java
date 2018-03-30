package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Represents a single page
 */
public class Canvas {
    private Olor backgroundColor;
    private DocumentElement[] children;
    private ExportSettingElement[] exportSettings;
    private String id;
    private String name;
    private NodeType type;
    private Boolean visible;

    /**
     * Background color of the canvas
     */
    @JsonProperty("backgroundColor")
    public Olor getBackgroundColor() { return backgroundColor; }
    @JsonProperty("backgroundColor")
    public void setBackgroundColor(Olor value) { this.backgroundColor = value; }

    /**
     * An array of top level layers on the canvas
     */
    @JsonProperty("children")
    public DocumentElement[] getChildren() { return children; }
    @JsonProperty("children")
    public void setChildren(DocumentElement[] value) { this.children = value; }

    /**
     * An array of export settings representing images to export from the canvas
     */
    @JsonProperty("exportSettings")
    public ExportSettingElement[] getExportSettings() { return exportSettings; }
    @JsonProperty("exportSettings")
    public void setExportSettings(ExportSettingElement[] value) { this.exportSettings = value; }

    /**
     * a string uniquely identifying this node within the document
     */
    @JsonProperty("id")
    public String getID() { return id; }
    @JsonProperty("id")
    public void setID(String value) { this.id = value; }

    /**
     * the name given to the node by the user in the tool.
     */
    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }

    /**
     * the type of the node, refer to table below for details
     */
    @JsonProperty("type")
    public NodeType getType() { return type; }
    @JsonProperty("type")
    public void setType(NodeType value) { this.type = value; }

    /**
     * whether or not the node is visible on the canvas
     */
    @JsonProperty("visible")
    public Boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(Boolean value) { this.visible = value; }
}
