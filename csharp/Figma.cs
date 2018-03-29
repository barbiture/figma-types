// To parse this JSON data, add NuGet 'Newtonsoft.Json' then do one of these:
//
//    using QuickType;
//
//    var comment = Comment.FromJson(jsonString);
//    var user = User.FromJson(jsonString);
//    var color = Color.FromJson(jsonString);
//    var constraint = Constraint.FromJson(jsonString);

namespace QuickType
{
    using System;
    using System.Collections.Generic;
    using System.Net;

    using System.Globalization;
    using Newtonsoft.Json;
    using Newtonsoft.Json.Converters;

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
    /// Type of constraint to apply; string enum with potential values below
    ///
    /// * "SCALE": Scale by value
    /// * "WIDTH": Scale proportionally and set width to value
    /// * "HEIGHT": Scale proportionally and set height to value
    /// </summary>
    public enum ConstraintType { Height, Scale, Width };

    public partial class Comment
    {
        public static Comment FromJson(string json) => JsonConvert.DeserializeObject<Comment>(json, QuickType.Converter.Settings);
    }

    public partial class User
    {
        public static User FromJson(string json) => JsonConvert.DeserializeObject<User>(json, QuickType.Converter.Settings);
    }

    public partial class Color
    {
        public static Color FromJson(string json) => JsonConvert.DeserializeObject<Color>(json, QuickType.Converter.Settings);
    }

    public partial class Constraint
    {
        public static Constraint FromJson(string json) => JsonConvert.DeserializeObject<Constraint>(json, QuickType.Converter.Settings);
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
        public static string ToJson(this Comment self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this User self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Color self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Constraint self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
    }

    internal class Converter: JsonConverter
    {
        public override bool CanConvert(Type t) => t == typeof(ConstraintType) || t == typeof(ConstraintType?);

        public override object ReadJson(JsonReader reader, Type t, object existingValue, JsonSerializer serializer)
        {
            if (t == typeof(ConstraintType))
                return ConstraintTypeExtensions.ReadJson(reader, serializer);
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
