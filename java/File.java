package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class File {
    private String key;
    private String lastModified;
    private String name;
    private String thumbnailURL;

    @JsonProperty("key")
    public String getKey() { return key; }
    @JsonProperty("key")
    public void setKey(String value) { this.key = value; }

    /**
     * utc date in iso8601
     */
    @JsonProperty("last_modified")
    public String getLastModified() { return lastModified; }
    @JsonProperty("last_modified")
    public void setLastModified(String value) { this.lastModified = value; }

    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }

    @JsonProperty("thumbnail_url")
    public String getThumbnailURL() { return thumbnailURL; }
    @JsonProperty("thumbnail_url")
    public void setThumbnailURL(String value) { this.thumbnailURL = value; }
}
