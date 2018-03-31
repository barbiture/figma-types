package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Project {
    private double id;
    private String name;

    @JsonProperty("id")
    public double getID() { return id; }
    @JsonProperty("id")
    public void setID(double value) { this.id = value; }

    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }
}
