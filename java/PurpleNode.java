package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * An array of nodes that are direct children of this node
 *
 * An array of canvases attached to the document
 *
 * The root node within the document
 *
 * Properties are shared across all nodes
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
 *
 * A logical grouping of nodes
 *
 * A regular star shape
 *
 * A straight line
 *
 * An ellipse
 *
 * A regular n-sided polygon
 *
 * A rectangle that expresses a bounding box in absolute coordinates
 *
 * Bounding box of the node in absolute space coordinates
 *
 * A node that can have instances created of it that share the same properties
 */
public class PurpleNode {
    private String id;
    private String name;
    private Boolean visible;
    private NodeType type;
    private NodeNode[] children;
    private Color backgroundColor;
    private ExportSetting[] exportSettings;
    private Effect[] effects;
    private LayoutGrid[] layoutGrids;
    private Double opacity;
    private String transitionID;
    private Rectangle absoluteBoundingBox;
    private BlendMode blendMode;
    private LayoutConstraint constraints;
    private Boolean isMask;
    private Boolean clipsContent;
    private Boolean preserveRatio;
    private StrokeAlign strokeAlign;
    private Double strokeWeight;
    private Paint[] fills;
    private Paint[] strokes;
    private Double x;
    private Double y;
    private Double width;
    private Double height;
    private String characters;
    private TypeStyle style;
    private double[] characterStyleOverrides;
    private Map<String, TypeStyle> styleOverrideTable;
    private String componentID;

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
    public Boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(Boolean value) { this.visible = value; }

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
     *
     * An array of nodes that are direct children of this node
     *
     * An array of nodes that are being boolean operated on
     */
    @JsonProperty("children")
    public NodeNode[] getChildren() { return children; }
    @JsonProperty("children")
    public void setChildren(NodeNode[] value) { this.children = value; }

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
     * A rectangular region of the canvas that can be exported
     */
    @JsonProperty("exportSettings")
    public ExportSetting[] getExportSettings() { return exportSettings; }
    @JsonProperty("exportSettings")
    public void setExportSettings(ExportSetting[] value) { this.exportSettings = value; }

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
    public Double getOpacity() { return opacity; }
    @JsonProperty("opacity")
    public void setOpacity(Double value) { this.opacity = value; }

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
     * How this node blends with nodes behind it in the scene (see blend mode section for more
     * details)
     */
    @JsonProperty("preserveRatio")
    public Boolean getPreserveRatio() { return preserveRatio; }
    @JsonProperty("preserveRatio")
    public void setPreserveRatio(Boolean value) { this.preserveRatio = value; }

    /**
     * Where stroke is drawn relative to the vector outline as a string enum
     *
     * * INSIDE: draw stroke inside the shape boundary
     * * OUTSIDE: draw stroke outside the shape boundary
     * * CENTER: draw stroke centered along the shape boundary
     */
    @JsonProperty("strokeAlign")
    public StrokeAlign getStrokeAlign() { return strokeAlign; }
    @JsonProperty("strokeAlign")
    public void setStrokeAlign(StrokeAlign value) { this.strokeAlign = value; }

    /**
     * The weight of strokes on the node
     */
    @JsonProperty("strokeWeight")
    public Double getStrokeWeight() { return strokeWeight; }
    @JsonProperty("strokeWeight")
    public void setStrokeWeight(Double value) { this.strokeWeight = value; }

    /**
     * An array of fill paints applied to the node
     */
    @JsonProperty("fills")
    public Paint[] getFills() { return fills; }
    @JsonProperty("fills")
    public void setFills(Paint[] value) { this.fills = value; }

    /**
     * An array of stroke paints applied to the node
     */
    @JsonProperty("strokes")
    public Paint[] getStrokes() { return strokes; }
    @JsonProperty("strokes")
    public void setStrokes(Paint[] value) { this.strokes = value; }

    /**
     * X coordinate of top left corner of the rectangle
     */
    @JsonProperty("x")
    public Double getX() { return x; }
    @JsonProperty("x")
    public void setX(Double value) { this.x = value; }

    /**
     * Y coordinate of top left corner of the rectangle
     */
    @JsonProperty("y")
    public Double getY() { return y; }
    @JsonProperty("y")
    public void setY(Double value) { this.y = value; }

    /**
     * Width of the rectangle
     */
    @JsonProperty("width")
    public Double getWidth() { return width; }
    @JsonProperty("width")
    public void setWidth(Double value) { this.width = value; }

    /**
     * Height of the rectangle
     */
    @JsonProperty("height")
    public Double getHeight() { return height; }
    @JsonProperty("height")
    public void setHeight(Double value) { this.height = value; }

    /**
     * Text contained within text box
     */
    @JsonProperty("characters")
    public String getCharacters() { return characters; }
    @JsonProperty("characters")
    public void setCharacters(String value) { this.characters = value; }

    /**
     * Style of text including font family and weight (see type style section for more
     * information)
     */
    @JsonProperty("style")
    public TypeStyle getStyle() { return style; }
    @JsonProperty("style")
    public void setStyle(TypeStyle value) { this.style = value; }

    /**
     * Array with same number of elements as characeters in text box, each element is a
     * reference to the styleOverrideTable defined below and maps to the corresponding character
     * in the characters field. Elements with value 0 have the default type style
     */
    @JsonProperty("characterStyleOverrides")
    public double[] getCharacterStyleOverrides() { return characterStyleOverrides; }
    @JsonProperty("characterStyleOverrides")
    public void setCharacterStyleOverrides(double[] value) { this.characterStyleOverrides = value; }

    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    @JsonProperty("styleOverrideTable")
    public Map<String, TypeStyle> getStyleOverrideTable() { return styleOverrideTable; }
    @JsonProperty("styleOverrideTable")
    public void setStyleOverrideTable(Map<String, TypeStyle> value) { this.styleOverrideTable = value; }

    /**
     * ID of component that this instance came from, refers to components table (see endpoints
     * section below)
     */
    @JsonProperty("componentId")
    public String getComponentID() { return componentID; }
    @JsonProperty("componentId")
    public void setComponentID(String value) { this.componentID = value; }
}
