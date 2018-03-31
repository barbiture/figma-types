package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * GET /v1/teams/:team_id/projects
 *
 * > Description
 * Lists the projects for a specified team. Note that this will only return projects visible
 * to the authenticated user or owner of the developer token.
 *
 * > Path parameters
 * team_id String
 * Id of the team to list projects from
 */
public class ProjectsResponse {
    private Project[] projects;

    @JsonProperty("projects")
    public Project[] getProjects() { return projects; }
    @JsonProperty("projects")
    public void setProjects(Project[] value) { this.projects = value; }
}
