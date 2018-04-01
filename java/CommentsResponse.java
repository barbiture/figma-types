package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class CommentsResponse {
    private Comment[] comments;

    @JsonProperty("comments")
    public Comment[] getComments() { return comments; }
    @JsonProperty("comments")
    public void setComments(Comment[] value) { this.comments = value; }
}
