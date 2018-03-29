// To parse this JSON data, add NuGet 'Newtonsoft.Json' then do one of these:
//
//    using QuickType;
//
//    var comment = Comment.FromJson(jsonString);
//    var user = User.FromJson(jsonString);

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

    public partial class Comment
    {
        public static Comment FromJson(string json) => JsonConvert.DeserializeObject<Comment>(json, QuickType.Converter.Settings);
    }

    public partial class User
    {
        public static User FromJson(string json) => JsonConvert.DeserializeObject<User>(json, QuickType.Converter.Settings);
    }

    public static class Serialize
    {
        public static string ToJson(this Comment self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this User self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
    }

    internal class Converter
    {
        public static readonly JsonSerializerSettings Settings = new JsonSerializerSettings
        {
            MetadataPropertyHandling = MetadataPropertyHandling.Ignore,
            DateParseHandling = DateParseHandling.None,
            Converters = { 
                new IsoDateTimeConverter { DateTimeStyles = DateTimeStyles.AssumeUniversal }
            },
        };
    }
}
