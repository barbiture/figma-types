package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A comment or reply left by a user
 */
public class Comment {
    private ClientMeta clientMeta;
    private String createdAt;
    private String fileKey;
    private String id;
    private String message;
    private double orderID;
    private String parentID;
    private String resolvedAt;
    private User user;

    @JsonProperty("client_meta")
    public ClientMeta getClientMeta() { return clientMeta; }
    @JsonProperty("client_meta")
    public void setClientMeta(ClientMeta value) { this.clientMeta = value; }

    /**
     * The time at which the comment was left
     */
    @JsonProperty("created_at")
    public String getCreatedAt() { return createdAt; }
    @JsonProperty("created_at")
    public void setCreatedAt(String value) { this.createdAt = value; }

    /**
     * The file in which the comment lives
     */
    @JsonProperty("file_key")
    public String getFileKey() { return fileKey; }
    @JsonProperty("file_key")
    public void setFileKey(String value) { this.fileKey = value; }

    /**
     * Unique identifier for comment
     */
    @JsonProperty("id")
    public String getID() { return id; }
    @JsonProperty("id")
    public void setID(String value) { this.id = value; }

    /**
     * (MISSING IN DOCS)
     * The content of the comment
     */
    @JsonProperty("message")
    public String getMessage() { return message; }
    @JsonProperty("message")
    public void setMessage(String value) { this.message = value; }

    /**
     * Only set for top level comments. The number displayed with the
     * comment in the UI
     */
    @JsonProperty("order_id")
    public double getOrderID() { return orderID; }
    @JsonProperty("order_id")
    public void setOrderID(double value) { this.orderID = value; }

    /**
     * If present, the id of the comment to which this is the reply
     */
    @JsonProperty("parent_id")
    public String getParentID() { return parentID; }
    @JsonProperty("parent_id")
    public void setParentID(String value) { this.parentID = value; }

    /**
     * If set, when the comment was resolved
     */
    @JsonProperty("resolved_at")
    public String getResolvedAt() { return resolvedAt; }
    @JsonProperty("resolved_at")
    public void setResolvedAt(String value) { this.resolvedAt = value; }

    /**
     * The user who left the comment
     */
    @JsonProperty("user")
    public User getUser() { return user; }
    @JsonProperty("user")
    public void setUser(User value) { this.user = value; }
}
