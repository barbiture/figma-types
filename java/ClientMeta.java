package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A 2d vector
 *
 * 2d vector offset within the frame.
 *
 * This field contains three vectors, each of which are a position in
 * normalized object space (normalized object space is if the top left
 * corner of the bounding box of the object is (0, 0) and the bottom
 * right is (1,1)). The first position corresponds to the start of the
 * gradient (value 0 for the purposes of calculating gradient stops),
 * the second position is the end of the gradient (value 1), and the
 * third handle position determines the width of the gradient (only
 * relevant for non-linear gradients).
 *
 * A relative offset within a frame
 */
public class ClientMeta {
    private Double x;
    private Double y;
    private String[] nodeID;
    private Offset nodeOffset;

    /**
     * X coordinate of the vector
     */
    @JsonProperty("x")
    public Double getX() { return x; }
    @JsonProperty("x")
    public void setX(Double value) { this.x = value; }

    /**
     * Y coordinate of the vector
     */
    @JsonProperty("y")
    public Double getY() { return y; }
    @JsonProperty("y")
    public void setY(Double value) { this.y = value; }

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
