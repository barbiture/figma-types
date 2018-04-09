// To parse this JSON data, add NuGet 'Newtonsoft.Json' then do one of these:
//
//    using QuickType;
//
//    var fileResponse = FileResponse.FromJson(jsonString);
//    var commentsResponse = CommentsResponse.FromJson(jsonString);
//    var commentRequest = CommentRequest.FromJson(jsonString);
//    var projectsResponse = ProjectsResponse.FromJson(jsonString);
//    var projectFilesResponse = ProjectFilesResponse.FromJson(jsonString);

namespace QuickType
{
    using System;
    using System.Collections.Generic;

    using System.Globalization;
    using Newtonsoft.Json;
    using Newtonsoft.Json.Converters;

    /// <summary>
    /// GET /v1/files/:key
    ///
    /// > Description
    ///
    /// Returns the document refered to by :key as a JSON object. The file key can be parsed from
    /// any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
    /// contains a Node of type DOCUMENT.
    ///
    /// The "components" key contains a mapping from node IDs to component metadata. This is to
    /// help you determine which components each instance comes from. Currently the only piece of
    /// metadata available on components is the name of the component, but more properties will
    /// be forthcoming.
    ///
    /// > Path parameters
    ///
    /// key String
    /// File to export JSON from
    /// </summary>
    public partial class FileResponse
    {
        /// <summary>
        /// A mapping from node IDs to component metadata. This is to help you determine which
        /// components each instance comes from. Currently the only piece of metadata available on
        /// components is the name of the component, but more properties will be forthcoming.
        /// </summary>
        [JsonProperty("components")]
        public Dictionary<string, Component> Components { get; set; }

        /// <summary>
        /// The root node within the document
        /// </summary>
        [JsonProperty("document")]
        public FileResponseDocument Document { get; set; }

        [JsonProperty("schemaVersion")]
        public double SchemaVersion { get; set; }
    }

