package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class ProjectFilesResponse {
    private File[] files;

    @JsonProperty("files")
    public File[] getFiles() { return files; }
    @JsonProperty("files")
    public void setFiles(File[] value) { this.files = value; }
}
