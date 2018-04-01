package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * An array of nodes that are direct children of this node
 * An array of nodes that are being boolean operated on
 * An array of top level layers on the canvas
 * An array of canvases attached to the document
 * Node Properties
 * The root node
 * The root node within the document
 * Represents a single page
 * A node of fixed size containing other nodes
 * A logical grouping of nodes
 * A vector network, consisting of vertices and edges
 * A group that has a boolean operation applied to it
 * A regular star shape
 * A straight line
 * An ellipse
 * A regular n-sided polygon
 * Bounding box of the node in absolute space coordinates
 * A rectangle
 * A text box
 * A rectangular region of the canvas that can be exported
 * A node that can have instances created of it that share the same properties
 * An instance of a component, changes to the component result in the same
 * changes applied to the instance
 */
public class Node {
    private Effect[] effects;
    private LayoutGrid[] layoutGrids;
    private Double cornerRadius;
    private String characters;
    private Double opacity;
    private String name;
    private StrokeAlign strokeAlign;
    private Double strokeWeight;
    private Paint[] fills;
    private Rectangle absoluteBoundingBox;
    private TypeStyle[] styleOverrideTable;
    private TypeStyle style;
    private String transitionNodeID;
    private boolean visible;
    private BlendMode blendMode;
    private Color backgroundColor;
    private LayoutConstraint constraints;
    private Boolean isMask;
    private Boolean clipsContent;
    private ExportSetting[] exportSettings;
    private String componentID;
    private NodeType type;
    private String id;
    private Paint[] strokes;
    private Boolean preserveRatio;
    private Node[] children;
    private double[] characterStyleOverrides;

    /**
     * An array of effects attached to this node
     * (see effects sectionfor more details)
     */
    @JsonProperty("effects")
    public Effect[] getEffects() { return effects; }
    @JsonProperty("effects")
    public void setEffects(Effect[] value) { this.effects = value; }

    /**
     * An array of layout grids attached to this node (see layout grids section
     * for more details). GROUP nodes do not have this attribute
     */
    @JsonProperty("layoutGrids")
    public LayoutGrid[] getLayoutGrids() { return layoutGrids; }
    @JsonProperty("layoutGrids")
    public void setLayoutGrids(LayoutGrid[] value) { this.layoutGrids = value; }

    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    @JsonProperty("cornerRadius")
    public Double getCornerRadius() { return cornerRadius; }
    @JsonProperty("cornerRadius")
    public void setCornerRadius(Double value) { this.cornerRadius = value; }

    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    @JsonProperty("characters")
    public String getCharacters() { return characters; }
    @JsonProperty("characters")
    public void setCharacters(String value) { this.characters = value; }

    /**
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    @JsonProperty("opacity")
    public Double getOpacity() { return opacity; }
    @JsonProperty("opacity")
    public void setOpacity(Double value) { this.opacity = value; }

    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }

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
     * X coordinate of the vector
     * Y coordinate of the vector
     * Radius of the blur effect (applies to shadows as well)
     * Red channel value, between 0 and 1
     * Green channel value, between 0 and 1
     * Blue channel value, between 0 and 1
     * Alpha channel value, between 0 and 1
     * Width of column grid or height of row grid or square grid spacing
     * Spacing in between columns and rows
     * Spacing before the first column or row
     * Number of columns or rows
     * Opacity of the node
     * Radius of each corner of the rectangle
     * The weight of strokes on the node
     * Overall opacity of paint (colors within the paint can also have opacity
     * values which would blend with this)
     * Value between 0 and 1 representing position along gradient axis
     * See type property for effect of this field
     * Line height in px
     * Numeric font weight
     * Line height as a percentage of normal line height
     * Font size in px
     * Space between characters in px
     * Array with same number of elements as characeters in text box,
     * each element is a reference to the styleOverrideTable defined
     * below and maps to the corresponding character in the characters
     * field. Elements with value 0 have the default type style
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    @JsonProperty("strokeWeight")
    public Double getStrokeWeight() { return strokeWeight; }
    @JsonProperty("strokeWeight")
    public void setStrokeWeight(Double value) { this.strokeWeight = value; }

    /**
     * An array of fill paints applied to the node
     * An array of stroke paints applied to the node
     * Paints applied to characters
     */
    @JsonProperty("fills")
    public Paint[] getFills() { return fills; }
    @JsonProperty("fills")
    public void setFills(Paint[] value) { this.fills = value; }

    /**
     * Bounding box of the node in absolute space coordinates
     * A rectangle
     */
    @JsonProperty("absoluteBoundingBox")
    public Rectangle getAbsoluteBoundingBox() { return absoluteBoundingBox; }
    @JsonProperty("absoluteBoundingBox")
    public void setAbsoluteBoundingBox(Rectangle value) { this.absoluteBoundingBox = value; }

    /**
     * Map from ID to TypeStyle for looking up style overrides
     */
    @JsonProperty("styleOverrideTable")
    public TypeStyle[] getStyleOverrideTable() { return styleOverrideTable; }
    @JsonProperty("styleOverrideTable")
    public void setStyleOverrideTable(TypeStyle[] value) { this.styleOverrideTable = value; }

