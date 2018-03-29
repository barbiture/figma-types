// To parse this JSON data, add NuGet 'Newtonsoft.Json' then do one of these:
//
//    using QuickType;
//
//    var regularPolygonNode = RegularPolygonNode.FromJson(jsonString);
//    var ellipseNode = EllipseNode.FromJson(jsonString);
//    var groupNode = GroupNode.FromJson(jsonString);
//    var node = Node.FromJson(jsonString);
//    var vector = Vector.FromJson(jsonString);
//    var color = Color.FromJson(jsonString);
//    var global = Global.FromJson(jsonString);
//    var colorStop = ColorStop.FromJson(jsonString);
//    var vectorNode = VectorNode.FromJson(jsonString);
//    var layoutConstraint = LayoutConstraint.FromJson(jsonString);
//    var booleanNode = BooleanNode.FromJson(jsonString);
//    var user = User.FromJson(jsonString);
//    var textNode = TextNode.FromJson(jsonString);
//    var frameNode = FrameNode.FromJson(jsonString);
//    var rectangle = Rectangle.FromJson(jsonString);
//    var layoutGrid = LayoutGrid.FromJson(jsonString);
//    var effect = Effect.FromJson(jsonString);
//    var rectangleNode = RectangleNode.FromJson(jsonString);
//    var blendMode = BlendMode.FromJson(jsonString);
//    var sliceNode = SliceNode.FromJson(jsonString);
//    var starNode = StarNode.FromJson(jsonString);
//    var lineNode = LineNode.FromJson(jsonString);
//    var instanceNode = InstanceNode.FromJson(jsonString);
//    var typeStyle = TypeStyle.FromJson(jsonString);
//    var canvasNode = CanvasNode.FromJson(jsonString);
//    var exportSetting = ExportSetting.FromJson(jsonString);
//    var documentNode = DocumentNode.FromJson(jsonString);
//    var constraint = Constraint.FromJson(jsonString);
//    var paint = Paint.FromJson(jsonString);
//    var componentNode = ComponentNode.FromJson(jsonString);
//    var comment = Comment.FromJson(jsonString);

namespace QuickType
{
    using System;
    using System.Collections.Generic;
    using System.Net;

    using System.Globalization;
    using Newtonsoft.Json;
    using Newtonsoft.Json.Converters;

