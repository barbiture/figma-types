package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A regular n-sided polygon
 *
 * An ellipse
 *
 * A logical grouping of nodes
 *
 * An array of nodes that are direct children of this node
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
 *
 * Properties are shared across all nodes
 *
 * See type property for effect of this field
 *
 * Red channel value, between 0 and 1
 *
 * Green channel value, between 0 and 1
 *
 * Blue channel value, between 0 and 1
 *
 * Alpha channel value, between 0 and 1
 *
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Opacity of the node
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Radius of each corner of the rectangle
 *
 * Line height in px
 *
 * Numeric font weight
 *
 * Line height as a percentage of normal line height
 *
 * Font size in px
 *
 * Space between characters in px
 *
 * Array with same number of elements as characeters in text box, each element is a
 * reference to the styleOverrideTable defined below and maps to the corresponding character
 * in the characters field. Elements with value 0 have the default type style
 *
 * Whether or not the node is visible on the canvas
 *
 * Is the paint enabled?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the grid currently visible?
 *
 * Does this node clip content outside of its bounds?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * Node ID of node to transition to in prototyping
 *
 * File suffix to append to all filenames
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * ID of component that this instance came from, refers to components table (see endpoints
 * section below)
 *
 * Unique identifier for comment
 *
 * The file in which the comment lives
 *
 * If present, the id of the comment to which this is the reply
 */
public class FrameNode {
    private String id;
    private String name;
    private boolean visible;
    private RegularPolygonNodeType type;
    private EffectElement[] effects;
    private LayoutGridElement[] layoutGrids;
    private double opacity;
    private RegularPolygonNodeRectangle absoluteBoundingBox;
    private String transitionNodeID;
    private BlendMode blendMode;
    private EffectColor backgroundColor;
    private RegularPolygonNodeLayoutConstraint constraints;
    private boolean isMask;
    private boolean clipsContent;
    private ExportSettingElement[] exportSettings;
    private boolean preserveRatio;
    private FrameNodeNode[] children;

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
    public RegularPolygonNodeType getType() { return type; }
    @JsonProperty("type")
    public void setType(RegularPolygonNodeType value) { this.type = value; }

    /**
     * An array of effects attached to this node (see effects section for more details)
     */
    @JsonProperty("effects")
    public EffectElement[] getEffects() { return effects; }
    @JsonProperty("effects")
    public void setEffects(EffectElement[] value) { this.effects = value; }

    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    @JsonProperty("layoutGrids")
    public LayoutGridElement[] getLayoutGrids() { return layoutGrids; }
    @JsonProperty("layoutGrids")
    public void setLayoutGrids(LayoutGridElement[] value) { this.layoutGrids = value; }

    /**
     * Opacity of the node
     */
    @JsonProperty("opacity")
    public double getOpacity() { return opacity; }
    @JsonProperty("opacity")
    public void setOpacity(double value) { this.opacity = value; }

    /**
     * Bounding box of the node in absolute space coordinates
     */
    @JsonProperty("absoluteBoundingBox")
    public RegularPolygonNodeRectangle getAbsoluteBoundingBox() { return absoluteBoundingBox; }
    @JsonProperty("absoluteBoundingBox")
    public void setAbsoluteBoundingBox(RegularPolygonNodeRectangle value) { this.absoluteBoundingBox = value; }

    /**
     * Node ID of node to transition to in prototyping
     */
    @JsonProperty("transitionNodeID")
    public String getTransitionNodeID() { return transitionNodeID; }
    @JsonProperty("transitionNodeID")
    public void setTransitionNodeID(String value) { this.transitionNodeID = value; }

    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    @JsonProperty("blendMode")
    public BlendMode getBlendMode() { return blendMode; }
    @JsonProperty("blendMode")
    public void setBlendMode(BlendMode value) { this.blendMode = value; }

    /**
     * Background color of the node
     */
    @JsonProperty("backgroundColor")
    public EffectColor getBackgroundColor() { return backgroundColor; }
    @JsonProperty("backgroundColor")
    public void setBackgroundColor(EffectColor value) { this.backgroundColor = value; }

    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    @JsonProperty("constraints")
    public RegularPolygonNodeLayoutConstraint getConstraints() { return constraints; }
    @JsonProperty("constraints")
    public void setConstraints(RegularPolygonNodeLayoutConstraint value) { this.constraints = value; }

    /**
     * Does this node mask sibling nodes in front of it?
     */
    @JsonProperty("isMask")
    public boolean getIsMask() { return isMask; }
    @JsonProperty("isMask")
    public void setIsMask(boolean value) { this.isMask = value; }

    /**
     * Does this node clip content outside of its bounds?
     */
    @JsonProperty("clipsContent")
    public boolean getClipsContent() { return clipsContent; }
    @JsonProperty("clipsContent")
    public void setClipsContent(boolean value) { this.clipsContent = value; }

    /**
     * An array of export settings representing images to export from node
     */
    @JsonProperty("exportSettings")
    public ExportSettingElement[] getExportSettings() { return exportSettings; }
    @JsonProperty("exportSettings")
    public void setExportSettings(ExportSettingElement[] value) { this.exportSettings = value; }

    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    @JsonProperty("preserveRatio")
    public boolean getPreserveRatio() { return preserveRatio; }
    @JsonProperty("preserveRatio")
    public void setPreserveRatio(boolean value) { this.preserveRatio = value; }

    /**
     * An array of nodes that are direct children of this node
     */
    @JsonProperty("children")
    public FrameNodeNode[] getChildren() { return children; }
    @JsonProperty("children")
    public void setChildren(FrameNodeNode[] value) { this.children = value; }
}