    /// <summary>
    /// A node that can have instances created of it that share the same properties
    /// </summary>
    public partial class Component
    {
        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public Rect AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public Color BackgroundColor { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene
        /// (see blend mode section for more details)
        /// </summary>
        [JsonProperty("blendMode")]
        public LendMode BlendMode { get; set; }

        /// <summary>
        /// An array of nodes that are direct children of this node
        /// </summary>
        [JsonProperty("children")]
        public DocumentElement[] Children { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool ClipsContent { get; set; }

        /// <summary>
        /// Horizontal and vertical layout constraints for node
        /// </summary>
        [JsonProperty("constraints")]
        public LayoutConstraint Constraints { get; set; }

        /// <summary>
        /// An array of effects attached to this node
        /// (see effects sectionfor more details)
        /// </summary>
        [JsonProperty("effects")]
        public Effect[] Effects { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSetting[] ExportSettings { get; set; }

        /// <summary>
        /// a string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section
        /// for more details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGrid[] LayoutGrids { get; set; }

        /// <summary>
        /// the name given to the node by the user in the tool.
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Keep height and width constrained to same ratio
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// the type of the node, refer to table below for details
        /// </summary>
        [JsonProperty("type")]
        public NodeType Type { get; set; }

        /// <summary>
        /// whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }
    }

    /// <summary>
    /// Bounding box of the node in absolute space coordinates
    ///
    /// A rectangle that expresses a bounding box in absolute coordinates
    /// </summary>
    public partial class Rect
    {
        /// <summary>
        /// Height of the rectangle
        /// </summary>
        [JsonProperty("height")]
        public double Height { get; set; }

        /// <summary>
        /// Width of the rectangle
        /// </summary>
        [JsonProperty("width")]
        public double Width { get; set; }

        /// <summary>
        /// X coordinate of top left corner of the rectangle
        /// </summary>
        [JsonProperty("x")]
        public double X { get; set; }

        /// <summary>
        /// Y coordinate of top left corner of the rectangle
        /// </summary>
        [JsonProperty("y")]
        public double Y { get; set; }
    }

    /// <summary>
    /// Background color of the node
    ///
    /// An RGBA color
    ///
    /// Solid color of the paint
    ///
    /// Background color of the canvas
    ///
    /// Color attached to corresponding position
    ///
    /// Color of the grid
    /// </summary>
    public partial class Color
    {
        /// <summary>
        /// Alpha channel value, between 0 and 1
        /// </summary>
        [JsonProperty("a")]
        public double A { get; set; }

        /// <summary>
        /// Blue channel value, between 0 and 1
        /// </summary>
        [JsonProperty("b")]
        public double B { get; set; }

        /// <summary>
        /// Green channel value, between 0 and 1
        /// </summary>
        [JsonProperty("g")]
        public double G { get; set; }

        /// <summary>
        /// Red channel value, between 0 and 1
        /// </summary>
        [JsonProperty("r")]
        public double R { get; set; }
    }

    /// <summary>
    /// An array of nodes that are direct children of this node
    ///
    /// An array of nodes that are being boolean operated on
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of canvases attached to the document
    ///
    /// Node Properties
    /// The root node
    ///
    /// The root node within the document
    ///
    /// Represents a single page
    ///
    /// A node of fixed size containing other nodes
    ///
    /// A logical grouping of nodes
    ///
    /// A vector network, consisting of vertices and edges
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// An ellipse
    ///
    /// A regular n-sided polygon
    ///
    /// A rectangle
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same
    /// changes applied to the instance
    /// </summary>
    public partial class DocumentElement
    {
        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        ///
        /// An array of nodes that are direct children of this node
        ///
        /// An array of nodes that are being boolean operated on
        /// </summary>
        [JsonProperty("children", NullValueHandling = NullValueHandling.Ignore)]
        public DocumentElement[] Children { get; set; }

        /// <summary>
        /// a string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// the name given to the node by the user in the tool.
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// the type of the node, refer to table below for details
        /// </summary>
        [JsonProperty("type")]
        public NodeType Type { get; set; }

        /// <summary>
        /// whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// Background color of the canvas
        ///
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor", NullValueHandling = NullValueHandling.Ignore)]
        public Color BackgroundColor { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from the canvas
        ///
        /// An array of export settings representing images to export from node
        ///
        /// An array of export settings representing images to export from this node
        /// </summary>
        [JsonProperty("exportSettings", NullValueHandling = NullValueHandling.Ignore)]
        public ExportSetting[] ExportSettings { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox", NullValueHandling = NullValueHandling.Ignore)]
        public Rect AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene
        /// (see blend mode section for more details)
        /// </summary>
        [JsonProperty("blendMode", NullValueHandling = NullValueHandling.Ignore)]
        public LendMode? BlendMode { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent", NullValueHandling = NullValueHandling.Ignore)]
        public bool? ClipsContent { get; set; }

        /// <summary>
        /// Horizontal and vertical layout constraints for node
        /// </summary>
        [JsonProperty("constraints", NullValueHandling = NullValueHandling.Ignore)]
        public LayoutConstraint Constraints { get; set; }

        /// <summary>
        /// An array of effects attached to this node
        /// (see effects sectionfor more details)
        /// </summary>
        [JsonProperty("effects", NullValueHandling = NullValueHandling.Ignore)]
        public Effect[] Effects { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask", NullValueHandling = NullValueHandling.Ignore)]
        public bool? IsMask { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section
        /// for more details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids", NullValueHandling = NullValueHandling.Ignore)]
        public LayoutGrid[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity", NullValueHandling = NullValueHandling.Ignore)]
        public double? Opacity { get; set; }

        /// <summary>
        /// Keep height and width constrained to same ratio
        /// </summary>
        [JsonProperty("preserveRatio", NullValueHandling = NullValueHandling.Ignore)]
        public bool? PreserveRatio { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills", NullValueHandling = NullValueHandling.Ignore)]
        public Paint[] Fills { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        /// "INSIDE": draw stroke inside the shape boundary
        /// "OUTSIDE": draw stroke outside the shape boundary
        /// "CENTER": draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign", NullValueHandling = NullValueHandling.Ignore)]
        public StrokeAlign? StrokeAlign { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes", NullValueHandling = NullValueHandling.Ignore)]
        public Paint[] Strokes { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight", NullValueHandling = NullValueHandling.Ignore)]
        public double? StrokeWeight { get; set; }

        /// <summary>
        /// Radius of each corner of the rectangle
        /// </summary>
        [JsonProperty("cornerRadius", NullValueHandling = NullValueHandling.Ignore)]
        public double? CornerRadius { get; set; }

        /// <summary>
        /// Text contained within text box
        /// </summary>
        [JsonProperty("characters", NullValueHandling = NullValueHandling.Ignore)]
        public string Characters { get; set; }

        /// <summary>
        /// Array with same number of elements as characeters in text box,
        /// each element is a reference to the styleOverrideTable defined
        /// below and maps to the corresponding character in the characters
        /// field. Elements with value 0 have the default type style
        /// </summary>
        [JsonProperty("characterStyleOverrides", NullValueHandling = NullValueHandling.Ignore)]
        public double[] CharacterStyleOverrides { get; set; }

        /// <summary>
        /// Style of text including font family and weight (see type style
        /// section for more information)
        /// </summary>
        [JsonProperty("style", NullValueHandling = NullValueHandling.Ignore)]
        public TypeStyle Style { get; set; }

        /// <summary>
        /// Map from ID to TypeStyle for looking up style overrides
        /// </summary>
        [JsonProperty("styleOverrideTable", NullValueHandling = NullValueHandling.Ignore)]
        public TypeStyle[] StyleOverrideTable { get; set; }

        /// <summary>
        /// ID of component that this instance came from, refers to components
        /// table (see endpoints section below)
        /// </summary>
        [JsonProperty("componentId", NullValueHandling = NullValueHandling.Ignore)]
        public string ComponentId { get; set; }
    }

    /// <summary>
    /// Horizontal and vertical layout constraints for node
    ///
    /// Layout constraint relative to containing Frame
    /// </summary>
    public partial class LayoutConstraint
    {
        /// <summary>
        /// Horizontal constraint as an enum
        /// "LEFT": Node is laid out relative to left of the containing frame
        /// "RIGHT": Node is laid out relative to right of the containing frame
        /// "CENTER": Node is horizontally centered relative to containing frame
        /// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
        /// (node stretches with frame)
        /// "SCALE": Node scales horizontally with containing frame
        /// </summary>
        [JsonProperty("horizontal")]
        public Horizontal Horizontal { get; set; }

        /// <summary>
        /// Vertical constraint as an enum
        /// "TOP": Node is laid out relative to top of the containing frame
        /// "BOTTOM": Node is laid out relative to bottom of the containing frame
        /// "CENTER": Node is vertically centered relative to containing frame
        /// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
        /// (node stretches with frame)
        /// "SCALE": Node scales vertically with containing frame
        /// </summary>
        [JsonProperty("vertical")]
        public Vertical Vertical { get; set; }
    }

    /// <summary>
    /// An array of effects attached to this node
    /// (see effects sectionfor more details)
    ///
    /// A visual effect such as a shadow or blur
    /// </summary>
    public partial class Effect
    {
        /// <summary>
        /// Enum describing how layer blends with layers below
        /// This type is a string enum with the following possible values
        /// </summary>
        [JsonProperty("blendMode", NullValueHandling = NullValueHandling.Ignore)]
        public LendMode? BlendMode { get; set; }

        /// <summary>
        /// An RGBA color
        /// </summary>
        [JsonProperty("color", NullValueHandling = NullValueHandling.Ignore)]
        public Color Color { get; set; }

        /// <summary>
        /// A 2d vector
        /// </summary>
        [JsonProperty("offset", NullValueHandling = NullValueHandling.Ignore)]
        public Vector2 Offset { get; set; }

        /// <summary>
        /// Radius of the blur effect (applies to shadows as well)
        /// </summary>
        [JsonProperty("radius")]
        public double Radius { get; set; }

        /// <summary>
        /// Type of effect as a string enum
        /// </summary>
        [JsonProperty("type")]
        public EffectType Type { get; set; }

        /// <summary>
        /// Is the effect active?
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }
    }

    /// <summary>
    /// A 2d vector
    ///
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    ///
    /// 2d vector offset within the frame.
    /// </summary>
    public partial class Vector2
    {
        /// <summary>
        /// X coordinate of the vector
        /// </summary>
        [JsonProperty("x")]
        public double X { get; set; }

        /// <summary>
        /// Y coordinate of the vector
        /// </summary>
        [JsonProperty("y")]
        public double Y { get; set; }
    }

    /// <summary>
    /// An array of export settings representing images to export from node
    ///
    /// Format and size to export an asset at
    ///
    /// An array of export settings representing images to export from the canvas
    ///
    /// An array of export settings representing images to export from this node
    /// </summary>
    public partial class ExportSetting
    {
        /// <summary>
        /// Constraint that determines sizing of exported asset
        /// </summary>
        [JsonProperty("constraint")]
        public Constraint Constraint { get; set; }

        /// <summary>
        /// Image type, string enum
        /// </summary>
        [JsonProperty("format")]
        public Format Format { get; set; }

        /// <summary>
        /// File suffix to append to all filenames
        /// </summary>
        [JsonProperty("suffix")]
        public string Suffix { get; set; }
    }

    /// <summary>
    /// Constraint that determines sizing of exported asset
    ///
    /// Sizing constraint for exports
    /// </summary>
    public partial class Constraint
    {
        /// <summary>
        /// Type of constraint to apply; string enum with potential values below
        /// "SCALE": Scale by value
        /// "WIDTH": Scale proportionally and set width to value
        /// "HEIGHT": Scale proportionally and set height to value
        /// </summary>
        [JsonProperty("type")]
        public ConstraintType Type { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("value")]
        public double Value { get; set; }
    }

    /// <summary>
    /// An array of fill paints applied to the node
    ///
    /// A solid color, gradient, or image texture that can be applied as fills or strokes
    ///
    /// An array of stroke paints applied to the node
    ///
    /// Paints applied to characters
    /// </summary>
    public partial class Paint
    {
        /// <summary>
        /// Solid color of the paint
        /// </summary>
        [JsonProperty("color", NullValueHandling = NullValueHandling.Ignore)]
        public Color Color { get; set; }

        /// <summary>
        /// This field contains three vectors, each of which are a position in
        /// normalized object space (normalized object space is if the top left
        /// corner of the bounding box of the object is (0, 0) and the bottom
        /// right is (1,1)). The first position corresponds to the start of the
        /// gradient (value 0 for the purposes of calculating gradient stops),
        /// the second position is the end of the gradient (value 1), and the
        /// third handle position determines the width of the gradient (only
        /// relevant for non-linear gradients).
        /// </summary>
        [JsonProperty("gradientHandlePositions", NullValueHandling = NullValueHandling.Ignore)]
        public Vector2[] GradientHandlePositions { get; set; }

        /// <summary>
        /// Positions of key points along the gradient axis with the colors
        /// anchored there. Colors along the gradient are interpolated smoothly
        /// between neighboring gradient stops.
        /// </summary>
        [JsonProperty("gradientStops", NullValueHandling = NullValueHandling.Ignore)]
        public ColorStop[] GradientStops { get; set; }

        /// <summary>
        /// Overall opacity of paint (colors within the paint can also have opacity
        /// values which would blend with this)
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Image scaling mode
        /// </summary>
        [JsonProperty("scaleMode", NullValueHandling = NullValueHandling.Ignore)]
        public string ScaleMode { get; set; }

        /// <summary>
        /// Type of paint as a string enum
        /// </summary>
        [JsonProperty("type")]
        public PaintType Type { get; set; }

        /// <summary>
        /// Is the paint enabled?
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }
    }

    /// <summary>
    /// Positions of key points along the gradient axis with the colors
    /// anchored there. Colors along the gradient are interpolated smoothly
    /// between neighboring gradient stops.
    ///
    /// A position color pair representing a gradient stop
    /// </summary>
    public partial class ColorStop
    {
        /// <summary>
        /// Color attached to corresponding position
        /// </summary>
        [JsonProperty("color")]
        public Color Color { get; set; }

        /// <summary>
        /// Value between 0 and 1 representing position along gradient axis
        /// </summary>
        [JsonProperty("position")]
        public double Position { get; set; }
    }

    /// <summary>
    /// An array of layout grids attached to this node (see layout grids section
    /// for more details). GROUP nodes do not have this attribute
    ///
    /// Guides to align and place objects within a frame
    /// </summary>
    public partial class LayoutGrid
    {
        /// <summary>
        /// Positioning of grid as a string enum
        /// "MIN": Grid starts at the left or top of the frame
        /// "MAX": Grid starts at the right or bottom of the frame
        /// "CENTER": Grid is center aligned
        /// </summary>
        [JsonProperty("alignment")]
        public Alignment Alignment { get; set; }

        /// <summary>
        /// Color of the grid
        /// </summary>
        [JsonProperty("color")]
        public Color Color { get; set; }

        /// <summary>
        /// Number of columns or rows
        /// </summary>
        [JsonProperty("count")]
        public double Count { get; set; }

        /// <summary>
        /// Spacing in between columns and rows
        /// </summary>
        [JsonProperty("gutterSize")]
        public double GutterSize { get; set; }

        /// <summary>
        /// Spacing before the first column or row
        /// </summary>
        [JsonProperty("offset")]
        public double Offset { get; set; }

        /// <summary>
        /// Orientation of the grid as a string enum
        /// "COLUMNS": Vertical grid
        /// "ROWS": Horizontal grid
        /// "GRID": Square grid
        /// </summary>
        [JsonProperty("pattern")]
        public Pattern Pattern { get; set; }

        /// <summary>
        /// Width of column grid or height of row grid or square grid spacing
        /// </summary>
        [JsonProperty("sectionSize")]
        public double SectionSize { get; set; }

        /// <summary>
        /// Is the grid currently visible?
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }
    }

    /// <summary>
    /// Map from ID to TypeStyle for looking up style overrides
    ///
    /// Metadata for character formatting
    ///
    /// Style of text including font family and weight (see type style
    /// section for more information)
    /// </summary>
    public partial class TypeStyle
    {
        /// <summary>
        /// Paints applied to characters
        /// </summary>
        [JsonProperty("fills")]
        public Paint[] Fills { get; set; }

        /// <summary>
        /// Font family of text (standard name)
        /// </summary>
        [JsonProperty("fontFamily")]
        public string FontFamily { get; set; }

        /// <summary>
        /// PostScript font name
        /// </summary>
        [JsonProperty("fontPostScriptName")]
        public string FontPostScriptName { get; set; }

        /// <summary>
        /// Font size in px
        /// </summary>
        [JsonProperty("fontSize")]
        public double FontSize { get; set; }

        /// <summary>
        /// Numeric font weight
        /// </summary>
        [JsonProperty("fontWeight")]
        public double FontWeight { get; set; }

        /// <summary>
        /// Is text italicized?
        /// </summary>
        [JsonProperty("italic")]
        public bool Italic { get; set; }

        /// <summary>
        /// Space between characters in px
        /// </summary>
        [JsonProperty("letterSpacing")]
        public double LetterSpacing { get; set; }

        /// <summary>
        /// Line height as a percentage of normal line height
        /// </summary>
        [JsonProperty("lineHeightPercent")]
        public double LineHeightPercent { get; set; }

        /// <summary>
        /// Line height in px
        /// </summary>
        [JsonProperty("lineHeightPx")]
        public double LineHeightPx { get; set; }

        /// <summary>
        /// Horizontal text alignment as string enum
        /// </summary>
        [JsonProperty("textAlignHorizontal")]
        public TextAlignHorizontal TextAlignHorizontal { get; set; }

        /// <summary>
        /// Vertical text alignment as string enum
        /// </summary>
        [JsonProperty("textAlignVertical")]
        public TextAlignVertical TextAlignVertical { get; set; }
    }

    /// <summary>
    /// Node Properties
    /// The root node
    ///
    /// The root node within the document
    /// </summary>
    public partial class FileResponseDocument
    {
        /// <summary>
        /// An array of canvases attached to the document
        /// </summary>
        [JsonProperty("children")]
        public DocumentElement[] Children { get; set; }

        /// <summary>
        /// a string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// the name given to the node by the user in the tool.
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// the type of the node, refer to table below for details
        /// </summary>
        [JsonProperty("type")]
        public NodeType Type { get; set; }

        /// <summary>
        /// whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }
    }

    /// <summary>
    /// GET /v1/files/:key/comments
    ///
    /// > Description
    /// A list of comments left on the file.
    ///
    /// > Path parameters
    /// key String
    /// File to get comments from
    /// </summary>
    public partial class CommentsResponse
    {
        [JsonProperty("comments")]
        public Comment[] Comments { get; set; }
    }

    /// <summary>
    /// A comment or reply left by a user
    /// </summary>
    public partial class Comment
    {
        [JsonProperty("client_meta")]
        public ClientMeta ClientMeta { get; set; }

        /// <summary>
        /// The time at which the comment was left
        /// </summary>
        [JsonProperty("created_at")]
        public System.DateTimeOffset CreatedAt { get; set; }

        /// <summary>
        /// The file in which the comment lives
        /// </summary>
        [JsonProperty("file_key")]
        public string FileKey { get; set; }

        /// <summary>
        /// Unique identifier for comment
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// (MISSING IN DOCS)
        /// The content of the comment
        /// </summary>
        [JsonProperty("message")]
        public string Message { get; set; }

        /// <summary>
        /// Only set for top level comments. The number displayed with the
        /// comment in the UI
        /// </summary>
        [JsonProperty("order_id")]
        public double OrderId { get; set; }

        /// <summary>
        /// If present, the id of the comment to which this is the reply
        /// </summary>
        [JsonProperty("parent_id")]
        public string ParentId { get; set; }

        /// <summary>
        /// If set, when the comment was resolved
        /// </summary>
        [JsonProperty("resolved_at")]
        public System.DateTimeOffset? ResolvedAt { get; set; }

        /// <summary>
        /// The user who left the comment
        /// </summary>
        [JsonProperty("user")]
        public User User { get; set; }
    }

    /// <summary>
    /// A 2d vector
    ///
    /// This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left
    /// corner of the bounding box of the object is (0, 0) and the bottom
    /// right is (1,1)). The first position corresponds to the start of the
    /// gradient (value 0 for the purposes of calculating gradient stops),
    /// the second position is the end of the gradient (value 1), and the
    /// third handle position determines the width of the gradient (only
    /// relevant for non-linear gradients).
    ///
    /// 2d vector offset within the frame.
    ///
    /// A relative offset within a frame
    /// </summary>
    public partial class ClientMeta
    {
        /// <summary>
        /// X coordinate of the vector
        /// </summary>
        [JsonProperty("x", NullValueHandling = NullValueHandling.Ignore)]
        public double? X { get; set; }

        /// <summary>
        /// Y coordinate of the vector
        /// </summary>
        [JsonProperty("y", NullValueHandling = NullValueHandling.Ignore)]
        public double? Y { get; set; }

        /// <summary>
        /// Unique id specifying the frame.
        /// </summary>
        [JsonProperty("node_id", NullValueHandling = NullValueHandling.Ignore)]
        public string[] NodeId { get; set; }

        /// <summary>
        /// 2d vector offset within the frame.
        /// </summary>
        [JsonProperty("node_offset", NullValueHandling = NullValueHandling.Ignore)]
        public Vector2 NodeOffset { get; set; }
    }

    /// <summary>
    /// The user who left the comment
    ///
    /// A description of a user
    /// </summary>
    public partial class User
    {
        [JsonProperty("handle")]
        public string Handle { get; set; }

        [JsonProperty("img_url")]
        public string ImgUrl { get; set; }
    }

    /// <summary>
    /// POST /v1/files/:key/comments
    ///
    /// > Description
    /// Posts a new comment on the file.
    ///
    /// > Path parameters
    /// key String
    /// File to get comments from
    ///
    /// > Body parameters
    /// message String
    /// The text contents of the comment to post
    ///
    /// client_meta Vector2 | FrameOffset
    /// The position of where to place the comment. This can either be an absolute canvas
    /// position or the relative position within a frame.
    ///
    /// > Return value
    /// The Comment that was successfully posted
    ///
    /// > Error codes
    /// 404 The specified file was not found
    /// </summary>
    public partial class CommentRequest
    {
        [JsonProperty("client_meta")]
        public ClientMeta ClientMeta { get; set; }

        [JsonProperty("message")]
        public string Message { get; set; }
    }

    /// <summary>
    /// GET /v1/teams/:team_id/projects
    ///
    /// > Description
    /// Lists the projects for a specified team. Note that this will only return projects visible
    /// to the authenticated user or owner of the developer token.
    ///
    /// > Path parameters
    /// team_id String
    /// Id of the team to list projects from
    /// </summary>
    public partial class ProjectsResponse
    {
        [JsonProperty("projects")]
        public Project[] Projects { get; set; }
    }

    public partial class Project
    {
        [JsonProperty("id")]
        public double Id { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }
    }

    /// <summary>
    /// GET /v1/projects/:project_id/files
    ///
    /// > Description
    /// List the files in a given project.
    ///
    /// > Path parameters
    /// project_id String
    /// Id of the project to list files from
    /// </summary>
    public partial class ProjectFilesResponse
    {
        [JsonProperty("files")]
        public File[] Files { get; set; }
    }

    public partial class File
    {
        [JsonProperty("key")]
        public string Key { get; set; }

        /// <summary>
        /// utc date in iso8601
        /// </summary>
        [JsonProperty("last_modified")]
        public string LastModified { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("thumbnail_url")]
        public string ThumbnailUrl { get; set; }
    }

    /// <summary>
    /// How this node blends with nodes behind it in the scene
    /// (see blend mode section for more details)
    ///
    /// Enum describing how layer blends with layers below
    /// This type is a string enum with the following possible values
    /// </summary>
    public enum LendMode { Color, ColorBurn, ColorDodge, Darken, Difference, Exclusion, HardLight, Hue, Lighten, LinearBurn, LinearDodge, Luminosity, Multiply, Normal, Overlay, PassThrough, Saturation, Screen, SoftLight };

    /// <summary>
    /// Horizontal constraint as an enum
    /// "LEFT": Node is laid out relative to left of the containing frame
    /// "RIGHT": Node is laid out relative to right of the containing frame
    /// "CENTER": Node is horizontally centered relative to containing frame
    /// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// "SCALE": Node scales horizontally with containing frame
    /// </summary>
    public enum Horizontal { Center, Left, LeftRight, Right, Scale };

    /// <summary>
    /// Vertical constraint as an enum
    /// "TOP": Node is laid out relative to top of the containing frame
    /// "BOTTOM": Node is laid out relative to bottom of the containing frame
    /// "CENTER": Node is vertically centered relative to containing frame
    /// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// "SCALE": Node scales vertically with containing frame
    /// </summary>
    public enum Vertical { Bottom, Center, Scale, Top, TopBottom };

    /// <summary>
    /// Type of effect as a string enum
    /// </summary>
    public enum EffectType { BackgroundBlur, DropShadow, InnerShadow, LayerBlur };

    /// <summary>
    /// Type of constraint to apply; string enum with potential values below
    /// "SCALE": Scale by value
    /// "WIDTH": Scale proportionally and set width to value
    /// "HEIGHT": Scale proportionally and set height to value
    /// </summary>
    public enum ConstraintType { Height, Scale, Width };

    /// <summary>
    /// Image type, string enum
    /// </summary>
    public enum Format { Jpg, Png, Svg };

    /// <summary>
    /// Type of paint as a string enum
    /// </summary>
    public enum PaintType { Emoji, GradientAngular, GradientDiamond, GradientLinear, GradientRadial, Image, Solid };

    /// <summary>
    /// Positioning of grid as a string enum
    /// "MIN": Grid starts at the left or top of the frame
    /// "MAX": Grid starts at the right or bottom of the frame
    /// "CENTER": Grid is center aligned
    /// </summary>
    public enum Alignment { Center, Max, Min };

    /// <summary>
    /// Orientation of the grid as a string enum
    /// "COLUMNS": Vertical grid
    /// "ROWS": Horizontal grid
    /// "GRID": Square grid
    /// </summary>
    public enum Pattern { Columns, Grid, Rows };

    /// <summary>
    /// Where stroke is drawn relative to the vector outline as a string enum
    /// "INSIDE": draw stroke inside the shape boundary
    /// "OUTSIDE": draw stroke outside the shape boundary
    /// "CENTER": draw stroke centered along the shape boundary
    /// </summary>
    public enum StrokeAlign { Center, Inside, Outside };

    /// <summary>
    /// Horizontal text alignment as string enum
    /// </summary>
    public enum TextAlignHorizontal { Center, Justified, Left, Right };

    /// <summary>
    /// Vertical text alignment as string enum
    /// </summary>
    public enum TextAlignVertical { Bottom, Center, Top };

    /// <summary>
    /// the type of the node, refer to table below for details
    /// </summary>
    public enum NodeType { Boolean, Canvas, Component, Document, Ellipse, Frame, Group, Instance, Line, Rectangle, RegularPolygon, Slice, Star, Text, Vector };

    public partial class FileResponse
    {
        public static FileResponse FromJson(string json) => JsonConvert.DeserializeObject<FileResponse>(json, QuickType.Converter.Settings);
    }

    public partial class CommentsResponse
    {
        public static CommentsResponse FromJson(string json) => JsonConvert.DeserializeObject<CommentsResponse>(json, QuickType.Converter.Settings);
    }

    public partial class CommentRequest
    {
        public static CommentRequest FromJson(string json) => JsonConvert.DeserializeObject<CommentRequest>(json, QuickType.Converter.Settings);
    }

    public partial class ProjectsResponse
    {
        public static ProjectsResponse FromJson(string json) => JsonConvert.DeserializeObject<ProjectsResponse>(json, QuickType.Converter.Settings);
    }

    public partial class ProjectFilesResponse
    {
        public static ProjectFilesResponse FromJson(string json) => JsonConvert.DeserializeObject<ProjectFilesResponse>(json, QuickType.Converter.Settings);
    }

    static class LendModeExtensions
    {
        public static LendMode? ValueForString(string str)
        {
            switch (str)
            {
                case "COLOR": return LendMode.Color;
                case "COLOR_BURN": return LendMode.ColorBurn;
                case "COLOR_DODGE": return LendMode.ColorDodge;
                case "DARKEN": return LendMode.Darken;
                case "DIFFERENCE": return LendMode.Difference;
                case "EXCLUSION": return LendMode.Exclusion;
                case "HARD_LIGHT": return LendMode.HardLight;
                case "HUE": return LendMode.Hue;
                case "LIGHTEN": return LendMode.Lighten;
                case "LINEAR_BURN": return LendMode.LinearBurn;
                case "LINEAR_DODGE": return LendMode.LinearDodge;
                case "LUMINOSITY": return LendMode.Luminosity;
                case "MULTIPLY": return LendMode.Multiply;
                case "NORMAL": return LendMode.Normal;
                case "OVERLAY": return LendMode.Overlay;
                case "PASS_THROUGH": return LendMode.PassThrough;
                case "SATURATION": return LendMode.Saturation;
                case "SCREEN": return LendMode.Screen;
                case "SOFT_LIGHT": return LendMode.SoftLight;
                default: return null;
            }
        }

        public static LendMode ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this LendMode value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case LendMode.Color: serializer.Serialize(writer, "COLOR"); break;
                case LendMode.ColorBurn: serializer.Serialize(writer, "COLOR_BURN"); break;
                case LendMode.ColorDodge: serializer.Serialize(writer, "COLOR_DODGE"); break;
                case LendMode.Darken: serializer.Serialize(writer, "DARKEN"); break;
                case LendMode.Difference: serializer.Serialize(writer, "DIFFERENCE"); break;
                case LendMode.Exclusion: serializer.Serialize(writer, "EXCLUSION"); break;
                case LendMode.HardLight: serializer.Serialize(writer, "HARD_LIGHT"); break;
                case LendMode.Hue: serializer.Serialize(writer, "HUE"); break;
                case LendMode.Lighten: serializer.Serialize(writer, "LIGHTEN"); break;
                case LendMode.LinearBurn: serializer.Serialize(writer, "LINEAR_BURN"); break;
                case LendMode.LinearDodge: serializer.Serialize(writer, "LINEAR_DODGE"); break;
                case LendMode.Luminosity: serializer.Serialize(writer, "LUMINOSITY"); break;
                case LendMode.Multiply: serializer.Serialize(writer, "MULTIPLY"); break;
                case LendMode.Normal: serializer.Serialize(writer, "NORMAL"); break;
                case LendMode.Overlay: serializer.Serialize(writer, "OVERLAY"); break;
                case LendMode.PassThrough: serializer.Serialize(writer, "PASS_THROUGH"); break;
                case LendMode.Saturation: serializer.Serialize(writer, "SATURATION"); break;
                case LendMode.Screen: serializer.Serialize(writer, "SCREEN"); break;
                case LendMode.SoftLight: serializer.Serialize(writer, "SOFT_LIGHT"); break;
            }
        }
    }

    static class HorizontalExtensions
    {
        public static Horizontal? ValueForString(string str)
        {
            switch (str)
            {
                case "CENTER": return Horizontal.Center;
                case "LEFT": return Horizontal.Left;
                case "LEFT_RIGHT": return Horizontal.LeftRight;
                case "RIGHT": return Horizontal.Right;
                case "SCALE": return Horizontal.Scale;
                default: return null;
            }
        }

        public static Horizontal ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this Horizontal value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case Horizontal.Center: serializer.Serialize(writer, "CENTER"); break;
                case Horizontal.Left: serializer.Serialize(writer, "LEFT"); break;
                case Horizontal.LeftRight: serializer.Serialize(writer, "LEFT_RIGHT"); break;
                case Horizontal.Right: serializer.Serialize(writer, "RIGHT"); break;
                case Horizontal.Scale: serializer.Serialize(writer, "SCALE"); break;
            }
        }
    }

    static class VerticalExtensions
    {
        public static Vertical? ValueForString(string str)
        {
            switch (str)
            {
                case "BOTTOM": return Vertical.Bottom;
                case "CENTER": return Vertical.Center;
                case "SCALE": return Vertical.Scale;
                case "TOP": return Vertical.Top;
                case "TOP_BOTTOM": return Vertical.TopBottom;
                default: return null;
            }
        }

        public static Vertical ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this Vertical value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case Vertical.Bottom: serializer.Serialize(writer, "BOTTOM"); break;
                case Vertical.Center: serializer.Serialize(writer, "CENTER"); break;
                case Vertical.Scale: serializer.Serialize(writer, "SCALE"); break;
                case Vertical.Top: serializer.Serialize(writer, "TOP"); break;
                case Vertical.TopBottom: serializer.Serialize(writer, "TOP_BOTTOM"); break;
            }
        }
    }

    static class EffectTypeExtensions
    {
        public static EffectType? ValueForString(string str)
        {
            switch (str)
            {
                case "BACKGROUND_BLUR": return EffectType.BackgroundBlur;
                case "DROP_SHADOW": return EffectType.DropShadow;
                case "INNER_SHADOW": return EffectType.InnerShadow;
                case "LAYER_BLUR": return EffectType.LayerBlur;
                default: return null;
            }
        }

        public static EffectType ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this EffectType value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case EffectType.BackgroundBlur: serializer.Serialize(writer, "BACKGROUND_BLUR"); break;
                case EffectType.DropShadow: serializer.Serialize(writer, "DROP_SHADOW"); break;
                case EffectType.InnerShadow: serializer.Serialize(writer, "INNER_SHADOW"); break;
                case EffectType.LayerBlur: serializer.Serialize(writer, "LAYER_BLUR"); break;
            }
        }
    }

    static class ConstraintTypeExtensions
    {
        public static ConstraintType? ValueForString(string str)
        {
            switch (str)
            {
                case "HEIGHT": return ConstraintType.Height;
                case "SCALE": return ConstraintType.Scale;
                case "WIDTH": return ConstraintType.Width;
                default: return null;
            }
        }

        public static ConstraintType ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this ConstraintType value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case ConstraintType.Height: serializer.Serialize(writer, "HEIGHT"); break;
                case ConstraintType.Scale: serializer.Serialize(writer, "SCALE"); break;
                case ConstraintType.Width: serializer.Serialize(writer, "WIDTH"); break;
            }
        }
    }

