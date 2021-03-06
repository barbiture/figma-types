// To use this code, add the following Maven dependency to your project:
//
//     com.fasterxml.jackson.core : jackson-databind : 2.9.0
//
// Import this package:
//
//     import io.quicktype.Converter;
//
// Then you can deserialize a JSON string with
//
//     FileResponse data = Converter.FileResponseFromJsonString(jsonString);
//     CommentsResponse data = Converter.CommentsResponseFromJsonString(jsonString);
//     CommentRequest data = Converter.CommentRequestFromJsonString(jsonString);
//     ProjectsResponse data = Converter.ProjectsResponseFromJsonString(jsonString);
//     ProjectFilesResponse data = Converter.ProjectFilesResponseFromJsonString(jsonString);

package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.core.JsonProcessingException;

public class Converter {
    // Serialize/deserialize helpers

    public static FileResponse FileResponseFromJsonString(String json) throws IOException {
        return getFileResponseObjectReader().readValue(json);
    }

    public static String FileResponseToJsonString(FileResponse obj) throws JsonProcessingException {
        return getFileResponseObjectWriter().writeValueAsString(obj);
    }

    public static CommentsResponse CommentsResponseFromJsonString(String json) throws IOException {
        return getCommentsResponseObjectReader().readValue(json);
    }

    public static String CommentsResponseToJsonString(CommentsResponse obj) throws JsonProcessingException {
        return getCommentsResponseObjectWriter().writeValueAsString(obj);
    }

    public static CommentRequest CommentRequestFromJsonString(String json) throws IOException {
        return getCommentRequestObjectReader().readValue(json);
    }

    public static String CommentRequestToJsonString(CommentRequest obj) throws JsonProcessingException {
        return getCommentRequestObjectWriter().writeValueAsString(obj);
    }

    public static ProjectsResponse ProjectsResponseFromJsonString(String json) throws IOException {
        return getProjectsResponseObjectReader().readValue(json);
    }

    public static String ProjectsResponseToJsonString(ProjectsResponse obj) throws JsonProcessingException {
        return getProjectsResponseObjectWriter().writeValueAsString(obj);
    }

    public static ProjectFilesResponse ProjectFilesResponseFromJsonString(String json) throws IOException {
        return getProjectFilesResponseObjectReader().readValue(json);
    }

    public static String ProjectFilesResponseToJsonString(ProjectFilesResponse obj) throws JsonProcessingException {
        return getProjectFilesResponseObjectWriter().writeValueAsString(obj);
    }

    private static ObjectReader FileResponseReader;
    private static ObjectWriter FileResponseWriter;

    private static void instantiateFileResponseMapper() {
        ObjectMapper mapper = new ObjectMapper();
        FileResponseReader = mapper.reader(FileResponse.class);
        FileResponseWriter = mapper.writerFor(FileResponse.class);
    }

    private static ObjectReader getFileResponseObjectReader() {
        if (FileResponseReader == null) instantiateFileResponseMapper();
        return FileResponseReader;
    }

    private static ObjectWriter getFileResponseObjectWriter() {
        if (FileResponseWriter == null) instantiateFileResponseMapper();
        return FileResponseWriter;
    }

    private static ObjectReader CommentsResponseReader;
    private static ObjectWriter CommentsResponseWriter;

    private static void instantiateCommentsResponseMapper() {
        ObjectMapper mapper = new ObjectMapper();
        CommentsResponseReader = mapper.reader(CommentsResponse.class);
        CommentsResponseWriter = mapper.writerFor(CommentsResponse.class);
    }

    private static ObjectReader getCommentsResponseObjectReader() {
        if (CommentsResponseReader == null) instantiateCommentsResponseMapper();
        return CommentsResponseReader;
    }

    private static ObjectWriter getCommentsResponseObjectWriter() {
        if (CommentsResponseWriter == null) instantiateCommentsResponseMapper();
        return CommentsResponseWriter;
    }

    private static ObjectReader CommentRequestReader;
    private static ObjectWriter CommentRequestWriter;

    private static void instantiateCommentRequestMapper() {
        ObjectMapper mapper = new ObjectMapper();
        CommentRequestReader = mapper.reader(CommentRequest.class);
        CommentRequestWriter = mapper.writerFor(CommentRequest.class);
    }

    private static ObjectReader getCommentRequestObjectReader() {
        if (CommentRequestReader == null) instantiateCommentRequestMapper();
        return CommentRequestReader;
    }

    private static ObjectWriter getCommentRequestObjectWriter() {
        if (CommentRequestWriter == null) instantiateCommentRequestMapper();
        return CommentRequestWriter;
    }

    private static ObjectReader ProjectsResponseReader;
    private static ObjectWriter ProjectsResponseWriter;

    private static void instantiateProjectsResponseMapper() {
        ObjectMapper mapper = new ObjectMapper();
        ProjectsResponseReader = mapper.reader(ProjectsResponse.class);
        ProjectsResponseWriter = mapper.writerFor(ProjectsResponse.class);
    }

    private static ObjectReader getProjectsResponseObjectReader() {
        if (ProjectsResponseReader == null) instantiateProjectsResponseMapper();
        return ProjectsResponseReader;
    }

    private static ObjectWriter getProjectsResponseObjectWriter() {
        if (ProjectsResponseWriter == null) instantiateProjectsResponseMapper();
        return ProjectsResponseWriter;
    }

    private static ObjectReader ProjectFilesResponseReader;
    private static ObjectWriter ProjectFilesResponseWriter;

    private static void instantiateProjectFilesResponseMapper() {
        ObjectMapper mapper = new ObjectMapper();
        ProjectFilesResponseReader = mapper.reader(ProjectFilesResponse.class);
        ProjectFilesResponseWriter = mapper.writerFor(ProjectFilesResponse.class);
    }

    private static ObjectReader getProjectFilesResponseObjectReader() {
        if (ProjectFilesResponseReader == null) instantiateProjectFilesResponseMapper();
        return ProjectFilesResponseReader;
    }

    private static ObjectWriter getProjectFilesResponseObjectWriter() {
        if (ProjectFilesResponseWriter == null) instantiateProjectFilesResponseMapper();
        return ProjectFilesResponseWriter;
    }
}
