// To parse this JSON data, add NuGet 'Newtonsoft.Json' then do one of these:
//
//    using QuickType;
//
//    var node = Node.FromJson(jsonString);
//    var color = Color.FromJson(jsonString);
//    var global = Global.FromJson(jsonString);
//    var user = User.FromJson(jsonString);
//    var blendMode = BlendMode.FromJson(jsonString);
//    var canvas = Canvas.FromJson(jsonString);
//    var document = Document.FromJson(jsonString);
//    var constraint = Constraint.FromJson(jsonString);
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
    /// An array of canvases attached to the document
    ///
    /// Properties are shared across all nodes
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// See type property for effect of this field
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
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
        public NodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        /// </summary>
        [JsonProperty("children")]
        public NodeNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        /// </summary>
        [JsonProperty("backgroundColor")]
        public NodeColor BackgroundColor { get; set; }
    }

    /// <summary>
    /// An RGBA color
    ///
    /// Background color of the canvas
    /// </summary>
    public partial class NodeColor
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
    /// An array of canvases attached to the document
    ///
    /// Properties are shared across all nodes
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// See type property for effect of this field
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    ///
    /// An array of top level layers on the canvas
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
        public NodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        /// </summary>
        [JsonProperty("children")]
        public NodeNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        /// </summary>
        [JsonProperty("backgroundColor")]
        public NodeColor BackgroundColor { get; set; }
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
        public NodeType Type { get; set; }
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
    /// An array of canvases attached to the document
    ///
    /// Properties are shared across all nodes
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// See type property for effect of this field
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class Canvas
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
        public NodeType Type { get; set; }

        /// <summary>
        /// An array of top level layers on the canvas
        /// </summary>
        [JsonProperty("children")]
        public PurpleNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        /// </summary>
        [JsonProperty("backgroundColor")]
        public NodeColor BackgroundColor { get; set; }
    }

    /// <summary>
    /// An array of top level layers on the canvas
    ///
    /// An array of canvases attached to the document
    ///
    /// Properties are shared across all nodes
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// See type property for effect of this field
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
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
        public NodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        /// </summary>
        [JsonProperty("children")]
        public NodeNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        /// </summary>
        [JsonProperty("backgroundColor")]
        public NodeColor BackgroundColor { get; set; }
    }

    /// <summary>
    /// An array of canvases attached to the document
    ///
    /// Properties are shared across all nodes
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// See type property for effect of this field
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
    ///
    /// Unique identifier for comment
    ///
    /// The file in which the comment lives
    ///
    /// If present, the id of the comment to which this is the reply
    /// </summary>
    public partial class Document
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
        public NodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        /// </summary>
        [JsonProperty("children")]
        public FluffyNode[] Children { get; set; }
    }

    /// <summary>
    /// An array of canvases attached to the document
    ///
    /// Properties are shared across all nodes
    ///
    /// Red channel value, between 0 and 1
    ///
    /// Green channel value, between 0 and 1
    ///
    /// Blue channel value, between 0 and 1
    ///
    /// Alpha channel value, between 0 and 1
    ///
    /// See type property for effect of this field
    ///
    /// Whether or not the node is visible on the canvas
    ///
    /// A string uniquely identifying this node within the document
    ///
    /// The name given to the node by the user in the tool
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
        public NodeType Type { get; set; }

        /// <summary>
        /// An array of canvases attached to the document
        ///
        /// An array of top level layers on the canvas
        /// </summary>
        [JsonProperty("children")]
        public NodeNode[] Children { get; set; }

        /// <summary>
        /// Background color of the canvas
        /// </summary>
        [JsonProperty("backgroundColor")]
        public NodeColor BackgroundColor { get; set; }
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
    /// The type of the node
    /// </summary>
    public enum NodeType { Boolean, Canvas, Component, Document, Ellipse, Frame, Group, Instance, Line, Rectangle, RegularPolygon, Slice, Star, Text, Vector };

    /// <summary>
    /// Enum describing how layer blends with layers below
    /// </summary>
    public enum BlendMode { Color, ColorBurn, ColorDodge, Darken, Difference, Exclusion, HardLight, Hue, Lighten, LinearBurn, LinearDodge, Luminosity, Multiply, Normal, Overlay, PassThrough, Saturation, Screen, SoftLight };

    /// <summary>
    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    /// </summary>
    public enum ConstraintType { Height, Scale, Width };

    public partial class Node
    {
        public static Node FromJson(string json) => JsonConvert.DeserializeObject<Node>(json, QuickType.Converter.Settings);
    }

    public partial class Color
    {
        public static Color FromJson(string json) => JsonConvert.DeserializeObject<Color>(json, QuickType.Converter.Settings);
    }

    public partial class Global
    {
        public static Global FromJson(string json) => JsonConvert.DeserializeObject<Global>(json, QuickType.Converter.Settings);
    }

    public partial class User
    {
        public static User FromJson(string json) => JsonConvert.DeserializeObject<User>(json, QuickType.Converter.Settings);
    }

    public partial struct BlendMode
    {
        public static BlendMode FromJson(string json) => JsonConvert.DeserializeObject<BlendMode>(json, QuickType.Converter.Settings);
    }

    public partial class Canvas
    {
        public static Canvas FromJson(string json) => JsonConvert.DeserializeObject<Canvas>(json, QuickType.Converter.Settings);
    }

    public partial class Document
    {
        public static Document FromJson(string json) => JsonConvert.DeserializeObject<Document>(json, QuickType.Converter.Settings);
    }

    public partial class Constraint
    {
        public static Constraint FromJson(string json) => JsonConvert.DeserializeObject<Constraint>(json, QuickType.Converter.Settings);
    }

    public partial class Comment
    {
        public static Comment FromJson(string json) => JsonConvert.DeserializeObject<Comment>(json, QuickType.Converter.Settings);
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

    public static class Serialize
    {
        public static string ToJson(this Node self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Color self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Global self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this User self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this BlendMode self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Canvas self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Document self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Constraint self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Comment self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
    }

    internal class Converter: JsonConverter
    {
        public override bool CanConvert(Type t) => t == typeof(NodeType) || t == typeof(BlendMode) || t == typeof(ConstraintType) || t == typeof(NodeType?) || t == typeof(BlendMode?) || t == typeof(ConstraintType?);

        public override object ReadJson(JsonReader reader, Type t, object existingValue, JsonSerializer serializer)
        {
            if (t == typeof(NodeType))
                return NodeTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(BlendMode))
                return BlendModeExtensions.ReadJson(reader, serializer);
            if (t == typeof(ConstraintType))
                return ConstraintTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(NodeType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return NodeTypeExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(BlendMode?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return BlendModeExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(ConstraintType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return ConstraintTypeExtensions.ReadJson(reader, serializer);
            }
            throw new Exception("Unknown type");
        }

        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            var t = value.GetType();
            if (t == typeof(NodeType))
            {
                ((NodeType)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(BlendMode))
            {
                ((BlendMode)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(ConstraintType))
            {
                ((ConstraintType)value).WriteJson(writer, serializer);
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
