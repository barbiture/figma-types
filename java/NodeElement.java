package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Properties are shared across all nodes
 *
 * * DOCUMENT: An array of canvases attached to the document
 * * CANVAS: An array of top level layers on the canvas
 */
public class NodeElement {
    private String id;
    private String name;
    private boolean visible;
    private NodeType type;
    private NodeElement[] children;
    private NodeColor backgroundColor;
    private ExportSettingElement[] exportSettings;

    /**
     * A string uniquely identifying this node within the document
     */
    @JsonProperty("id")
    public String getID() { return id; }
    @JsonProperty("id")
    public void setID(String value) { this.id = value; }

    /**
     * The name given to the node by the user in the tool
     */
    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }

    /**
     * Whether or not the node is visible on the canvas
     */
    @JsonProperty("visible")
    public boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(boolean value) { this.visible = value; }

    /**
     * The type of the node
     */
    @JsonProperty("type")
    public NodeType getType() { return type; }
    @JsonProperty("type")
    public void setType(NodeType value) { this.type = value; }

    /**
     * * DOCUMENT: An array of canvases attached to the document
     * * CANVAS: An array of top level layers on the canvas
     */
    @JsonProperty("children")
    public NodeElement[] getChildren() { return children; }
    @JsonProperty("children")
    public void setChildren(NodeElement[] value) { this.children = value; }

    /**
     * Background color of the canvas
     */
    @JsonProperty("backgroundColor")
    public NodeColor getBackgroundColor() { return backgroundColor; }
    @JsonProperty("backgroundColor")
    public void setBackgroundColor(NodeColor value) { this.backgroundColor = value; }

    /**
     * * CANVAS: An array of export settings representing images to export from the canvas
     */
    @JsonProperty("exportSettings")
    public ExportSettingElement[] getExportSettings() { return exportSettings; }
    @JsonProperty("exportSettings")
    public void setExportSettings(ExportSettingElement[] value) { this.exportSettings = value; }
}
