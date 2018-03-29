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
//     Node data = Converter.NodeFromJsonString(jsonString);
//     Color data = Converter.ColorFromJsonString(jsonString);
//     Global data = Converter.GlobalFromJsonString(jsonString);
//     User data = Converter.UserFromJsonString(jsonString);
//     BlendMode data = Converter.BlendModeFromJsonString(jsonString);
//     Canvas data = Converter.CanvasFromJsonString(jsonString);
//     Document data = Converter.DocumentFromJsonString(jsonString);
//     Constraint data = Converter.ConstraintFromJsonString(jsonString);
//     Comment data = Converter.CommentFromJsonString(jsonString);

package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.core.JsonProcessingException;

public class Converter {
    // Serialize/deserialize helpers

    public static Node NodeFromJsonString(String json) throws IOException {
        return getNodeObjectReader().readValue(json);
    }

    public static String NodeToJsonString(Node obj) throws JsonProcessingException {
        return getNodeObjectWriter().writeValueAsString(obj);
    }

    public static Color ColorFromJsonString(String json) throws IOException {
        return getColorObjectReader().readValue(json);
    }

    public static String ColorToJsonString(Color obj) throws JsonProcessingException {
        return getColorObjectWriter().writeValueAsString(obj);
    }

    public static Global GlobalFromJsonString(String json) throws IOException {
        return getGlobalObjectReader().readValue(json);
    }

    public static String GlobalToJsonString(Global obj) throws JsonProcessingException {
        return getGlobalObjectWriter().writeValueAsString(obj);
    }

    public static User UserFromJsonString(String json) throws IOException {
        return getUserObjectReader().readValue(json);
    }

    public static String UserToJsonString(User obj) throws JsonProcessingException {
        return getUserObjectWriter().writeValueAsString(obj);
    }

    public static BlendMode BlendModeFromJsonString(String json) throws IOException {
        return getBlendModeObjectReader().readValue(json);
    }

    public static String BlendModeToJsonString(BlendMode obj) throws JsonProcessingException {
        return getBlendModeObjectWriter().writeValueAsString(obj);
    }

    public static Canvas CanvasFromJsonString(String json) throws IOException {
        return getCanvasObjectReader().readValue(json);
    }

    public static String CanvasToJsonString(Canvas obj) throws JsonProcessingException {
        return getCanvasObjectWriter().writeValueAsString(obj);
    }

    public static Document DocumentFromJsonString(String json) throws IOException {
        return getDocumentObjectReader().readValue(json);
    }

    public static String DocumentToJsonString(Document obj) throws JsonProcessingException {
        return getDocumentObjectWriter().writeValueAsString(obj);
    }

    public static Constraint ConstraintFromJsonString(String json) throws IOException {
        return getConstraintObjectReader().readValue(json);
    }

    public static String ConstraintToJsonString(Constraint obj) throws JsonProcessingException {
        return getConstraintObjectWriter().writeValueAsString(obj);
    }

    public static Comment CommentFromJsonString(String json) throws IOException {
        return getCommentObjectReader().readValue(json);
    }

    public static String CommentToJsonString(Comment obj) throws JsonProcessingException {
        return getCommentObjectWriter().writeValueAsString(obj);
    }

    private static ObjectReader NodeReader;
    private static ObjectWriter NodeWriter;

