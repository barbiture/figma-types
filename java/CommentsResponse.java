package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * GET /v1/files/:key/comments
 *
 * > Description
 * A list of comments left on the file.
 *
 * > Path parameters
 * key String
 * File to get comments from
 */
public class CommentsResponse {
    private CommentElement[] comments;

    @JsonProperty("comments")
    public CommentElement[] getComments() { return comments; }
    @JsonProperty("comments")
    public void setComments(CommentElement[] value) { this.comments = value; }
}
