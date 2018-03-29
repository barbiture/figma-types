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
//     Comment data = Converter.CommentFromJsonString(jsonString);
//     User data = Converter.UserFromJsonString(jsonString);
//     Color data = Converter.ColorFromJsonString(jsonString);
//     Constraint data = Converter.ConstraintFromJsonString(jsonString);

package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.core.JsonProcessingException;

public class Converter {
    // Serialize/deserialize helpers

    public static Comment CommentFromJsonString(String json) throws IOException {
        return getCommentObjectReader().readValue(json);
    }

    public static String CommentToJsonString(Comment obj) throws JsonProcessingException {
        return getCommentObjectWriter().writeValueAsString(obj);
    }

    public static User UserFromJsonString(String json) throws IOException {
        return getUserObjectReader().readValue(json);
    }

    public static String UserToJsonString(User obj) throws JsonProcessingException {
        return getUserObjectWriter().writeValueAsString(obj);
    }

    public static Color ColorFromJsonString(String json) throws IOException {
        return getColorObjectReader().readValue(json);
    }

    public static String ColorToJsonString(Color obj) throws JsonProcessingException {
        return getColorObjectWriter().writeValueAsString(obj);
    }

    public static Constraint ConstraintFromJsonString(String json) throws IOException {
        return getConstraintObjectReader().readValue(json);
    }

    public static String ConstraintToJsonString(Constraint obj) throws JsonProcessingException {
        return getConstraintObjectWriter().writeValueAsString(obj);
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
}
