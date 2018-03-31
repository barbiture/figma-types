package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * GET /v1/projects/:project_id/files
 *
 * > Description
 * List the files in a given project.
 *
 * > Path parameters
 * project_id String
 * Id of the project to list files from
 */
public class ProjectFilesResponse {
    private File[] files;

    @JsonProperty("files")
    public File[] getFiles() { return files; }
    @JsonProperty("files")
    public void setFiles(File[] value) { this.files = value; }
}
