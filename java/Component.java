package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A mapping from node IDs to component metadata. This is to help you determine which
 * components each instance comes from. Currently the only piece of metadata available on
 * components is the name of the component, but more properties will be forthcoming.
 *
 * A node that can have instances created of it that share the same properties
 *
 * An array of canvases attached to the document
 *
 * Properties are shared across all nodes
 *
 * The root node within the document
 *
 * A rectangular region of the canvas that can be exported
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
 * X coordinate of the vector
 *
 * Y coordinate of the vector
 *
 * Width of column grid or height of row grid or square grid spacing
 *
 * Spacing in between columns and rows
 *
 * Spacing before the first column or row
 *
 * Number of columns or rows
 *
 * Opacity of the node
 *
 * X coordinate of top left corner of the rectangle
 *
 * Y coordinate of top left corner of the rectangle
 *
 * Width of the rectangle
 *
 * Height of the rectangle
 *
 * The weight of strokes on the node
 *
 * Overall opacity of paint (colors within the paint can also have opacity values which
 * would blend with this)
 *
 * Value between 0 and 1 representing position along gradient axis
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
 * Is the grid currently visible?
 *
 * Does this node mask sibling nodes in front of it?
 *
 * Does this node clip content outside of its bounds?
 *
 * How this node blends with nodes behind it in the scene (see blend mode section for more
 * details)
 *
 * Is the paint enabled?
 *
 * Is text italicized?
 *
 * A string uniquely identifying this node within the document
 *
 * The name given to the node by the user in the tool
 *
 * File suffix to append to all filenames
 *
 * Node ID of node to transition to in prototyping
 *
 * A group that has a boolean operation applied to it
 *
 * A text box
 *
 * Text contained within text box
 *
 * PostScript font name
 *
 * Font family of text (standard name)
 *
 * An instance of a component, changes to the component result in the same changes applied
 * to the instance
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
public class Component {
    private String id;
    private String name;
    private boolean visible;
    private NodeType type;
    private Effect[] effects;
    private LayoutGrid[] layoutGrids;
    private double opacity;
    private String transitionID;
    private Rectangle absoluteBoundingBox;
    private BlendMode blendMode;
    private Color backgroundColor;
    private LayoutConstraint constraints;
    private boolean isMask;
    private boolean clipsContent;
    private ExportSetting[] exportSettings;
    private boolean preserveRatio;
    private PurpleNode[] children;

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
     * An array of effects attached to this node (see effects section for more details)
     */
    @JsonProperty("effects")
    public Effect[] getEffects() { return effects; }
    @JsonProperty("effects")
    public void setEffects(Effect[] value) { this.effects = value; }

    /**
     * An array of layout grids attached to this node (see layout grids section for more
     * details). GROUP nodes do not have this attribute
     */
    @JsonProperty("layoutGrids")
    public LayoutGrid[] getLayoutGrids() { return layoutGrids; }
    @JsonProperty("layoutGrids")
    public void setLayoutGrids(LayoutGrid[] value) { this.layoutGrids = value; }

    /**
     * Opacity of the node
     */
    @JsonProperty("opacity")
    public double getOpacity() { return opacity; }
    @JsonProperty("opacity")
    public void setOpacity(double value) { this.opacity = value; }

    /**
     * Node ID of node to transition to in prototyping
     */
    @JsonProperty("transitionID")
    public String getTransitionID() { return transitionID; }
    @JsonProperty("transitionID")
    public void setTransitionID(String value) { this.transitionID = value; }

    /**
     * Bounding box of the node in absolute space coordinates
     */
    @JsonProperty("absoluteBoundingBox")
    public Rectangle getAbsoluteBoundingBox() { return absoluteBoundingBox; }
    @JsonProperty("absoluteBoundingBox")
    public void setAbsoluteBoundingBox(Rectangle value) { this.absoluteBoundingBox = value; }

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
    public Color getBackgroundColor() { return backgroundColor; }
    @JsonProperty("backgroundColor")
    public void setBackgroundColor(Color value) { this.backgroundColor = value; }

    /**
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    @JsonProperty("constraints")
    public LayoutConstraint getConstraints() { return constraints; }
    @JsonProperty("constraints")
    public void setConstraints(LayoutConstraint value) { this.constraints = value; }

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
    public ExportSetting[] getExportSettings() { return exportSettings; }
    @JsonProperty("exportSettings")
    public void setExportSettings(ExportSetting[] value) { this.exportSettings = value; }

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
    public PurpleNode[] getChildren() { return children; }
    @JsonProperty("children")
    public void setChildren(PurpleNode[] value) { this.children = value; }
}
