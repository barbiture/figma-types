package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class FileImageResponse {
    private String err;
    private Map<String, String> images;

    @JsonProperty("err")
    public String getErr() { return err; }
    @JsonProperty("err")
    public void setErr(String value) { this.err = value; }

    @JsonProperty("images")
    public Map<String, String> getImages() { return images; }
    @JsonProperty("images")
    public void setImages(Map<String, String> value) { this.images = value; }
}
