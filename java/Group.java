package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A logical grouping of nodes
 */
public class Group {
    private EffectElement[] effects;
    private LayoutGridElement[] layoutGrids;
    private Double opacity;
    private String name;
    private AbsoluteBoundingBox absoluteBoundingBox;
    private String transitionNodeID;
    private Boolean visible;
    private BlendMode blendMode;
    private Olor backgroundColor;
    private Constraints constraints;
    private Boolean isMask;
    private Boolean clipsContent;
    private ExportSettingElement[] exportSettings;
    private NodeType type;
    private String id;
    private Boolean preserveRatio;
    private DocumentElement[] children;

    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    @JsonProperty("effects")
    public EffectElement[] getEffects() { return effects; }
    @JsonProperty("effects")
    public void setEffects(EffectElement[] value) { this.effects = value; }

    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    @JsonProperty("layoutGrids")
    public LayoutGridElement[] getLayoutGrids() { return layoutGrids; }
    @JsonProperty("layoutGrids")
    public void setLayoutGrids(LayoutGridElement[] value) { this.layoutGrids = value; }

    /**
     * Opacity of the node
     */
    @JsonProperty("opacity")
    public Double getOpacity() { return opacity; }
    @JsonProperty("opacity")
    public void setOpacity(Double value) { this.opacity = value; }

    /**
     * the name given to the node by the user in the tool.
     */
    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }

    /**
     * Bounding box of the node in absolute space coordinates
     */
    @JsonProperty("absoluteBoundingBox")
    public AbsoluteBoundingBox getAbsoluteBoundingBox() { return absoluteBoundingBox; }
    @JsonProperty("absoluteBoundingBox")
    public void setAbsoluteBoundingBox(AbsoluteBoundingBox value) { this.absoluteBoundingBox = value; }

    /**
     * Node ID of node to transition to in prototyping
     */
    @JsonProperty("transitionNodeID")
    public String getTransitionNodeID() { return transitionNodeID; }
    @JsonProperty("transitionNodeID")
    public void setTransitionNodeID(String value) { this.transitionNodeID = value; }

    /**
     * whether or not the node is visible on the canvas
     */
    @JsonProperty("visible")
    public Boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(Boolean value) { this.visible = value; }

    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    @JsonProperty("blendMode")
    public BlendMode getBlendMode() { return blendMode; }
    @JsonProperty("blendMode")
    public void setBlendMode(BlendMode value) { this.blendMode = value; }

    /**
     * Background color of the node
     */
    @JsonProperty("backgroundColor")
    public Olor getBackgroundColor() { return backgroundColor; }
    @JsonProperty("backgroundColor")
    public void setBackgroundColor(Olor value) { this.backgroundColor = value; }

    /**
     * Horizontal and vertical layout constraints for node
     */
    @JsonProperty("constraints")
    public Constraints getConstraints() { return constraints; }
    @JsonProperty("constraints")
    public void setConstraints(Constraints value) { this.constraints = value; }

    /**
     * Does this node mask sibling nodes in front of it?
     */
    @JsonProperty("isMask")
    public Boolean getIsMask() { return isMask; }
    @JsonProperty("isMask")
    public void setIsMask(Boolean value) { this.isMask = value; }

    /**
     * Does this node clip content outside of its bounds?
     */
    @JsonProperty("clipsContent")
    public Boolean getClipsContent() { return clipsContent; }
    @JsonProperty("clipsContent")
    public void setClipsContent(Boolean value) { this.clipsContent = value; }

    /**
     * An array of export settings representing images to export from node
     */
    @JsonProperty("exportSettings")
    public ExportSettingElement[] getExportSettings() { return exportSettings; }
    @JsonProperty("exportSettings")
    public void setExportSettings(ExportSettingElement[] value) { this.exportSettings = value; }

    /**
     * the type of the node, refer to table below for details
     */
    @JsonProperty("type")
    public NodeType getType() { return type; }
    @JsonProperty("type")
    public void setType(NodeType value) { this.type = value; }

    /**
     * a string uniquely identifying this node within the document
     */
    @JsonProperty("id")
    public String getID() { return id; }
    @JsonProperty("id")
    public void setID(String value) { this.id = value; }

    /**
     * Keep height and width constrained to same ratio
     */
    @JsonProperty("preserveRatio")
    public Boolean getPreserveRatio() { return preserveRatio; }
    @JsonProperty("preserveRatio")
    public void setPreserveRatio(Boolean value) { this.preserveRatio = value; }

    /**
     * An array of nodes that are direct children of this node
     */
    @JsonProperty("children")
    public DocumentElement[] getChildren() { return children; }
    @JsonProperty("children")
    public void setChildren(DocumentElement[] value) { this.children = value; }
}
