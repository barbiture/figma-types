package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * An array of canvases attached to the document
 *
 * Properties are shared across all nodes
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * See type property for effect of this field
 *
 * Whether or not the node is visible on the canvas
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
public class FluffyNode {
    private String id;
    private String name;
    private boolean visible;
    private NodeType type;
    private NodeNode[] children;
    private NodeColor backgroundColor;

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
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     */
    @JsonProperty("children")
    public NodeNode[] getChildren() { return children; }
    @JsonProperty("children")
    public void setChildren(NodeNode[] value) { this.children = value; }

    /**
     * Background color of the canvas
     */
    @JsonProperty("backgroundColor")
    public NodeColor getBackgroundColor() { return backgroundColor; }
    @JsonProperty("backgroundColor")
    public void setBackgroundColor(NodeColor value) { this.backgroundColor = value; }
}
