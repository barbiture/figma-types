package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

/**
 * Returns the document refered to by :key as a JSON object. The file key can be parsed from
 * any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
 * contains a Node of type DOCUMENT.
 */
public class FileResponse {
    private FileResponseNode document;

    /**
     * A string uniquely identifying this node within the document
     */
    @JsonProperty("document")
    public FileResponseNode getDocument() { return document; }
    @JsonProperty("document")
    public void setDocument(FileResponseNode value) { this.document = value; }
}
