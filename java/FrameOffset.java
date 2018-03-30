package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A relative offset within a frame
 */
public class FrameOffset {
    private String[] nodeID;
    private Offset nodeOffset;

    /**
     * Unique id specifying the frame.
     */
    @JsonProperty("node_id")
    public String[] getNodeID() { return nodeID; }
    @JsonProperty("node_id")
    public void setNodeID(String[] value) { this.nodeID = value; }

    /**
     * 2d vector offset within the frame.
     */
    @JsonProperty("node_offset")
    public Offset getNodeOffset() { return nodeOffset; }
    @JsonProperty("node_offset")
    public void setNodeOffset(Offset value) { this.nodeOffset = value; }
}
