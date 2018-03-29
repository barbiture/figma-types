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
}
