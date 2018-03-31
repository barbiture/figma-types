package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * POST /v1/files/:key/comments
 *
 * > Description
 * Posts a new comment on the file.
 *
 * > Path parameters
 * key String
 * File to get comments from
 *
 * > Body parameters
 * message String
 * The text contents of the comment to post
 *
 * client_meta Vector2 | FrameOffset
 * The position of where to place the comment. This can either be an absolute canvas
 * position or the relative position within a frame.
 *
 * > Return value
 * The Comment that was successfully posted
 *
 * > Error codes
 * 404 The specified file was not found
 */
public class CommentRequest {
    private ClientMeta clientMeta;
    private String message;

    @JsonProperty("client_meta")
    public ClientMeta getClientMeta() { return clientMeta; }
    @JsonProperty("client_meta")
    public void setClientMeta(ClientMeta value) { this.clientMeta = value; }

    @JsonProperty("message")
    public String getMessage() { return message; }
    @JsonProperty("message")
    public void setMessage(String value) { this.message = value; }
}