    /**
     * Map from ID to TypeStyle for looking up style overrides
     * Metadata for character formatting
     * Style of text including font family and weight (see type style
     * section for more information)
     */
    @JsonProperty("style")
    public TypeStyle getStyle() { return style; }
    @JsonProperty("style")
    public void setStyle(TypeStyle value) { this.style = value; }

    /**
     * Node ID of node to transition to in prototyping
     */
    @JsonProperty("transitionNodeID")
    public String getTransitionNodeID() { return transitionNodeID; }
    @JsonProperty("transitionNodeID")
    public void setTransitionNodeID(String value) { this.transitionNodeID = value; }

    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    @JsonProperty("visible")
    public boolean getVisible() { return visible; }
    @JsonProperty("visible")
    public void setVisible(boolean value) { this.visible = value; }

    /**
     * Enum describing how layer blends with layers below
     * This type is a string enum with the following possible values
     * How this node blends with nodes behind it in the scene
     * (see blend mode section for more details)
     */
    @JsonProperty("blendMode")
    public BlendMode getBlendMode() { return blendMode; }
    @JsonProperty("blendMode")
    public void setBlendMode(BlendMode value) { this.blendMode = value; }

    /**
     * Background color of the node
     * An RGBA color
     * Solid color of the paint
     * Color attached to corresponding position
     * Color of the grid
     * Background color of the canvas
     */
    @JsonProperty("backgroundColor")
    public Color getBackgroundColor() { return backgroundColor; }
    @JsonProperty("backgroundColor")
    public void setBackgroundColor(Color value) { this.backgroundColor = value; }

    /**
     * Horizontal and vertical layout constraints for node
     * Layout constraint relative to containing Frame
     */
    @JsonProperty("constraints")
    public LayoutConstraint getConstraints() { return constraints; }
    @JsonProperty("constraints")
    public void setConstraints(LayoutConstraint value) { this.constraints = value; }

    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    @JsonProperty("isMask")
    public Boolean getIsMask() { return isMask; }
    @JsonProperty("isMask")
    public void setIsMask(Boolean value) { this.isMask = value; }

    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    @JsonProperty("clipsContent")
    public Boolean getClipsContent() { return clipsContent; }
    @JsonProperty("clipsContent")
    public void setClipsContent(Boolean value) { this.clipsContent = value; }

    /**
     * An array of export settings representing images to export from node
     * An array of export settings representing images to export from this node
     * An array of export settings representing images to export from the canvas
     */
    @JsonProperty("exportSettings")
    public ExportSetting[] getExportSettings() { return exportSettings; }
    @JsonProperty("exportSettings")
    public void setExportSettings(ExportSetting[] value) { this.exportSettings = value; }

    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    @JsonProperty("componentId")
    public String getComponentID() { return componentID; }
    @JsonProperty("componentId")
    public void setComponentID(String value) { this.componentID = value; }

    /**
     * the type of the node, refer to table below for details
     */
    @JsonProperty("type")
    public NodeType getType() { return type; }
    @JsonProperty("type")
    public void setType(NodeType value) { this.type = value; }

    /**
     * Allows manipulation and formatting of text strings and determination and location of
     * substrings within strings.
     * the name given to the node by the user in the tool.
     * Image scaling mode
     * File suffix to append to all filenames
     * a string uniquely identifying this node within the document
     * Text contained within text box
     * PostScript font name
     * Font family of text (standard name)
     * ID of component that this instance came from, refers to components
     * table (see endpoints section below)
     * (MISSING IN DOCS)
     * The content of the comment
     * If present, the id of the comment to which this is the reply
     * Unique identifier for comment
     * The file in which the comment lives
     * utc date in iso8601
     */
    @JsonProperty("id")
    public String getID() { return id; }
    @JsonProperty("id")
    public void setID(String value) { this.id = value; }

    /**
     * An array of fill paints applied to the node
     * An array of stroke paints applied to the node
     * Paints applied to characters
     */
    @JsonProperty("strokes")
    public Paint[] getStrokes() { return strokes; }
    @JsonProperty("strokes")
    public void setStrokes(Paint[] value) { this.strokes = value; }

    /**
     * Is the effect active?
     * Is the grid currently visible?
     * Is the paint enabled?
     * whether or not the node is visible on the canvas
     * Does this node mask sibling nodes in front of it?
     * Keep height and width constrained to same ratio
     * Does this node clip content outside of its bounds?
     * Is text italicized?
     */
    @JsonProperty("preserveRatio")
    public Boolean getPreserveRatio() { return preserveRatio; }
    @JsonProperty("preserveRatio")
    public void setPreserveRatio(Boolean value) { this.preserveRatio = value; }

    /**
     * An array of nodes that are direct children of this node
     * An array of nodes that are being boolean operated on
     * An array of top level layers on the canvas
     * An array of canvases attached to the document
     */
    @JsonProperty("children")
    public Node[] getChildren() { return children; }
    @JsonProperty("children")
    public void setChildren(Node[] value) { this.children = value; }

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
}