    static class FormatExtensions
    {
        public static Format? ValueForString(string str)
        {
            switch (str)
            {
                case "JPG": return Format.Jpg;
                case "PNG": return Format.Png;
                case "SVG": return Format.Svg;
                default: return null;
            }
        }

        public static Format ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this Format value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case Format.Jpg: serializer.Serialize(writer, "JPG"); break;
                case Format.Png: serializer.Serialize(writer, "PNG"); break;
                case Format.Svg: serializer.Serialize(writer, "SVG"); break;
            }
        }
    }

    static class PaintTypeExtensions
    {
        public static PaintType? ValueForString(string str)
        {
            switch (str)
            {
                case "EMOJI": return PaintType.Emoji;
                case "GRADIENT_ANGULAR": return PaintType.GradientAngular;
                case "GRADIENT_DIAMOND": return PaintType.GradientDiamond;
                case "GRADIENT_LINEAR": return PaintType.GradientLinear;
                case "GRADIENT_RADIAL": return PaintType.GradientRadial;
                case "IMAGE": return PaintType.Image;
                case "SOLID": return PaintType.Solid;
                default: return null;
            }
        }

        public static PaintType ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this PaintType value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case PaintType.Emoji: serializer.Serialize(writer, "EMOJI"); break;
                case PaintType.GradientAngular: serializer.Serialize(writer, "GRADIENT_ANGULAR"); break;
                case PaintType.GradientDiamond: serializer.Serialize(writer, "GRADIENT_DIAMOND"); break;
                case PaintType.GradientLinear: serializer.Serialize(writer, "GRADIENT_LINEAR"); break;
                case PaintType.GradientRadial: serializer.Serialize(writer, "GRADIENT_RADIAL"); break;
                case PaintType.Image: serializer.Serialize(writer, "IMAGE"); break;
                case PaintType.Solid: serializer.Serialize(writer, "SOLID"); break;
            }
        }
    }

    static class AlignmentExtensions
    {
        public static Alignment? ValueForString(string str)
        {
            switch (str)
            {
                case "CENTER": return Alignment.Center;
                case "MAX": return Alignment.Max;
                case "MIN": return Alignment.Min;
                default: return null;
            }
        }

        public static Alignment ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this Alignment value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case Alignment.Center: serializer.Serialize(writer, "CENTER"); break;
                case Alignment.Max: serializer.Serialize(writer, "MAX"); break;
                case Alignment.Min: serializer.Serialize(writer, "MIN"); break;
            }
        }
    }

    static class PatternExtensions
    {
        public static Pattern? ValueForString(string str)
        {
            switch (str)
            {
                case "COLUMNS": return Pattern.Columns;
                case "GRID": return Pattern.Grid;
                case "ROWS": return Pattern.Rows;
                default: return null;
            }
        }

        public static Pattern ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this Pattern value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case Pattern.Columns: serializer.Serialize(writer, "COLUMNS"); break;
                case Pattern.Grid: serializer.Serialize(writer, "GRID"); break;
                case Pattern.Rows: serializer.Serialize(writer, "ROWS"); break;
            }
        }
    }

    static class StrokeAlignExtensions
    {
        public static StrokeAlign? ValueForString(string str)
        {
            switch (str)
            {
                case "CENTER": return StrokeAlign.Center;
                case "INSIDE": return StrokeAlign.Inside;
                case "OUTSIDE": return StrokeAlign.Outside;
                default: return null;
            }
        }

        public static StrokeAlign ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this StrokeAlign value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case StrokeAlign.Center: serializer.Serialize(writer, "CENTER"); break;
                case StrokeAlign.Inside: serializer.Serialize(writer, "INSIDE"); break;
                case StrokeAlign.Outside: serializer.Serialize(writer, "OUTSIDE"); break;
            }
        }
    }

    static class TextAlignHorizontalExtensions
    {
        public static TextAlignHorizontal? ValueForString(string str)
        {
            switch (str)
            {
                case "CENTER": return TextAlignHorizontal.Center;
                case "JUSTIFIED": return TextAlignHorizontal.Justified;
                case "LEFT": return TextAlignHorizontal.Left;
                case "RIGHT": return TextAlignHorizontal.Right;
                default: return null;
            }
        }

        public static TextAlignHorizontal ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this TextAlignHorizontal value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case TextAlignHorizontal.Center: serializer.Serialize(writer, "CENTER"); break;
                case TextAlignHorizontal.Justified: serializer.Serialize(writer, "JUSTIFIED"); break;
                case TextAlignHorizontal.Left: serializer.Serialize(writer, "LEFT"); break;
                case TextAlignHorizontal.Right: serializer.Serialize(writer, "RIGHT"); break;
            }
        }
    }

    static class TextAlignVerticalExtensions
    {
        public static TextAlignVertical? ValueForString(string str)
        {
            switch (str)
            {
                case "BOTTOM": return TextAlignVertical.Bottom;
                case "CENTER": return TextAlignVertical.Center;
                case "TOP": return TextAlignVertical.Top;
                default: return null;
            }
        }

        public static TextAlignVertical ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this TextAlignVertical value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case TextAlignVertical.Bottom: serializer.Serialize(writer, "BOTTOM"); break;
                case TextAlignVertical.Center: serializer.Serialize(writer, "CENTER"); break;
                case TextAlignVertical.Top: serializer.Serialize(writer, "TOP"); break;
            }
        }
    }

    static class NodeTypeExtensions
    {
        public static NodeType? ValueForString(string str)
        {
            switch (str)
            {
                case "BOOLEAN": return NodeType.Boolean;
                case "CANVAS": return NodeType.Canvas;
                case "COMPONENT": return NodeType.Component;
                case "DOCUMENT": return NodeType.Document;
                case "ELLIPSE": return NodeType.Ellipse;
                case "FRAME": return NodeType.Frame;
                case "GROUP": return NodeType.Group;
                case "INSTANCE": return NodeType.Instance;
                case "LINE": return NodeType.Line;
                case "RECTANGLE": return NodeType.Rectangle;
                case "REGULAR_POLYGON": return NodeType.RegularPolygon;
                case "SLICE": return NodeType.Slice;
                case "STAR": return NodeType.Star;
                case "TEXT": return NodeType.Text;
                case "VECTOR": return NodeType.Vector;
                default: return null;
            }
        }

        public static NodeType ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this NodeType value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case NodeType.Boolean: serializer.Serialize(writer, "BOOLEAN"); break;
                case NodeType.Canvas: serializer.Serialize(writer, "CANVAS"); break;
                case NodeType.Component: serializer.Serialize(writer, "COMPONENT"); break;
                case NodeType.Document: serializer.Serialize(writer, "DOCUMENT"); break;
                case NodeType.Ellipse: serializer.Serialize(writer, "ELLIPSE"); break;
                case NodeType.Frame: serializer.Serialize(writer, "FRAME"); break;
                case NodeType.Group: serializer.Serialize(writer, "GROUP"); break;
                case NodeType.Instance: serializer.Serialize(writer, "INSTANCE"); break;
                case NodeType.Line: serializer.Serialize(writer, "LINE"); break;
                case NodeType.Rectangle: serializer.Serialize(writer, "RECTANGLE"); break;
                case NodeType.RegularPolygon: serializer.Serialize(writer, "REGULAR_POLYGON"); break;
                case NodeType.Slice: serializer.Serialize(writer, "SLICE"); break;
                case NodeType.Star: serializer.Serialize(writer, "STAR"); break;
                case NodeType.Text: serializer.Serialize(writer, "TEXT"); break;
                case NodeType.Vector: serializer.Serialize(writer, "VECTOR"); break;
            }
        }
    }

    public static class Serialize
    {
        public static string ToJson(this FileResponse self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this CommentsResponse self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this CommentRequest self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this ProjectsResponse self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this ProjectFilesResponse self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
    }

    internal class Converter: JsonConverter
    {
        public override bool CanConvert(Type t) => t == typeof(LendMode) || t == typeof(Horizontal) || t == typeof(Vertical) || t == typeof(EffectType) || t == typeof(ConstraintType) || t == typeof(Format) || t == typeof(PaintType) || t == typeof(Alignment) || t == typeof(Pattern) || t == typeof(StrokeAlign) || t == typeof(TextAlignHorizontal) || t == typeof(TextAlignVertical) || t == typeof(NodeType) || t == typeof(LendMode?) || t == typeof(Horizontal?) || t == typeof(Vertical?) || t == typeof(EffectType?) || t == typeof(ConstraintType?) || t == typeof(Format?) || t == typeof(PaintType?) || t == typeof(Alignment?) || t == typeof(Pattern?) || t == typeof(StrokeAlign?) || t == typeof(TextAlignHorizontal?) || t == typeof(TextAlignVertical?) || t == typeof(NodeType?);

        public override object ReadJson(JsonReader reader, Type t, object existingValue, JsonSerializer serializer)
        {
            if (t == typeof(LendMode))
                return LendModeExtensions.ReadJson(reader, serializer);
            if (t == typeof(Horizontal))
                return HorizontalExtensions.ReadJson(reader, serializer);
            if (t == typeof(Vertical))
                return VerticalExtensions.ReadJson(reader, serializer);
            if (t == typeof(EffectType))
                return EffectTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(ConstraintType))
                return ConstraintTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(Format))
                return FormatExtensions.ReadJson(reader, serializer);
            if (t == typeof(PaintType))
                return PaintTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(Alignment))
                return AlignmentExtensions.ReadJson(reader, serializer);
            if (t == typeof(Pattern))
                return PatternExtensions.ReadJson(reader, serializer);
            if (t == typeof(StrokeAlign))
                return StrokeAlignExtensions.ReadJson(reader, serializer);
            if (t == typeof(TextAlignHorizontal))
                return TextAlignHorizontalExtensions.ReadJson(reader, serializer);
            if (t == typeof(TextAlignVertical))
                return TextAlignVerticalExtensions.ReadJson(reader, serializer);
            if (t == typeof(NodeType))
                return NodeTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(LendMode?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return LendModeExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(Horizontal?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return HorizontalExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(Vertical?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return VerticalExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(EffectType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return EffectTypeExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(ConstraintType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return ConstraintTypeExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(Format?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return FormatExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(PaintType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return PaintTypeExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(Alignment?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return AlignmentExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(Pattern?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return PatternExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(StrokeAlign?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return StrokeAlignExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(TextAlignHorizontal?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return TextAlignHorizontalExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(TextAlignVertical?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return TextAlignVerticalExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(NodeType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return NodeTypeExtensions.ReadJson(reader, serializer);
            }
            throw new Exception("Unknown type");
        }

        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            var t = value.GetType();
            if (t == typeof(LendMode))
            {
                ((LendMode)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(Horizontal))
            {
                ((Horizontal)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(Vertical))
            {
                ((Vertical)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(EffectType))
            {
                ((EffectType)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(ConstraintType))
            {
                ((ConstraintType)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(Format))
            {
                ((Format)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(PaintType))
            {
                ((PaintType)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(Alignment))
            {
                ((Alignment)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(Pattern))
            {
                ((Pattern)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(StrokeAlign))
            {
                ((StrokeAlign)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(TextAlignHorizontal))
            {
                ((TextAlignHorizontal)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(TextAlignVertical))
            {
                ((TextAlignVertical)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(NodeType))
            {
                ((NodeType)value).WriteJson(writer, serializer);
                return;
            }
            throw new Exception("Unknown type");
        }

        public static readonly JsonSerializerSettings Settings = new JsonSerializerSettings
        {
            MetadataPropertyHandling = MetadataPropertyHandling.Ignore,
            DateParseHandling = DateParseHandling.None,
            Converters = { 
                new Converter(),
                new IsoDateTimeConverter { DateTimeStyles = DateTimeStyles.AssumeUniversal }
            },
        };
    }
}
