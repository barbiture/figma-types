package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class ProjectsResponse {
    private Project[] projects;

    @JsonProperty("projects")
    public Project[] getProjects() { return projects; }
    @JsonProperty("projects")
    public void setProjects(Project[] value) { this.projects = value; }
}
