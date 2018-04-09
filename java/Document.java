package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * The root node within the document
 *
 * Node Properties
 * The root node
 */
public class Document {
    private Node[] children;
    private String id;
    private String name;
    private NodeType type;
    private boolean visible;

    /**
     * An array of canvases attached to the document
     */
    @JsonProperty("children")
    public Node[] getChildren() { return children; }
    @JsonProperty("children")
    public void setChildren(Node[] value) { this.children = value; }

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
    public boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(boolean value) { this.visible = value; }
}
