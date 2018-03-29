package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A comment or reply left by a user
 */
public class Comment {
    private String id;
    private String fileKey;
    private String parentID;
    private User user;

    /**
     * Unique identifier for comment
     */
    @JsonProperty("id")
    public String getID() { return id; }
    @JsonProperty("id")
    public void setID(String value) { this.id = value; }

    /**
     * The file in which the comment lives
     */
    @JsonProperty("file_key")
    public String getFileKey() { return fileKey; }
    @JsonProperty("file_key")
    public void setFileKey(String value) { this.fileKey = value; }

    /**
     * If present, the id of the comment to which this is the reply
     */
    @JsonProperty("parent_id")
    public String getParentID() { return parentID; }
    @JsonProperty("parent_id")
    public void setParentID(String value) { this.parentID = value; }

    /**
     * The user who left the comment
     */
    @JsonProperty("user")
    public User getUser() { return user; }
    @JsonProperty("user")
    public void setUser(User value) { this.user = value; }
}
