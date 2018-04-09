package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A node of fixed size containing other nodes
 */
public class Frame {
    private Rectangle absoluteBoundingBox;
    private Color backgroundColor;
    private BlendMode blendMode;
    private Node[] children;
    private boolean clipsContent;
    private LayoutConstraint constraints;
    private Effect[] effects;
    private ExportSetting[] exportSettings;
    private String id;
    private boolean isMask;
    private LayoutGrid[] layoutGrids;
    private String name;
    private double opacity;
    private boolean preserveRatio;
    private String transitionNodeID;
    private NodeType type;
    private boolean visible;

    /**
     * Bounding box of the node in absolute space coordinates
     */
    @JsonProperty("absoluteBoundingBox")
    public Rectangle getAbsoluteBoundingBox() { return absoluteBoundingBox; }
    @JsonProperty("absoluteBoundingBox")
    public void setAbsoluteBoundingBox(Rectangle value) { this.absoluteBoundingBox = value; }

    /**
     * Background color of the node
     */
    @JsonProperty("backgroundColor")
    public Color getBackgroundColor() { return backgroundColor; }
    @JsonProperty("backgroundColor")
    public void setBackgroundColor(Color value) { this.backgroundColor = value; }

    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    @JsonProperty("blendMode")
    public BlendMode getBlendMode() { return blendMode; }
    @JsonProperty("blendMode")
    public void setBlendMode(BlendMode value) { this.blendMode = value; }

    /**
     * An array of nodes that are direct children of this node
     */
    @JsonProperty("children")
    public Node[] getChildren() { return children; }
    @JsonProperty("children")
    public void setChildren(Node[] value) { this.children = value; }

    /**
     * Does this node clip content outside of its bounds?
     */
    @JsonProperty("clipsContent")
    public boolean getClipsContent() { return clipsContent; }
    @JsonProperty("clipsContent")
    public void setClipsContent(boolean value) { this.clipsContent = value; }

    /**
     * Horizontal and vertical layout constraints for node
     */
    @JsonProperty("constraints")
    public LayoutConstraint getConstraints() { return constraints; }
    @JsonProperty("constraints")
    public void setConstraints(LayoutConstraint value) { this.constraints = value; }

    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    @JsonProperty("effects")
    public Effect[] getEffects() { return effects; }
    @JsonProperty("effects")
    public void setEffects(Effect[] value) { this.effects = value; }

    /**
     * An array of export settings representing images to export from node
     */
    @JsonProperty("exportSettings")
    public ExportSetting[] getExportSettings() { return exportSettings; }
    @JsonProperty("exportSettings")
    public void setExportSettings(ExportSetting[] value) { this.exportSettings = value; }

    /**
     * a string uniquely identifying this node within the document
     */
    @JsonProperty("id")
    public String getID() { return id; }
    @JsonProperty("id")
    public void setID(String value) { this.id = value; }

    /**
     * Does this node mask sibling nodes in front of it?
     */
    @JsonProperty("isMask")
    public boolean getIsMask() { return isMask; }
    @JsonProperty("isMask")
    public void setIsMask(boolean value) { this.isMask = value; }

    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    @JsonProperty("layoutGrids")
    public LayoutGrid[] getLayoutGrids() { return layoutGrids; }
    @JsonProperty("layoutGrids")
    public void setLayoutGrids(LayoutGrid[] value) { this.layoutGrids = value; }

    /**
     * the name given to the node by the user in the tool.
     */
    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }

    /**
     * Opacity of the node
     */
    @JsonProperty("opacity")
    public double getOpacity() { return opacity; }
    @JsonProperty("opacity")
    public void setOpacity(double value) { this.opacity = value; }

    /**
     * Keep height and width constrained to same ratio
     */
    @JsonProperty("preserveRatio")
    public boolean getPreserveRatio() { return preserveRatio; }
    @JsonProperty("preserveRatio")
    public void setPreserveRatio(boolean value) { this.preserveRatio = value; }

    /**
     * Node ID of node to transition to in prototyping
     */
    @JsonProperty("transitionNodeID")
    public String getTransitionNodeID() { return transitionNodeID; }
    @JsonProperty("transitionNodeID")
    public void setTransitionNodeID(String value) { this.transitionNodeID = value; }

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
