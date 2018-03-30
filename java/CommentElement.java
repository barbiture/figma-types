package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A comment or reply left by a user
 */
public class CommentElement {
    private String message;
    private String createdAt;
    private CommentUser user;
    private double orderID;
    private String parentID;
    private ClientMeta clientMeta;
    private String resolvedAt;
    private String id;
    private String fileKey;

    /**
     * (MISSING IN DOCS)
     * The content of the comment
     */
    @JsonProperty("message")
    public String getMessage() { return message; }
    @JsonProperty("message")
    public void setMessage(String value) { this.message = value; }

    /**
     * Enables basic storage and retrieval of dates and times.
     */
    @JsonProperty("created_at")
    public String getCreatedAt() { return createdAt; }
    @JsonProperty("created_at")
    public void setCreatedAt(String value) { this.createdAt = value; }

    /**
     * The user who left the comment
     */
    @JsonProperty("user")
    public CommentUser getUser() { return user; }
    @JsonProperty("user")
    public void setUser(CommentUser value) { this.user = value; }

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

    @JsonProperty("client_meta")
    public ClientMeta getClientMeta() { return clientMeta; }
    @JsonProperty("client_meta")
    public void setClientMeta(ClientMeta value) { this.clientMeta = value; }

    /**
     * Enables basic storage and retrieval of dates and times.
     */
    @JsonProperty("resolved_at")
    public String getResolvedAt() { return resolvedAt; }
    @JsonProperty("resolved_at")
    public void setResolvedAt(String value) { this.resolvedAt = value; }

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
}