    /// <summary>
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class RegularPolygonNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }
    }

    /// <summary>
    /// A rectangle that expresses a bounding box in absolute coordinates
    ///
    /// Bounding box of the node in absolute space coordinates
    /// </summary>
    public partial class RegularPolygonNodeRectangle
    {
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

        /// <summary>
        /// Width of the rectangle
        /// </summary>
        [JsonProperty("width")]
        public double Width { get; set; }

        /// <summary>
        /// Height of the rectangle
        /// </summary>
        [JsonProperty("height")]
        public double Height { get; set; }
    }

    /// <summary>
    /// Layout constraint relative to containing Frame
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    /// </summary>
    public partial class RegularPolygonNodeLayoutConstraint
    {
        /// <summary>
        /// * TOP: Node is laid out relative to top of the containing frame
        /// * BOTTOM: Node is laid out relative to bottom of the containing frame
        /// * CENTER: Node is vertically centered relative to containing frame
        /// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
        /// (node stretches with frame)
        /// * SCALE: Node scales vertically with containing frame
        /// </summary>
        [JsonProperty("vertical")]
        public Vertical Vertical { get; set; }

        /// <summary>
        /// * LEFT: Node is laid out relative to left of the containing frame
        /// * RIGHT: Node is laid out relative to right of the containing frame
        /// * CENTER: Node is horizontally centered relative to containing frame
        /// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
        /// (node stretches with frame)
        /// * SCALE: Node scales horizontally with containing frame
        /// </summary>
        [JsonProperty("horizontal")]
        public Horizontal Horizontal { get; set; }
    }

    /// <summary>
    /// A visual effect such as a shadow or blur
    ///
    /// An array of effects attached to this node (see effects section for more details)
    /// </summary>
    public partial class EffectElement
    {
        /// <summary>
        /// Type of effect as a string enum
        /// </summary>
        [JsonProperty("type")]
        public EffectType Type { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("radius")]
        public double Radius { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("color")]
        public EffectColor Color { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("offset")]
        public EffectVector Offset { get; set; }
    }

    /// <summary>
    /// An RGBA color
    ///
    /// See type property for effect of this field
    ///
    /// (For solid paints) Solid color of the paint
    ///
    /// Color attached to corresponding position
    ///
    /// Color of the grid
    ///
    /// Background color of the node
    ///
    /// Background color of the canvas
    /// </summary>
    public partial class EffectColor
    {
        /// <summary>
        /// Red channel value, between 0 and 1
        /// </summary>
        [JsonProperty("r")]
        public double R { get; set; }

        /// <summary>
        /// Green channel value, between 0 and 1
        /// </summary>
        [JsonProperty("g")]
        public double G { get; set; }

        /// <summary>
        /// Blue channel value, between 0 and 1
        /// </summary>
        [JsonProperty("b")]
        public double B { get; set; }

        /// <summary>
        /// Alpha channel value, between 0 and 1
        /// </summary>
        [JsonProperty("a")]
        public double A { get; set; }
    }

    /// <summary>
    /// A 2d vector
    ///
    /// See type property for effect of this field
    ///
    /// (For gradient paints) This field contains three vectors, each of which are a position in
    /// normalized object space (normalized object space is if the top left corner of the
    /// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
    /// corresponds to the start of the gradient (value 0 for the purposes of calculating
    /// gradient stops), the second position is the end of the gradient (value 1), and the third
    /// handle position determines the width of the gradient (only relevant for non-linear
    /// gradients).
    /// </summary>
    public partial class EffectVector
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
    /// Format and size to export an asset at
    ///
    /// An array of export settings representing images to export from node
    ///
    /// An array of export settings representing images to export from the canvas
    ///
    /// A rectangular region of the canvas that can be exported
    /// </summary>
    public partial class ExportSettingElement
    {
        /// <summary>
        /// File suffix to append to all filenames
        /// </summary>
        [JsonProperty("suffix")]
        public string Suffix { get; set; }

        /// <summary>
        /// Type of constraint to apply; string enum with potential values below
        ///
        /// * "SCALE": Scale by value
        /// * "WIDTH": Scale proportionally and set width to value
        /// * "HEIGHT": Scale proportionally and set height to value
        /// </summary>
        [JsonProperty("format")]
        public Format Format { get; set; }

        /// <summary>
        /// Constraint that determines sizing of exported asset
        /// </summary>
        [JsonProperty("constraint")]
        public ExportSettingConstraint Constraint { get; set; }
    }

    /// <summary>
    /// Sizing constraint for exports
    ///
    /// Constraint that determines sizing of exported asset
    /// </summary>
    public partial class ExportSettingConstraint
    {
        /// <summary>
        /// Type of constraint to apply; string enum with potential values below
        ///
        /// * "SCALE": Scale by value
        /// * "WIDTH": Scale proportionally and set width to value
        /// * "HEIGHT": Scale proportionally and set height to value
        /// </summary>
        [JsonProperty("type")]
        public ConstraintType Type { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("value")]
        public double? Value { get; set; }
    }

    /// <summary>
    /// A solid color, gradient, or image texture that can be applied as fills or strokes
    ///
    /// An array of fill paints applied to the node
    ///
    /// An array of stroke paints applied to the node
    ///
    /// Paints applied to characters
    /// </summary>
    public partial class PaintElement
    {
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

        /// <summary>
        /// Overall opacity of paint (colors within the paint can also have opacity values which
        /// would blend with this)
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// (For solid paints) Solid color of the paint
        /// </summary>
        [JsonProperty("color")]
        public EffectColor Color { get; set; }

        /// <summary>
        /// (For gradient paints) This field contains three vectors, each of which are a position in
        /// normalized object space (normalized object space is if the top left corner of the
        /// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
        /// corresponds to the start of the gradient (value 0 for the purposes of calculating
        /// gradient stops), the second position is the end of the gradient (value 1), and the third
        /// handle position determines the width of the gradient (only relevant for non-linear
        /// gradients).
        /// </summary>
        [JsonProperty("gradientHandlePositions")]
        public EffectVector[] GradientHandlePositions { get; set; }

        /// <summary>
        /// (For gradient paints) Positions of key points along the gradient axis with the colors
        /// anchored there. Colors along the gradient are interpolated smoothly between neighboring
        /// gradient stops.
        /// </summary>
        [JsonProperty("gradientStops")]
        public ColorStopElement[] GradientStops { get; set; }

        /// <summary>
        /// (For image paints) Image scaling mode
        /// </summary>
        [JsonProperty("scaleMode")]
        public ScaleMode? ScaleMode { get; set; }
    }

    /// <summary>
    /// A position color pair representing a gradient stop
    ///
    /// (For gradient paints) Positions of key points along the gradient axis with the colors
    /// anchored there. Colors along the gradient are interpolated smoothly between neighboring
    /// gradient stops.
    /// </summary>
    public partial class ColorStopElement
    {
        /// <summary>
        /// Color attached to corresponding position
        /// </summary>
        [JsonProperty("color")]
        public EffectColor Color { get; set; }

        /// <summary>
        /// Value between 0 and 1 representing position along gradient axis
        /// </summary>
        [JsonProperty("position")]
        public double Position { get; set; }
    }

    /// <summary>
    /// An ellipse
    ///
    /// A regular n-sided polygon
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class EllipseNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }
    }

    /// <summary>
    /// A logical grouping of nodes
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class GroupNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section for more
        /// details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGridElement[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool ClipsContent { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }

        /// <summary>
        /// An array of nodes that are direct children of this node
        /// </summary>
        [JsonProperty("children")]
        public PurpleNode[] Children { get; set; }
    }

    /// <summary>
    /// An array of nodes that are direct children of this node
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class PurpleNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        ///
        /// An array of nodes that are direct children of this node
        ///
        /// An array of nodes that are being boolean operated on
        /// </summary>
        [JsonProperty("children")]
        public NodeNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        ///
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from the canvas
        ///
        /// An array of export settings representing images to export from node
        ///
        /// A rectangular region of the canvas that can be exported
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section for more
        /// details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGridElement[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double? Opacity { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode? BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool? IsMask { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool? ClipsContent { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool? PreserveRatio { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign? StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double? StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// Radius of each corner of the rectangle
        /// </summary>
        [JsonProperty("cornerRadius")]
        public double? CornerRadius { get; set; }

        /// <summary>
        /// Text contained within text box
        /// </summary>
        [JsonProperty("characters")]
        public string Characters { get; set; }

        /// <summary>
        /// Style of text including font family and weight (see type style section for more
        /// information)
        /// </summary>
        [JsonProperty("style")]
        public NodeTypeStyle Style { get; set; }

        /// <summary>
        /// Array with same number of elements as characeters in text box, each element is a
        /// reference to the styleOverrideTable defined below and maps to the corresponding character
        /// in the characters field. Elements with value 0 have the default type style
        /// </summary>
        [JsonProperty("characterStyleOverrides")]
        public double[] CharacterStyleOverrides { get; set; }

        /// <summary>
        /// Map from ID to TypeStyle for looking up style overrides
        /// </summary>
        [JsonProperty("styleOverrideTable")]
        public Dictionary<string, NodeTypeStyle> StyleOverrideTable { get; set; }

        /// <summary>
        /// ID of component that this instance came from, refers to components table (see endpoints
        /// section below)
        /// </summary>
        [JsonProperty("componentId")]
        public string ComponentId { get; set; }
    }

    /// <summary>
    /// An array of canvases attached to the document
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    ///
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are being boolean operated on
    /// </summary>
    public partial class NodeNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        ///
        /// An array of nodes that are direct children of this node
        ///
        /// An array of nodes that are being boolean operated on
        /// </summary>
        [JsonProperty("children")]
        public NodeNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        ///
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from the canvas
        ///
        /// An array of export settings representing images to export from node
        ///
        /// A rectangular region of the canvas that can be exported
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section for more
        /// details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGridElement[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double? Opacity { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode? BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool? IsMask { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool? ClipsContent { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool? PreserveRatio { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign? StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double? StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// Radius of each corner of the rectangle
        /// </summary>
        [JsonProperty("cornerRadius")]
        public double? CornerRadius { get; set; }

        /// <summary>
        /// Text contained within text box
        /// </summary>
        [JsonProperty("characters")]
        public string Characters { get; set; }

        /// <summary>
        /// Style of text including font family and weight (see type style section for more
        /// information)
        /// </summary>
        [JsonProperty("style")]
        public NodeTypeStyle Style { get; set; }

        /// <summary>
        /// Array with same number of elements as characeters in text box, each element is a
        /// reference to the styleOverrideTable defined below and maps to the corresponding character
        /// in the characters field. Elements with value 0 have the default type style
        /// </summary>
        [JsonProperty("characterStyleOverrides")]
        public double[] CharacterStyleOverrides { get; set; }

        /// <summary>
        /// Map from ID to TypeStyle for looking up style overrides
        /// </summary>
        [JsonProperty("styleOverrideTable")]
        public Dictionary<string, NodeTypeStyle> StyleOverrideTable { get; set; }

        /// <summary>
        /// ID of component that this instance came from, refers to components table (see endpoints
        /// section below)
        /// </summary>
        [JsonProperty("componentId")]
        public string ComponentId { get; set; }
    }

    /// <summary>
    /// Guides to align and place objects within a frame
    ///
    /// An array of layout grids attached to this node (see layout grids section for more
    /// details). GROUP nodes do not have this attribute
    /// </summary>
    public partial class LayoutGridElement
    {
        /// <summary>
        /// * COLUMNS: Vertical grid
        /// * ROWS: Horizontal grid
        /// * GRID: Square grid
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

        /// <summary>
        /// Color of the grid
        /// </summary>
        [JsonProperty("color")]
        public EffectColor Color { get; set; }

        /// <summary>
        /// Positioning of grid as a string enum
        ///
        /// * MIN: Grid starts at the left or top of the frame
        /// * MAX: Grid starts at the right or bottom of the frame
        /// * CENTER: Grid is center aligned
        /// </summary>
        [JsonProperty("alignment")]
        public Alignment Alignment { get; set; }

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
        /// Number of columns or rows
        /// </summary>
        [JsonProperty("count")]
        public double Count { get; set; }
    }

    /// <summary>
    /// Metadata for character formatting
    ///
    /// Style of text including font family and weight (see type style section for more
    /// information)
    ///
    /// Map from ID to TypeStyle for looking up style overrides
    /// </summary>
    public partial class NodeTypeStyle
    {
        /// <summary>
        /// Line height in px
        /// </summary>
        [JsonProperty("lineHeightPx")]
        public double LineHeightPx { get; set; }

        /// <summary>
        /// PostScript font name
        /// </summary>
        [JsonProperty("fontPostScriptName")]
        public string FontPostScriptName { get; set; }

        /// <summary>
        /// Numeric font weight
        /// </summary>
        [JsonProperty("fontWeight")]
        public double FontWeight { get; set; }

        /// <summary>
        /// Line height as a percentage of normal line height
        /// </summary>
        [JsonProperty("lineHeightPercent")]
        public double LineHeightPercent { get; set; }

        /// <summary>
        /// Vertical text alignment as string enum
        /// </summary>
        [JsonProperty("textAlignVertical")]
        public TextAlignVertical TextAlignVertical { get; set; }

        /// <summary>
        /// Font size in px
        /// </summary>
        [JsonProperty("fontSize")]
        public double FontSize { get; set; }

        /// <summary>
        /// Is text italicized?
        /// </summary>
        [JsonProperty("italic")]
        public bool Italic { get; set; }

        /// <summary>
        /// Paints applied to characters
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// Font family of text (standard name)
        /// </summary>
        [JsonProperty("fontFamily")]
        public string FontFamily { get; set; }

        /// <summary>
        /// Horizontal text alignment as string enum
        /// </summary>
        [JsonProperty("textAlignHorizontal")]
        public TextAlignHorizontal TextAlignHorizontal { get; set; }

        /// <summary>
        /// Space between characters in px
        /// </summary>
        [JsonProperty("letterSpacing")]
        public double LetterSpacing { get; set; }
    }

    /// <summary>
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class Node
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        ///
        /// An array of nodes that are direct children of this node
        ///
        /// An array of nodes that are being boolean operated on
        /// </summary>
        [JsonProperty("children")]
        public NodeNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        ///
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from the canvas
        ///
        /// An array of export settings representing images to export from node
        ///
        /// A rectangular region of the canvas that can be exported
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section for more
        /// details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGridElement[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double? Opacity { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode? BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool? IsMask { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool? ClipsContent { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool? PreserveRatio { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign? StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double? StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// Radius of each corner of the rectangle
        /// </summary>
        [JsonProperty("cornerRadius")]
        public double? CornerRadius { get; set; }

        /// <summary>
        /// Text contained within text box
        /// </summary>
        [JsonProperty("characters")]
        public string Characters { get; set; }

        /// <summary>
        /// Style of text including font family and weight (see type style section for more
        /// information)
        /// </summary>
        [JsonProperty("style")]
        public NodeTypeStyle Style { get; set; }

        /// <summary>
        /// Array with same number of elements as characeters in text box, each element is a
        /// reference to the styleOverrideTable defined below and maps to the corresponding character
        /// in the characters field. Elements with value 0 have the default type style
        /// </summary>
        [JsonProperty("characterStyleOverrides")]
        public double[] CharacterStyleOverrides { get; set; }

        /// <summary>
        /// Map from ID to TypeStyle for looking up style overrides
        /// </summary>
        [JsonProperty("styleOverrideTable")]
        public Dictionary<string, NodeTypeStyle> StyleOverrideTable { get; set; }

        /// <summary>
        /// ID of component that this instance came from, refers to components table (see endpoints
        /// section below)
        /// </summary>
        [JsonProperty("componentId")]
        public string ComponentId { get; set; }
    }

    /// <summary>
    /// A 2d vector
    /// </summary>
    public partial class Vector
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
    /// An RGBA color
    /// </summary>
    public partial class Color
    {
        /// <summary>
        /// Red channel value, between 0 and 1
        /// </summary>
        [JsonProperty("r")]
        public double R { get; set; }

        /// <summary>
        /// Green channel value, between 0 and 1
        /// </summary>
        [JsonProperty("g")]
        public double G { get; set; }

        /// <summary>
        /// Blue channel value, between 0 and 1
        /// </summary>
        [JsonProperty("b")]
        public double B { get; set; }

        /// <summary>
        /// Alpha channel value, between 0 and 1
        /// </summary>
        [JsonProperty("a")]
        public double A { get; set; }
    }

    /// <summary>
    /// Properties are shared across all nodes
    /// </summary>
    public partial class Global
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }
    }

    /// <summary>
    /// A position color pair representing a gradient stop
    /// </summary>
    public partial class ColorStop
    {
        /// <summary>
        /// Color attached to corresponding position
        /// </summary>
        [JsonProperty("color")]
        public EffectColor Color { get; set; }

        /// <summary>
        /// Value between 0 and 1 representing position along gradient axis
        /// </summary>
        [JsonProperty("position")]
        public double Position { get; set; }
    }

    /// <summary>
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class VectorNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }
    }

    /// <summary>
    /// Layout constraint relative to containing Frame
    /// </summary>
    public partial class LayoutConstraint
    {
        /// <summary>
        /// * TOP: Node is laid out relative to top of the containing frame
        /// * BOTTOM: Node is laid out relative to bottom of the containing frame
        /// * CENTER: Node is vertically centered relative to containing frame
        /// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
        /// (node stretches with frame)
        /// * SCALE: Node scales vertically with containing frame
        /// </summary>
        [JsonProperty("vertical")]
        public Vertical Vertical { get; set; }

        /// <summary>
        /// * LEFT: Node is laid out relative to left of the containing frame
        /// * RIGHT: Node is laid out relative to right of the containing frame
        /// * CENTER: Node is horizontally centered relative to containing frame
        /// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
        /// (node stretches with frame)
        /// * SCALE: Node scales horizontally with containing frame
        /// </summary>
        [JsonProperty("horizontal")]
        public Horizontal Horizontal { get; set; }
    }

    /// <summary>
    /// A group that has a boolean operation applied to it
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class BooleanNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }

        /// <summary>
        /// An array of nodes that are being boolean operated on
        /// </summary>
        [JsonProperty("children")]
        public FluffyNode[] Children { get; set; }
    }

    /// <summary>
    /// An array of nodes that are being boolean operated on
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class FluffyNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        ///
        /// An array of nodes that are direct children of this node
        ///
        /// An array of nodes that are being boolean operated on
        /// </summary>
        [JsonProperty("children")]
        public NodeNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        ///
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from the canvas
        ///
        /// An array of export settings representing images to export from node
        ///
        /// A rectangular region of the canvas that can be exported
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section for more
        /// details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGridElement[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double? Opacity { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode? BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool? IsMask { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool? ClipsContent { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool? PreserveRatio { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign? StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double? StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// Radius of each corner of the rectangle
        /// </summary>
        [JsonProperty("cornerRadius")]
        public double? CornerRadius { get; set; }

        /// <summary>
        /// Text contained within text box
        /// </summary>
        [JsonProperty("characters")]
        public string Characters { get; set; }

        /// <summary>
        /// Style of text including font family and weight (see type style section for more
        /// information)
        /// </summary>
        [JsonProperty("style")]
        public NodeTypeStyle Style { get; set; }

        /// <summary>
        /// Array with same number of elements as characeters in text box, each element is a
        /// reference to the styleOverrideTable defined below and maps to the corresponding character
        /// in the characters field. Elements with value 0 have the default type style
        /// </summary>
        [JsonProperty("characterStyleOverrides")]
        public double[] CharacterStyleOverrides { get; set; }

        /// <summary>
        /// Map from ID to TypeStyle for looking up style overrides
        /// </summary>
        [JsonProperty("styleOverrideTable")]
        public Dictionary<string, NodeTypeStyle> StyleOverrideTable { get; set; }

        /// <summary>
        /// ID of component that this instance came from, refers to components table (see endpoints
        /// section below)
        /// </summary>
        [JsonProperty("componentId")]
        public string ComponentId { get; set; }
    }

    /// <summary>
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
    /// A text box
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class TextNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }

        /// <summary>
        /// Text contained within text box
        /// </summary>
        [JsonProperty("characters")]
        public string Characters { get; set; }

        /// <summary>
        /// Style of text including font family and weight (see type style section for more
        /// information)
        /// </summary>
        [JsonProperty("style")]
        public NodeTypeStyle Style { get; set; }

        /// <summary>
        /// Array with same number of elements as characeters in text box, each element is a
        /// reference to the styleOverrideTable defined below and maps to the corresponding character
        /// in the characters field. Elements with value 0 have the default type style
        /// </summary>
        [JsonProperty("characterStyleOverrides")]
        public double[] CharacterStyleOverrides { get; set; }

        /// <summary>
        /// Map from ID to TypeStyle for looking up style overrides
        /// </summary>
        [JsonProperty("styleOverrideTable")]
        public Dictionary<string, NodeTypeStyle> StyleOverrideTable { get; set; }
    }

    /// <summary>
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class FrameNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section for more
        /// details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGridElement[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool ClipsContent { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }

        /// <summary>
        /// An array of nodes that are direct children of this node
        /// </summary>
        [JsonProperty("children")]
        public FrameNodeNode[] Children { get; set; }
    }

    /// <summary>
    /// An array of nodes that are direct children of this node
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class FrameNodeNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        ///
        /// An array of nodes that are direct children of this node
        ///
        /// An array of nodes that are being boolean operated on
        /// </summary>
        [JsonProperty("children")]
        public NodeNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        ///
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from the canvas
        ///
        /// An array of export settings representing images to export from node
        ///
        /// A rectangular region of the canvas that can be exported
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section for more
        /// details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGridElement[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double? Opacity { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode? BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool? IsMask { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool? ClipsContent { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool? PreserveRatio { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign? StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double? StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// Radius of each corner of the rectangle
        /// </summary>
        [JsonProperty("cornerRadius")]
        public double? CornerRadius { get; set; }

        /// <summary>
        /// Text contained within text box
        /// </summary>
        [JsonProperty("characters")]
        public string Characters { get; set; }

        /// <summary>
        /// Style of text including font family and weight (see type style section for more
        /// information)
        /// </summary>
        [JsonProperty("style")]
        public NodeTypeStyle Style { get; set; }

        /// <summary>
        /// Array with same number of elements as characeters in text box, each element is a
        /// reference to the styleOverrideTable defined below and maps to the corresponding character
        /// in the characters field. Elements with value 0 have the default type style
        /// </summary>
        [JsonProperty("characterStyleOverrides")]
        public double[] CharacterStyleOverrides { get; set; }

        /// <summary>
        /// Map from ID to TypeStyle for looking up style overrides
        /// </summary>
        [JsonProperty("styleOverrideTable")]
        public Dictionary<string, NodeTypeStyle> StyleOverrideTable { get; set; }

        /// <summary>
        /// ID of component that this instance came from, refers to components table (see endpoints
        /// section below)
        /// </summary>
        [JsonProperty("componentId")]
        public string ComponentId { get; set; }
    }

    /// <summary>
    /// A rectangle that expresses a bounding box in absolute coordinates
    /// </summary>
    public partial class Rectangle
    {
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

        /// <summary>
        /// Width of the rectangle
        /// </summary>
        [JsonProperty("width")]
        public double Width { get; set; }

        /// <summary>
        /// Height of the rectangle
        /// </summary>
        [JsonProperty("height")]
        public double Height { get; set; }
    }

    /// <summary>
    /// Guides to align and place objects within a frame
    /// </summary>
    public partial class LayoutGrid
    {
        /// <summary>
        /// * COLUMNS: Vertical grid
        /// * ROWS: Horizontal grid
        /// * GRID: Square grid
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

        /// <summary>
        /// Color of the grid
        /// </summary>
        [JsonProperty("color")]
        public EffectColor Color { get; set; }

        /// <summary>
        /// Positioning of grid as a string enum
        ///
        /// * MIN: Grid starts at the left or top of the frame
        /// * MAX: Grid starts at the right or bottom of the frame
        /// * CENTER: Grid is center aligned
        /// </summary>
        [JsonProperty("alignment")]
        public Alignment Alignment { get; set; }

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
        /// Number of columns or rows
        /// </summary>
        [JsonProperty("count")]
        public double Count { get; set; }
    }

    /// <summary>
    /// A visual effect such as a shadow or blur
    /// </summary>
    public partial class Effect
    {
        /// <summary>
        /// Type of effect as a string enum
        /// </summary>
        [JsonProperty("type")]
        public EffectType Type { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("radius")]
        public double Radius { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("color")]
        public EffectColor Color { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("offset")]
        public EffectVector Offset { get; set; }
    }

    /// <summary>
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class RectangleNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }

        /// <summary>
        /// Radius of each corner of the rectangle
        /// </summary>
        [JsonProperty("cornerRadius")]
        public double CornerRadius { get; set; }
    }

    /// <summary>
    /// A rectangular region of the canvas that can be exported
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class SliceNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// A rectangular region of the canvas that can be exported
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }
    }

    /// <summary>
    /// A regular star shape
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class StarNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }
    }

    /// <summary>
    /// A straight line
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class LineNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }
    }

    /// <summary>
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// A logical grouping of nodes
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class InstanceNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section for more
        /// details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGridElement[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool ClipsContent { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }

        /// <summary>
        /// An array of nodes that are direct children of this node
        /// </summary>
        [JsonProperty("children")]
        public PurpleNode[] Children { get; set; }

        /// <summary>
        /// ID of component that this instance came from, refers to components table (see endpoints
        /// section below)
        /// </summary>
        [JsonProperty("componentId")]
        public string ComponentId { get; set; }
    }

    /// <summary>
    /// Metadata for character formatting
    /// </summary>
    public partial class TypeStyle
    {
        /// <summary>
        /// Line height in px
        /// </summary>
        [JsonProperty("lineHeightPx")]
        public double LineHeightPx { get; set; }

        /// <summary>
        /// PostScript font name
        /// </summary>
        [JsonProperty("fontPostScriptName")]
        public string FontPostScriptName { get; set; }

        /// <summary>
        /// Numeric font weight
        /// </summary>
        [JsonProperty("fontWeight")]
        public double FontWeight { get; set; }

        /// <summary>
        /// Line height as a percentage of normal line height
        /// </summary>
        [JsonProperty("lineHeightPercent")]
        public double LineHeightPercent { get; set; }

        /// <summary>
        /// Vertical text alignment as string enum
        /// </summary>
        [JsonProperty("textAlignVertical")]
        public TextAlignVertical TextAlignVertical { get; set; }

        /// <summary>
        /// Font size in px
        /// </summary>
        [JsonProperty("fontSize")]
        public double FontSize { get; set; }

        /// <summary>
        /// Is text italicized?
        /// </summary>
        [JsonProperty("italic")]
        public bool Italic { get; set; }

        /// <summary>
        /// Paints applied to characters
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// Font family of text (standard name)
        /// </summary>
        [JsonProperty("fontFamily")]
        public string FontFamily { get; set; }

        /// <summary>
        /// Horizontal text alignment as string enum
        /// </summary>
        [JsonProperty("textAlignHorizontal")]
        public TextAlignHorizontal TextAlignHorizontal { get; set; }

        /// <summary>
        /// Space between characters in px
        /// </summary>
        [JsonProperty("letterSpacing")]
        public double LetterSpacing { get; set; }
    }

    /// <summary>
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class CanvasNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of top level layers on the canvas
        /// </summary>
        [JsonProperty("children")]
        public TentacledNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from the canvas
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }
    }

    /// <summary>
    /// An array of top level layers on the canvas
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class TentacledNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        ///
        /// An array of nodes that are direct children of this node
        ///
        /// An array of nodes that are being boolean operated on
        /// </summary>
        [JsonProperty("children")]
        public NodeNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        ///
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from the canvas
        ///
        /// An array of export settings representing images to export from node
        ///
        /// A rectangular region of the canvas that can be exported
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section for more
        /// details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGridElement[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double? Opacity { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode? BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool? IsMask { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool? ClipsContent { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool? PreserveRatio { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign? StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double? StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// Radius of each corner of the rectangle
        /// </summary>
        [JsonProperty("cornerRadius")]
        public double? CornerRadius { get; set; }

        /// <summary>
        /// Text contained within text box
        /// </summary>
        [JsonProperty("characters")]
        public string Characters { get; set; }

        /// <summary>
        /// Style of text including font family and weight (see type style section for more
        /// information)
        /// </summary>
        [JsonProperty("style")]
        public NodeTypeStyle Style { get; set; }

        /// <summary>
        /// Array with same number of elements as characeters in text box, each element is a
        /// reference to the styleOverrideTable defined below and maps to the corresponding character
        /// in the characters field. Elements with value 0 have the default type style
        /// </summary>
        [JsonProperty("characterStyleOverrides")]
        public double[] CharacterStyleOverrides { get; set; }

        /// <summary>
        /// Map from ID to TypeStyle for looking up style overrides
        /// </summary>
        [JsonProperty("styleOverrideTable")]
        public Dictionary<string, NodeTypeStyle> StyleOverrideTable { get; set; }

        /// <summary>
        /// ID of component that this instance came from, refers to components table (see endpoints
        /// section below)
        /// </summary>
        [JsonProperty("componentId")]
        public string ComponentId { get; set; }
    }

    /// <summary>
    /// Format and size to export an asset at
    /// </summary>
    public partial class ExportSetting
    {
        /// <summary>
        /// File suffix to append to all filenames
        /// </summary>
        [JsonProperty("suffix")]
        public string Suffix { get; set; }

        /// <summary>
        /// Type of constraint to apply; string enum with potential values below
        ///
        /// * "SCALE": Scale by value
        /// * "WIDTH": Scale proportionally and set width to value
        /// * "HEIGHT": Scale proportionally and set height to value
        /// </summary>
        [JsonProperty("format")]
        public Format Format { get; set; }

        /// <summary>
        /// Constraint that determines sizing of exported asset
        /// </summary>
        [JsonProperty("constraint")]
        public ExportSettingConstraint Constraint { get; set; }
    }

    /// <summary>
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class DocumentNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        /// </summary>
        [JsonProperty("children")]
        public StickyNode[] Children { get; set; }
    }

    /// <summary>
    /// An array of canvases attached to the document
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// A logical grouping of nodes
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// A node that can have instances created of it that share the same properties
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class StickyNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        ///
        /// An array of nodes that are direct children of this node
        ///
        /// An array of nodes that are being boolean operated on
        /// </summary>
        [JsonProperty("children")]
        public NodeNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        ///
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from the canvas
        ///
        /// An array of export settings representing images to export from node
        ///
        /// A rectangular region of the canvas that can be exported
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section for more
        /// details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGridElement[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double? Opacity { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode? BlendMode { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool? IsMask { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool? ClipsContent { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool? PreserveRatio { get; set; }

        /// <summary>
        /// Where stroke is drawn relative to the vector outline as a string enum
        ///
        /// * INSIDE: draw stroke inside the shape boundary
        /// * OUTSIDE: draw stroke outside the shape boundary
        /// * CENTER: draw stroke centered along the shape boundary
        /// </summary>
        [JsonProperty("strokeAlign")]
        public StrokeAlign? StrokeAlign { get; set; }

        /// <summary>
        /// The weight of strokes on the node
        /// </summary>
        [JsonProperty("strokeWeight")]
        public double? StrokeWeight { get; set; }

        /// <summary>
        /// An array of fill paints applied to the node
        /// </summary>
        [JsonProperty("fills")]
        public PaintElement[] Fills { get; set; }

        /// <summary>
        /// An array of stroke paints applied to the node
        /// </summary>
        [JsonProperty("strokes")]
        public PaintElement[] Strokes { get; set; }

        /// <summary>
        /// Radius of each corner of the rectangle
        /// </summary>
        [JsonProperty("cornerRadius")]
        public double? CornerRadius { get; set; }

        /// <summary>
        /// Text contained within text box
        /// </summary>
        [JsonProperty("characters")]
        public string Characters { get; set; }

        /// <summary>
        /// Style of text including font family and weight (see type style section for more
        /// information)
        /// </summary>
        [JsonProperty("style")]
        public NodeTypeStyle Style { get; set; }

        /// <summary>
        /// Array with same number of elements as characeters in text box, each element is a
        /// reference to the styleOverrideTable defined below and maps to the corresponding character
        /// in the characters field. Elements with value 0 have the default type style
        /// </summary>
        [JsonProperty("characterStyleOverrides")]
        public double[] CharacterStyleOverrides { get; set; }

        /// <summary>
        /// Map from ID to TypeStyle for looking up style overrides
        /// </summary>
        [JsonProperty("styleOverrideTable")]
        public Dictionary<string, NodeTypeStyle> StyleOverrideTable { get; set; }

        /// <summary>
        /// ID of component that this instance came from, refers to components table (see endpoints
        /// section below)
        /// </summary>
        [JsonProperty("componentId")]
        public string ComponentId { get; set; }
    }

    /// <summary>
    /// Sizing constraint for exports
    /// </summary>
    public partial class Constraint
    {
        /// <summary>
        /// Type of constraint to apply; string enum with potential values below
        ///
        /// * "SCALE": Scale by value
        /// * "WIDTH": Scale proportionally and set width to value
        /// * "HEIGHT": Scale proportionally and set height to value
        /// </summary>
        [JsonProperty("type")]
        public ConstraintType Type { get; set; }

        /// <summary>
        /// See type property for effect of this field
        /// </summary>
        [JsonProperty("value")]
        public double? Value { get; set; }
    }

    /// <summary>
    /// A solid color, gradient, or image texture that can be applied as fills or strokes
    /// </summary>
    public partial class Paint
    {
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

        /// <summary>
        /// Overall opacity of paint (colors within the paint can also have opacity values which
        /// would blend with this)
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// (For solid paints) Solid color of the paint
        /// </summary>
        [JsonProperty("color")]
        public EffectColor Color { get; set; }

        /// <summary>
        /// (For gradient paints) This field contains three vectors, each of which are a position in
        /// normalized object space (normalized object space is if the top left corner of the
        /// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
        /// corresponds to the start of the gradient (value 0 for the purposes of calculating
        /// gradient stops), the second position is the end of the gradient (value 1), and the third
        /// handle position determines the width of the gradient (only relevant for non-linear
        /// gradients).
        /// </summary>
        [JsonProperty("gradientHandlePositions")]
        public EffectVector[] GradientHandlePositions { get; set; }

        /// <summary>
        /// (For gradient paints) Positions of key points along the gradient axis with the colors
        /// anchored there. Colors along the gradient are interpolated smoothly between neighboring
        /// gradient stops.
        /// </summary>
        [JsonProperty("gradientStops")]
        public ColorStopElement[] GradientStops { get; set; }

        /// <summary>
        /// (For image paints) Image scaling mode
        /// </summary>
        [JsonProperty("scaleMode")]
        public ScaleMode? ScaleMode { get; set; }
    }

    /// <summary>
    /// A node that can have instances created of it that share the same properties
    ///
    /// A logical grouping of nodes
    ///
    /// A regular n-sided polygon
    ///
    /// An ellipse
    ///
    /// An array of nodes that are direct children of this node
    ///
    /// A group that has a boolean operation applied to it
    ///
    /// A regular star shape
    ///
    /// A straight line
    ///
    /// A text box
    ///
    /// A rectangular region of the canvas that can be exported
    ///
    /// An instance of a component, changes to the component result in the same changes applied
    /// to the instance
    ///
    /// Properties are shared across all nodes
    ///
    /// See type property for effect of this field
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// X coordinate of the vector
    ///
    /// Y coordinate of the vector
    ///
    /// Opacity of the node
    ///
    /// The weight of strokes on the node
    ///
    /// Overall opacity of paint (colors within the paint can also have opacity values which
    /// would blend with this)
    ///
    /// Value between 0 and 1 representing position along gradient axis
    ///
    /// X coordinate of top left corner of the rectangle
    ///
    /// Y coordinate of top left corner of the rectangle
    ///
    /// Width of the rectangle
    ///
    /// Height of the rectangle
    ///
    /// Width of column grid or height of row grid or square grid spacing
    ///
    /// Spacing in between columns and rows
    ///
    /// Spacing before the first column or row
    ///
    /// Number of columns or rows
    ///
    /// Radius of each corner of the rectangle
    ///
    /// Line height in px
    ///
    /// Numeric font weight
    ///
    /// Line height as a percentage of normal line height
    ///
    /// Font size in px
    ///
    /// Space between characters in px
    ///
    /// Array with same number of elements as characeters in text box, each element is a
    /// reference to the styleOverrideTable defined below and maps to the corresponding character
    /// in the characters field. Elements with value 0 have the default type style
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// Is the paint enabled?
    ///
    /// Does this node mask sibling nodes in front of it?
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    ///
    /// Is the grid currently visible?
    ///
    /// Does this node clip content outside of its bounds?
    ///
    /// Is text italicized?
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Node ID of node to transition to in prototyping
    ///
    /// File suffix to append to all filenames
    ///
    /// Text contained within text box
    ///
    /// PostScript font name
    ///
    /// Font family of text (standard name)
    ///
    /// ID of component that this instance came from, refers to components table (see endpoints
    /// section below)
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class ComponentNode
    {
        /// <summary>
        /// A string uniquely identifying this node within the document
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The name given to the node by the user in the tool
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Whether or not the node is visible on the canvas
        /// </summary>
        [JsonProperty("visible")]
        public bool Visible { get; set; }

        /// <summary>
        /// The type of the node
        /// </summary>
        [JsonProperty("type")]
        public RegularPolygonNodeType Type { get; set; }

        /// <summary>
        /// An array of effects attached to this node (see effects section for more details)
        /// </summary>
        [JsonProperty("effects")]
        public EffectElement[] Effects { get; set; }

        /// <summary>
        /// An array of layout grids attached to this node (see layout grids section for more
        /// details). GROUP nodes do not have this attribute
        /// </summary>
        [JsonProperty("layoutGrids")]
        public LayoutGridElement[] LayoutGrids { get; set; }

        /// <summary>
        /// Opacity of the node
        /// </summary>
        [JsonProperty("opacity")]
        public double Opacity { get; set; }

        /// <summary>
        /// Bounding box of the node in absolute space coordinates
        /// </summary>
        [JsonProperty("absoluteBoundingBox")]
        public RegularPolygonNodeRectangle AbsoluteBoundingBox { get; set; }

        /// <summary>
        /// Node ID of node to transition to in prototyping
        /// </summary>
        [JsonProperty("transitionNodeID")]
        public string TransitionNodeId { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("blendMode")]
        public BlendMode BlendMode { get; set; }

        /// <summary>
        /// Background color of the node
        /// </summary>
        [JsonProperty("backgroundColor")]
        public EffectColor BackgroundColor { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("constraints")]
        public RegularPolygonNodeLayoutConstraint Constraints { get; set; }

        /// <summary>
        /// Does this node mask sibling nodes in front of it?
        /// </summary>
        [JsonProperty("isMask")]
        public bool IsMask { get; set; }

        /// <summary>
        /// Does this node clip content outside of its bounds?
        /// </summary>
        [JsonProperty("clipsContent")]
        public bool ClipsContent { get; set; }

        /// <summary>
        /// An array of export settings representing images to export from node
        /// </summary>
        [JsonProperty("exportSettings")]
        public ExportSettingElement[] ExportSettings { get; set; }

        /// <summary>
        /// How this node blends with nodes behind it in the scene (see blend mode section for more
        /// details)
        /// </summary>
        [JsonProperty("preserveRatio")]
        public bool PreserveRatio { get; set; }

        /// <summary>
        /// An array of nodes that are direct children of this node
        /// </summary>
        [JsonProperty("children")]
        public PurpleNode[] Children { get; set; }
    }

    /// <summary>
    /// A comment or reply left by a user
    /// </summary>
    public partial class Comment
    {
        /// <summary>
        /// Unique identifier for comment
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// The file in which the comment lives
        /// </summary>
        [JsonProperty("file_key")]
        public string FileKey { get; set; }

        /// <summary>
        /// If present, the id of the comment to which this is the reply
        /// </summary>
        [JsonProperty("parent_id")]
        public string ParentId { get; set; }

        /// <summary>
        /// The user who left the comment
        /// </summary>
        [JsonProperty("user")]
        public CommentUser User { get; set; }
    }

    /// <summary>
    /// A description of a user
    ///
    /// The user who left the comment
    /// </summary>
    public partial class CommentUser
    {
        [JsonProperty("handle")]
        public string Handle { get; set; }

        [JsonProperty("img_url")]
        public string ImgUrl { get; set; }
    }

    /// <summary>
    /// Enum describing how layer blends with layers below
    ///
    /// See type property for effect of this field
    ///
    /// How this node blends with nodes behind it in the scene (see blend mode section for more
    /// details)
    /// </summary>
    public enum BlendMode { Color, ColorBurn, ColorDodge, Darken, Difference, Exclusion, HardLight, Hue, Lighten, LinearBurn, LinearDodge, Luminosity, Multiply, Normal, Overlay, PassThrough, Saturation, Screen, SoftLight };

    /// <summary>
    /// * LEFT: Node is laid out relative to left of the containing frame
    /// * RIGHT: Node is laid out relative to right of the containing frame
    /// * CENTER: Node is horizontally centered relative to containing frame
    /// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// * SCALE: Node scales horizontally with containing frame
    /// </summary>
    public enum Horizontal { Center, Left, LeftRight, Right, Scale };

    /// <summary>
    /// * TOP: Node is laid out relative to top of the containing frame
    /// * BOTTOM: Node is laid out relative to bottom of the containing frame
    /// * CENTER: Node is vertically centered relative to containing frame
    /// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
    /// (node stretches with frame)
    /// * SCALE: Node scales vertically with containing frame
    /// </summary>
    public enum Vertical { Bottom, Center, Scale, Top, TopBottom };

    /// <summary>
    /// Type of effect as a string enum
    /// </summary>
    public enum EffectType { BackgroundBlur, DropShadow, InnerShadow, LayerBlur };

    /// <summary>
    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    /// </summary>
    public enum ConstraintType { Height, Scale, Width };

    /// <summary>
    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    /// </summary>
    public enum Format { Jpg, Png, Svg };

    /// <summary>
    /// (For image paints) Image scaling mode
    /// </summary>
    public enum ScaleMode { Fill, Fit, Stretch, Tile };

    /// <summary>
    /// Type of paint as a string enum
    /// </summary>
    public enum PaintType { Emoji, GradientAngular, GradientDiamond, GradientLinear, GradientRadial, Image, Solid };

    /// <summary>
    /// Where stroke is drawn relative to the vector outline as a string enum
    ///
    /// * INSIDE: draw stroke inside the shape boundary
    /// * OUTSIDE: draw stroke outside the shape boundary
    /// * CENTER: draw stroke centered along the shape boundary
    /// </summary>
    public enum StrokeAlign { Center, Inside, Outside };

    /// <summary>
    /// The type of the node
    /// </summary>
    public enum RegularPolygonNodeType { Boolean, Canvas, Component, Document, Ellipse, Frame, Group, Instance, Line, Rectangle, RegularPolygon, Slice, Star, Text, Vector };

    /// <summary>
    /// Positioning of grid as a string enum
    ///
    /// * MIN: Grid starts at the left or top of the frame
    /// * MAX: Grid starts at the right or bottom of the frame
    /// * CENTER: Grid is center aligned
    /// </summary>
    public enum Alignment { Center, Max, Min };

    /// <summary>
    /// * COLUMNS: Vertical grid
    /// * ROWS: Horizontal grid
    /// * GRID: Square grid
    /// </summary>
    public enum Pattern { Columns, Grid, Rows };

    /// <summary>
    /// Horizontal text alignment as string enum
    /// </summary>
    public enum TextAlignHorizontal { Center, Justified, Left, Right };

    /// <summary>
    /// Vertical text alignment as string enum
    /// </summary>
    public enum TextAlignVertical { Bottom, Center, Top };

    public partial class RegularPolygonNode
    {
        public static RegularPolygonNode FromJson(string json) => JsonConvert.DeserializeObject<RegularPolygonNode>(json, QuickType.Converter.Settings);
    }

    public partial class EllipseNode
    {
        public static EllipseNode FromJson(string json) => JsonConvert.DeserializeObject<EllipseNode>(json, QuickType.Converter.Settings);
    }

    public partial class GroupNode
    {
        public static GroupNode FromJson(string json) => JsonConvert.DeserializeObject<GroupNode>(json, QuickType.Converter.Settings);
    }

    public partial class Node
    {
        public static Node FromJson(string json) => JsonConvert.DeserializeObject<Node>(json, QuickType.Converter.Settings);
    }

    public partial class Vector
    {
        public static Vector FromJson(string json) => JsonConvert.DeserializeObject<Vector>(json, QuickType.Converter.Settings);
    }

    public partial class Color
    {
        public static Color FromJson(string json) => JsonConvert.DeserializeObject<Color>(json, QuickType.Converter.Settings);
    }

    public partial class Global
    {
        public static Global FromJson(string json) => JsonConvert.DeserializeObject<Global>(json, QuickType.Converter.Settings);
    }

    public partial class ColorStop
    {
        public static ColorStop FromJson(string json) => JsonConvert.DeserializeObject<ColorStop>(json, QuickType.Converter.Settings);
    }

    public partial class VectorNode
    {
        public static VectorNode FromJson(string json) => JsonConvert.DeserializeObject<VectorNode>(json, QuickType.Converter.Settings);
    }

    public partial class LayoutConstraint
    {
        public static LayoutConstraint FromJson(string json) => JsonConvert.DeserializeObject<LayoutConstraint>(json, QuickType.Converter.Settings);
    }

    public partial class BooleanNode
    {
        public static BooleanNode FromJson(string json) => JsonConvert.DeserializeObject<BooleanNode>(json, QuickType.Converter.Settings);
    }

    public partial class User
    {
        public static User FromJson(string json) => JsonConvert.DeserializeObject<User>(json, QuickType.Converter.Settings);
    }

    public partial class TextNode
    {
        public static TextNode FromJson(string json) => JsonConvert.DeserializeObject<TextNode>(json, QuickType.Converter.Settings);
    }

    public partial class FrameNode
    {
        public static FrameNode FromJson(string json) => JsonConvert.DeserializeObject<FrameNode>(json, QuickType.Converter.Settings);
    }

    public partial class Rectangle
    {
        public static Rectangle FromJson(string json) => JsonConvert.DeserializeObject<Rectangle>(json, QuickType.Converter.Settings);
    }

    public partial class LayoutGrid
    {
        public static LayoutGrid FromJson(string json) => JsonConvert.DeserializeObject<LayoutGrid>(json, QuickType.Converter.Settings);
    }

    public partial class Effect
    {
        public static Effect FromJson(string json) => JsonConvert.DeserializeObject<Effect>(json, QuickType.Converter.Settings);
    }

    public partial class RectangleNode
    {
        public static RectangleNode FromJson(string json) => JsonConvert.DeserializeObject<RectangleNode>(json, QuickType.Converter.Settings);
    }

    public partial struct BlendMode
    {
        public static BlendMode FromJson(string json) => JsonConvert.DeserializeObject<BlendMode>(json, QuickType.Converter.Settings);
    }

    public partial class SliceNode
    {
        public static SliceNode FromJson(string json) => JsonConvert.DeserializeObject<SliceNode>(json, QuickType.Converter.Settings);
    }

    public partial class StarNode
    {
        public static StarNode FromJson(string json) => JsonConvert.DeserializeObject<StarNode>(json, QuickType.Converter.Settings);
    }

    public partial class LineNode
    {
        public static LineNode FromJson(string json) => JsonConvert.DeserializeObject<LineNode>(json, QuickType.Converter.Settings);
    }

    public partial class InstanceNode
    {
        public static InstanceNode FromJson(string json) => JsonConvert.DeserializeObject<InstanceNode>(json, QuickType.Converter.Settings);
    }

    public partial class TypeStyle
    {
        public static TypeStyle FromJson(string json) => JsonConvert.DeserializeObject<TypeStyle>(json, QuickType.Converter.Settings);
    }

    public partial class CanvasNode
    {
        public static CanvasNode FromJson(string json) => JsonConvert.DeserializeObject<CanvasNode>(json, QuickType.Converter.Settings);
    }

    public partial class ExportSetting
    {
        public static ExportSetting FromJson(string json) => JsonConvert.DeserializeObject<ExportSetting>(json, QuickType.Converter.Settings);
    }

    public partial class DocumentNode
    {
        public static DocumentNode FromJson(string json) => JsonConvert.DeserializeObject<DocumentNode>(json, QuickType.Converter.Settings);
    }

    public partial class Constraint
    {
        public static Constraint FromJson(string json) => JsonConvert.DeserializeObject<Constraint>(json, QuickType.Converter.Settings);
    }

    public partial class Paint
    {
        public static Paint FromJson(string json) => JsonConvert.DeserializeObject<Paint>(json, QuickType.Converter.Settings);
    }

    public partial class ComponentNode
    {
        public static ComponentNode FromJson(string json) => JsonConvert.DeserializeObject<ComponentNode>(json, QuickType.Converter.Settings);
    }

    public partial class Comment
    {
        public static Comment FromJson(string json) => JsonConvert.DeserializeObject<Comment>(json, QuickType.Converter.Settings);
    }

    static class BlendModeExtensions
    {
        public static BlendMode? ValueForString(string str)
        {
            switch (str)
            {
                case "COLOR": return BlendMode.Color;
                case "COLOR_BURN": return BlendMode.ColorBurn;
                case "COLOR_DODGE": return BlendMode.ColorDodge;
                case "DARKEN": return BlendMode.Darken;
                case "DIFFERENCE": return BlendMode.Difference;
                case "EXCLUSION": return BlendMode.Exclusion;
                case "HARD_LIGHT": return BlendMode.HardLight;
                case "HUE": return BlendMode.Hue;
                case "LIGHTEN": return BlendMode.Lighten;
                case "LINEAR_BURN": return BlendMode.LinearBurn;
                case "LINEAR_DODGE": return BlendMode.LinearDodge;
                case "LUMINOSITY": return BlendMode.Luminosity;
                case "MULTIPLY": return BlendMode.Multiply;
                case "NORMAL": return BlendMode.Normal;
                case "OVERLAY": return BlendMode.Overlay;
                case "PASS_THROUGH": return BlendMode.PassThrough;
                case "SATURATION": return BlendMode.Saturation;
                case "SCREEN": return BlendMode.Screen;
                case "SOFT_LIGHT": return BlendMode.SoftLight;
                default: return null;
            }
        }

        public static BlendMode ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this BlendMode value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case BlendMode.Color: serializer.Serialize(writer, "COLOR"); break;
                case BlendMode.ColorBurn: serializer.Serialize(writer, "COLOR_BURN"); break;
                case BlendMode.ColorDodge: serializer.Serialize(writer, "COLOR_DODGE"); break;
                case BlendMode.Darken: serializer.Serialize(writer, "DARKEN"); break;
                case BlendMode.Difference: serializer.Serialize(writer, "DIFFERENCE"); break;
                case BlendMode.Exclusion: serializer.Serialize(writer, "EXCLUSION"); break;
                case BlendMode.HardLight: serializer.Serialize(writer, "HARD_LIGHT"); break;
                case BlendMode.Hue: serializer.Serialize(writer, "HUE"); break;
                case BlendMode.Lighten: serializer.Serialize(writer, "LIGHTEN"); break;
                case BlendMode.LinearBurn: serializer.Serialize(writer, "LINEAR_BURN"); break;
                case BlendMode.LinearDodge: serializer.Serialize(writer, "LINEAR_DODGE"); break;
                case BlendMode.Luminosity: serializer.Serialize(writer, "LUMINOSITY"); break;
                case BlendMode.Multiply: serializer.Serialize(writer, "MULTIPLY"); break;
                case BlendMode.Normal: serializer.Serialize(writer, "NORMAL"); break;
                case BlendMode.Overlay: serializer.Serialize(writer, "OVERLAY"); break;
                case BlendMode.PassThrough: serializer.Serialize(writer, "PASS_THROUGH"); break;
                case BlendMode.Saturation: serializer.Serialize(writer, "SATURATION"); break;
                case BlendMode.Screen: serializer.Serialize(writer, "SCREEN"); break;
                case BlendMode.SoftLight: serializer.Serialize(writer, "SOFT_LIGHT"); break;
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

    static class ScaleModeExtensions
    {
        public static ScaleMode? ValueForString(string str)
        {
            switch (str)
            {
                case "FILL": return ScaleMode.Fill;
                case "FIT": return ScaleMode.Fit;
                case "STRETCH": return ScaleMode.Stretch;
                case "TILE": return ScaleMode.Tile;
                default: return null;
            }
        }

        public static ScaleMode ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this ScaleMode value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case ScaleMode.Fill: serializer.Serialize(writer, "FILL"); break;
                case ScaleMode.Fit: serializer.Serialize(writer, "FIT"); break;
                case ScaleMode.Stretch: serializer.Serialize(writer, "STRETCH"); break;
                case ScaleMode.Tile: serializer.Serialize(writer, "TILE"); break;
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

    static class RegularPolygonNodeTypeExtensions
    {
        public static RegularPolygonNodeType? ValueForString(string str)
        {
            switch (str)
            {
                case "BOOLEAN": return RegularPolygonNodeType.Boolean;
                case "CANVAS": return RegularPolygonNodeType.Canvas;
                case "COMPONENT": return RegularPolygonNodeType.Component;
                case "DOCUMENT": return RegularPolygonNodeType.Document;
                case "ELLIPSE": return RegularPolygonNodeType.Ellipse;
                case "FRAME": return RegularPolygonNodeType.Frame;
                case "GROUP": return RegularPolygonNodeType.Group;
                case "INSTANCE": return RegularPolygonNodeType.Instance;
                case "LINE": return RegularPolygonNodeType.Line;
                case "RECTANGLE": return RegularPolygonNodeType.Rectangle;
                case "REGULAR_POLYGON": return RegularPolygonNodeType.RegularPolygon;
                case "SLICE": return RegularPolygonNodeType.Slice;
                case "STAR": return RegularPolygonNodeType.Star;
                case "TEXT": return RegularPolygonNodeType.Text;
                case "VECTOR": return RegularPolygonNodeType.Vector;
                default: return null;
            }
        }

        public static RegularPolygonNodeType ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this RegularPolygonNodeType value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case RegularPolygonNodeType.Boolean: serializer.Serialize(writer, "BOOLEAN"); break;
                case RegularPolygonNodeType.Canvas: serializer.Serialize(writer, "CANVAS"); break;
                case RegularPolygonNodeType.Component: serializer.Serialize(writer, "COMPONENT"); break;
                case RegularPolygonNodeType.Document: serializer.Serialize(writer, "DOCUMENT"); break;
                case RegularPolygonNodeType.Ellipse: serializer.Serialize(writer, "ELLIPSE"); break;
                case RegularPolygonNodeType.Frame: serializer.Serialize(writer, "FRAME"); break;
                case RegularPolygonNodeType.Group: serializer.Serialize(writer, "GROUP"); break;
                case RegularPolygonNodeType.Instance: serializer.Serialize(writer, "INSTANCE"); break;
                case RegularPolygonNodeType.Line: serializer.Serialize(writer, "LINE"); break;
                case RegularPolygonNodeType.Rectangle: serializer.Serialize(writer, "RECTANGLE"); break;
                case RegularPolygonNodeType.RegularPolygon: serializer.Serialize(writer, "REGULAR_POLYGON"); break;
                case RegularPolygonNodeType.Slice: serializer.Serialize(writer, "SLICE"); break;
                case RegularPolygonNodeType.Star: serializer.Serialize(writer, "STAR"); break;
                case RegularPolygonNodeType.Text: serializer.Serialize(writer, "TEXT"); break;
                case RegularPolygonNodeType.Vector: serializer.Serialize(writer, "VECTOR"); break;
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

    public static class Serialize
    {
        public static string ToJson(this RegularPolygonNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this EllipseNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this GroupNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Node self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Vector self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Color self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Global self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this ColorStop self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this VectorNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this LayoutConstraint self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this BooleanNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this User self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this TextNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this FrameNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Rectangle self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this LayoutGrid self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Effect self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this RectangleNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this BlendMode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this SliceNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this StarNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this LineNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this InstanceNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this TypeStyle self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this CanvasNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this ExportSetting self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this DocumentNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Constraint self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Paint self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this ComponentNode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Comment self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
    }

    internal class Converter: JsonConverter
    {
        public override bool CanConvert(Type t) => t == typeof(BlendMode) || t == typeof(Horizontal) || t == typeof(Vertical) || t == typeof(EffectType) || t == typeof(ConstraintType) || t == typeof(Format) || t == typeof(ScaleMode) || t == typeof(PaintType) || t == typeof(StrokeAlign) || t == typeof(RegularPolygonNodeType) || t == typeof(Alignment) || t == typeof(Pattern) || t == typeof(TextAlignHorizontal) || t == typeof(TextAlignVertical) || t == typeof(BlendMode?) || t == typeof(Horizontal?) || t == typeof(Vertical?) || t == typeof(EffectType?) || t == typeof(ConstraintType?) || t == typeof(Format?) || t == typeof(ScaleMode?) || t == typeof(PaintType?) || t == typeof(StrokeAlign?) || t == typeof(RegularPolygonNodeType?) || t == typeof(Alignment?) || t == typeof(Pattern?) || t == typeof(TextAlignHorizontal?) || t == typeof(TextAlignVertical?);

        public override object ReadJson(JsonReader reader, Type t, object existingValue, JsonSerializer serializer)
        {
            if (t == typeof(BlendMode))
                return BlendModeExtensions.ReadJson(reader, serializer);
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
            if (t == typeof(ScaleMode))
                return ScaleModeExtensions.ReadJson(reader, serializer);
            if (t == typeof(PaintType))
                return PaintTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(StrokeAlign))
                return StrokeAlignExtensions.ReadJson(reader, serializer);
            if (t == typeof(RegularPolygonNodeType))
                return RegularPolygonNodeTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(Alignment))
                return AlignmentExtensions.ReadJson(reader, serializer);
            if (t == typeof(Pattern))
                return PatternExtensions.ReadJson(reader, serializer);
            if (t == typeof(TextAlignHorizontal))
                return TextAlignHorizontalExtensions.ReadJson(reader, serializer);
            if (t == typeof(TextAlignVertical))
                return TextAlignVerticalExtensions.ReadJson(reader, serializer);
            if (t == typeof(BlendMode?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return BlendModeExtensions.ReadJson(reader, serializer);
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
            if (t == typeof(ScaleMode?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return ScaleModeExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(PaintType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return PaintTypeExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(StrokeAlign?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return StrokeAlignExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(RegularPolygonNodeType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return RegularPolygonNodeTypeExtensions.ReadJson(reader, serializer);
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
            throw new Exception("Unknown type");
        }

        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            var t = value.GetType();
            if (t == typeof(BlendMode))
            {
                ((BlendMode)value).WriteJson(writer, serializer);
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
            if (t == typeof(ScaleMode))
            {
                ((ScaleMode)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(PaintType))
            {
                ((PaintType)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(StrokeAlign))
            {
                ((StrokeAlign)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(RegularPolygonNodeType))
            {
                ((RegularPolygonNodeType)value).WriteJson(writer, serializer);
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
