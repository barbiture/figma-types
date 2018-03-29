package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * GET /v1/images/:key
 *
 * > Description
 * If no error occurs, "images" will be populated with a map from node IDs to URLs of the
 * rendered images, and "status" will be omitted.
 *
 * Important: the image map may contain values that are null. This indicates that rendering
 * of that specific node has failed. This may be due to the node id not existing, or other
 * reasons such has the node having no renderable components. It is guaranteed that any node
 * that was requested for rendering will be represented in this map whether or not the
 * render succeeded.
 *
 * > Path parameters
 * key String
 * File to export images from
 *
 * > Query parameters
 *
 * ids String
 * A comma separated list of node IDs to render
 *
 * scale Number
 * A number between 0.01 and 4, the image scaling factor
 *
 * format String
 * A string enum for the image output format, can be "jpg", "png", or "svg"
 */
public class ImageResponse {
    private Map<String, String> images;
    private double status;
    private String err;

    @JsonProperty("images")
    public Map<String, String> getImages() { return images; }
    @JsonProperty("images")
    public void setImages(Map<String, String> value) { this.images = value; }

    @JsonProperty("status")
    public double getStatus() { return status; }
    @JsonProperty("status")
    public void setStatus(double value) { this.status = value; }

    @JsonProperty("err")
    public String getErr() { return err; }
    @JsonProperty("err")
    public void setErr(String value) { this.err = value; }
}
