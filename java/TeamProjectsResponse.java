package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class TeamProjectsResponse {
    private ProjectSummary[] projects;

    @JsonProperty("projects")
    public ProjectSummary[] getProjects() { return projects; }
    @JsonProperty("projects")
    public void setProjects(ProjectSummary[] value) { this.projects = value; }
}