    private static void instantiateNodeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        NodeReader = mapper.reader(Node.class);
        NodeWriter = mapper.writerFor(Node.class);
    }

    private static ObjectReader getNodeObjectReader() {
        if (NodeReader == null) instantiateMapper();
        return NodeReader;
    }

    private static ObjectWriter getNodeObjectWriter() {
        if (NodeWriter == null) instantiateMapper();
        return NodeWriter;
    }

    private static ObjectReader ColorReader;
    private static ObjectWriter ColorWriter;

    private static void instantiateColorMapper() {
        ObjectMapper mapper = new ObjectMapper();
        ColorReader = mapper.reader(Color.class);
        ColorWriter = mapper.writerFor(Color.class);
    }

    private static ObjectReader getColorObjectReader() {
        if (ColorReader == null) instantiateMapper();
        return ColorReader;
    }

    private static ObjectWriter getColorObjectWriter() {
        if (ColorWriter == null) instantiateMapper();
        return ColorWriter;
    }

    private static ObjectReader GlobalReader;
    private static ObjectWriter GlobalWriter;

    private static void instantiateGlobalMapper() {
        ObjectMapper mapper = new ObjectMapper();
        GlobalReader = mapper.reader(Global.class);
        GlobalWriter = mapper.writerFor(Global.class);
    }

    private static ObjectReader getGlobalObjectReader() {
        if (GlobalReader == null) instantiateMapper();
        return GlobalReader;
    }

    private static ObjectWriter getGlobalObjectWriter() {
        if (GlobalWriter == null) instantiateMapper();
        return GlobalWriter;
    }

    private static ObjectReader UserReader;
    private static ObjectWriter UserWriter;

    private static void instantiateUserMapper() {
        ObjectMapper mapper = new ObjectMapper();
        UserReader = mapper.reader(User.class);
        UserWriter = mapper.writerFor(User.class);
    }

    private static ObjectReader getUserObjectReader() {
        if (UserReader == null) instantiateMapper();
        return UserReader;
    }

    private static ObjectWriter getUserObjectWriter() {
        if (UserWriter == null) instantiateMapper();
        return UserWriter;
    }

    private static ObjectReader BlendModeReader;
    private static ObjectWriter BlendModeWriter;

    private static void instantiateBlendModeMapper() {
        ObjectMapper mapper = new ObjectMapper();
        BlendModeReader = mapper.reader(BlendMode.class);
        BlendModeWriter = mapper.writerFor(BlendMode.class);
    }

    private static ObjectReader getBlendModeObjectReader() {
        if (BlendModeReader == null) instantiateMapper();
        return BlendModeReader;
    }

    private static ObjectWriter getBlendModeObjectWriter() {
        if (BlendModeWriter == null) instantiateMapper();
        return BlendModeWriter;
    }

    private static ObjectReader CanvasReader;
    private static ObjectWriter CanvasWriter;

    private static void instantiateCanvasMapper() {
        ObjectMapper mapper = new ObjectMapper();
        CanvasReader = mapper.reader(Canvas.class);
        CanvasWriter = mapper.writerFor(Canvas.class);
    }

    private static ObjectReader getCanvasObjectReader() {
        if (CanvasReader == null) instantiateMapper();
        return CanvasReader;
    }

    private static ObjectWriter getCanvasObjectWriter() {
        if (CanvasWriter == null) instantiateMapper();
        return CanvasWriter;
    }

    private static ObjectReader DocumentReader;
    private static ObjectWriter DocumentWriter;

    private static void instantiateDocumentMapper() {
        ObjectMapper mapper = new ObjectMapper();
        DocumentReader = mapper.reader(Document.class);
        DocumentWriter = mapper.writerFor(Document.class);
    }

    private static ObjectReader getDocumentObjectReader() {
        if (DocumentReader == null) instantiateMapper();
        return DocumentReader;
    }

    private static ObjectWriter getDocumentObjectWriter() {
        if (DocumentWriter == null) instantiateMapper();
        return DocumentWriter;
    }

    private static ObjectReader ConstraintReader;
    private static ObjectWriter ConstraintWriter;

    private static void instantiateConstraintMapper() {
        ObjectMapper mapper = new ObjectMapper();
        ConstraintReader = mapper.reader(Constraint.class);
        ConstraintWriter = mapper.writerFor(Constraint.class);
    }

    private static ObjectReader getConstraintObjectReader() {
        if (ConstraintReader == null) instantiateMapper();
        return ConstraintReader;
    }

    private static ObjectWriter getConstraintObjectWriter() {
        if (ConstraintWriter == null) instantiateMapper();
        return ConstraintWriter;
    }

    private static ObjectReader CommentReader;
    private static ObjectWriter CommentWriter;

    private static void instantiateCommentMapper() {
        ObjectMapper mapper = new ObjectMapper();
        CommentReader = mapper.reader(Comment.class);
        CommentWriter = mapper.writerFor(Comment.class);
    }

    private static ObjectReader getCommentObjectReader() {
        if (CommentReader == null) instantiateMapper();
        return CommentReader;
    }

    private static ObjectWriter getCommentObjectWriter() {
        if (CommentWriter == null) instantiateMapper();
        return CommentWriter;
    }
}
