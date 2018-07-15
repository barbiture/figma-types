package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Node Properties
 * The root node
 *
 * The root node within the document
 *
 * Represents a single page
 *
 * A node of fixed size containing other nodes
 *
 * A logical grouping of nodes
 *
 * A vector network, consisting of vertices and edges
 *
 * A group that has a boolean operation applied to it
 *
 * A regular star shape
 *
 * A straight line
 *
 * An ellipse
 *
 * A regular n-sided polygon
 *
 * A rectangle
 *
 * A text box
 *
 * A rectangular region of the canvas that can be exported
 *
 * A node that can have instances created of it that share the same properties
 * A description of a master component. Helps you identify which component
 * instances are attached to
 *
 * An instance of a component, changes to the component result in the same
 * changes applied to the instance
 */
public class Document {
    private Document[] children;
    private String id;
    private String name;
    private NodeType type;
    private boolean visible;
    private Color backgroundColor;
    private ExportSetting[] exportSettings;
    private Rect absoluteBoundingBox;
    private BlendMode blendMode;
    private Boolean clipsContent;
    private LayoutConstraint constraints;
    private Effect[] effects;
    private Boolean isMask;
    private LayoutGrid[] layoutGrids;
    private Double opacity;
    private Boolean preserveRatio;
    private String transitionNodeID;
    private Paint[] fills;
    private StrokeAlign strokeAlign;
    private Paint[] strokes;
    private Double strokeWeight;
    private Double cornerRadius;
    private String characters;
    private double[] characterStyleOverrides;
    private TypeStyle style;
    private TypeStyle[] styleOverrideTable;
    private String description;
    private String componentID;

    /**
     * An array of canvases attached to the document
     *
     * An array of top level layers on the canvas
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    @JsonProperty("children")
    public Document[] getChildren() { return children; }
    @JsonProperty("children")
    public void setChildren(Document[] value) { this.children = value; }

    /**
     * a string uniquely identifying this node within the document
     */
    @JsonProperty("id")
    public String getID() { return id; }
    @JsonProperty("id")
    public void setID(String value) { this.id = value; }

    /**
     * the name given to the node by the user in the tool.
     *
     * The name of the component
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

    /**
     * Background color of the canvas
     *
     * Background color of the node
     */
    @JsonProperty("backgroundColor")
    public Color getBackgroundColor() { return backgroundColor; }
    @JsonProperty("backgroundColor")
    public void setBackgroundColor(Color value) { this.backgroundColor = value; }

    /**
     * An array of export settings representing images to export from the canvas
     *
     * An array of export settings representing images to export from node
     *
     * An array of export settings representing images to export from this node
     */
    @JsonProperty("exportSettings")
    public ExportSetting[] getExportSettings() { return exportSettings; }
    @JsonProperty("exportSettings")
    public void setExportSettings(ExportSetting[] value) { this.exportSettings = value; }

    /**
     * Bounding box of the node in absolute space coordinates
     */
    @JsonProperty("absoluteBoundingBox")
    public Rect getAbsoluteBoundingBox() { return absoluteBoundingBox; }
    @JsonProperty("absoluteBoundingBox")
    public void setAbsoluteBoundingBox(Rect value) { this.absoluteBoundingBox = value; }

    /**
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    @JsonProperty("blendMode")
    public BlendMode getBlendMode() { return blendMode; }
    @JsonProperty("blendMode")
    public void setBlendMode(BlendMode value) { this.blendMode = value; }

    /**
     * Does this node clip content outside of its bounds?
     */
    @JsonProperty("clipsContent")
    public Boolean getClipsContent() { return clipsContent; }
    @JsonProperty("clipsContent")
    public void setClipsContent(Boolean value) { this.clipsContent = value; }

    /**
     * Horizontal and vertical layout constraints for node
     */
    @JsonProperty("constraints")
    public LayoutConstraint getConstraints() { return constraints; }
    @JsonProperty("constraints")
    public void setConstraints(LayoutConstraint value) { this.constraints = value; }

    /**
     * An array of effects attached to this node
     * (see effects section for more details)
     */
    @JsonProperty("effects")
    public Effect[] getEffects() { return effects; }
    @JsonProperty("effects")
    public void setEffects(Effect[] value) { this.effects = value; }

