package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * A geographical coordinate
 */
public class Figma {
    private Double latitude;
    private Double longitude;

    @JsonProperty("latitude")
    public Double getLatitude() { return latitude; }
    @JsonProperty("latitude")
    public void setLatitude(Double value) { this.latitude = value; }

    @JsonProperty("longitude")
    public Double getLongitude() { return longitude; }
    @JsonProperty("longitude")
    public void setLongitude(Double value) { this.longitude = value; }
}
