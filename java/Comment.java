package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A comment or reply left by a user
 */
public class Comment {
    private String id;
    private CommentUser user;

    /**
     * Unique identifier for comment
     */
    @JsonProperty("id")
    public String getID() { return id; }
    @JsonProperty("id")
    public void setID(String value) { this.id = value; }

    @JsonProperty("user")
    public CommentUser getUser() { return user; }
    @JsonProperty("user")
    public void setUser(CommentUser value) { this.user = value; }
}