    /**
     * Does this node mask sibling nodes in front of it?
     */
    @JsonProperty("isMask")
    public Boolean getIsMask() { return isMask; }
    @JsonProperty("isMask")
    public void setIsMask(Boolean value) { this.isMask = value; }

    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    @JsonProperty("layoutGrids")
    public LayoutGrid[] getLayoutGrids() { return layoutGrids; }
    @JsonProperty("layoutGrids")
    public void setLayoutGrids(LayoutGrid[] value) { this.layoutGrids = value; }

    /**
     * Opacity of the node
     */
    @JsonProperty("opacity")
    public Double getOpacity() { return opacity; }
    @JsonProperty("opacity")
    public void setOpacity(Double value) { this.opacity = value; }

    /**
     * Keep height and width constrained to same ratio
     */
    @JsonProperty("preserveRatio")
    public Boolean getPreserveRatio() { return preserveRatio; }
    @JsonProperty("preserveRatio")
    public void setPreserveRatio(Boolean value) { this.preserveRatio = value; }

    /**
     * Node ID of node to transition to in prototyping
     */
    @JsonProperty("transitionNodeID")
    public String getTransitionNodeID() { return transitionNodeID; }
    @JsonProperty("transitionNodeID")
    public void setTransitionNodeID(String value) { this.transitionNodeID = value; }

    /**
     * An array of fill paints applied to the node
     */
    @JsonProperty("fills")
    public Paint[] getFills() { return fills; }
    @JsonProperty("fills")
    public void setFills(Paint[] value) { this.fills = value; }

    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     * "INSIDE": draw stroke inside the shape boundary
     * "OUTSIDE": draw stroke outside the shape boundary
     * "CENTER": draw stroke centered along the shape boundary
     */
    @JsonProperty("strokeAlign")
    public StrokeAlign getStrokeAlign() { return strokeAlign; }
    @JsonProperty("strokeAlign")
    public void setStrokeAlign(StrokeAlign value) { this.strokeAlign = value; }

    /**
     * An array of stroke paints applied to the node
     */
    @JsonProperty("strokes")
    public Paint[] getStrokes() { return strokes; }
    @JsonProperty("strokes")
    public void setStrokes(Paint[] value) { this.strokes = value; }

    /**
     * The weight of strokes on the node
     */
    @JsonProperty("strokeWeight")
    public Double getStrokeWeight() { return strokeWeight; }
    @JsonProperty("strokeWeight")
    public void setStrokeWeight(Double value) { this.strokeWeight = value; }

    /**
     * Radius of each corner of the rectangle
     */
    @JsonProperty("cornerRadius")
    public Double getCornerRadius() { return cornerRadius; }
    @JsonProperty("cornerRadius")
    public void setCornerRadius(Double value) { this.cornerRadius = value; }

    /**
     * Text contained within text box
     */
    @JsonProperty("characters")
    public String getCharacters() { return characters; }
    @JsonProperty("characters")
    public void setCharacters(String value) { this.characters = value; }

    /**
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     */
    @JsonProperty("characterStyleOverrides")
    public double[] getCharacterStyleOverrides() { return characterStyleOverrides; }
    @JsonProperty("characterStyleOverrides")
    public void setCharacterStyleOverrides(double[] value) { this.characterStyleOverrides = value; }

    /**
     * Style of text including font family and weight (see type style
     * section for more information)
     */
    @JsonProperty("style")
    public TypeStyle getStyle() { return style; }
    @JsonProperty("style")
    public void setStyle(TypeStyle value) { this.style = value; }

    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    @JsonProperty("styleOverrideTable")
    public TypeStyle[] getStyleOverrideTable() { return styleOverrideTable; }
    @JsonProperty("styleOverrideTable")
    public void setStyleOverrideTable(TypeStyle[] value) { this.styleOverrideTable = value; }

    /**
     * The description of the component as entered in the editor
     */
    @JsonProperty("description")
    public String getDescription() { return description; }
    @JsonProperty("description")
    public void setDescription(String value) { this.description = value; }

    /**
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     */
    @JsonProperty("componentId")
    public String getComponentID() { return componentID; }
    @JsonProperty("componentId")
    public void setComponentID(String value) { this.componentID = value; }
}
