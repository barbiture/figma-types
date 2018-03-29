package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * The type of the node
 */
public enum NodeType {
    BOOLEAN, CANVAS, COMPONENT, DOCUMENT, ELLIPSE, FRAME, GROUP, INSTANCE, LINE, RECTANGLE, REGULAR_POLYGON, SLICE, STAR, TEXT, VECTOR;

    @JsonValue
    public String toValue() {
        switch (this) {
        case BOOLEAN: return "BOOLEAN";
        case CANVAS: return "CANVAS";
        case COMPONENT: return "COMPONENT";
        case DOCUMENT: return "DOCUMENT";
        case ELLIPSE: return "ELLIPSE";
        case FRAME: return "FRAME";
        case GROUP: return "GROUP";
        case INSTANCE: return "INSTANCE";
        case LINE: return "LINE";
        case RECTANGLE: return "RECTANGLE";
        case REGULAR_POLYGON: return "REGULAR_POLYGON";
        case SLICE: return "SLICE";
        case STAR: return "STAR";
        case TEXT: return "TEXT";
        case VECTOR: return "VECTOR";
        }
        return null;
    }

    @JsonCreator
    public static NodeType forValue(String value) throws IOException {
        if (value.equals("BOOLEAN")) return BOOLEAN;
        if (value.equals("CANVAS")) return CANVAS;
        if (value.equals("COMPONENT")) return COMPONENT;
        if (value.equals("DOCUMENT")) return DOCUMENT;
        if (value.equals("ELLIPSE")) return ELLIPSE;
        if (value.equals("FRAME")) return FRAME;
        if (value.equals("GROUP")) return GROUP;
        if (value.equals("INSTANCE")) return INSTANCE;
        if (value.equals("LINE")) return LINE;
        if (value.equals("RECTANGLE")) return RECTANGLE;
        if (value.equals("REGULAR_POLYGON")) return REGULAR_POLYGON;
        if (value.equals("SLICE")) return SLICE;
        if (value.equals("STAR")) return STAR;
        if (value.equals("TEXT")) return TEXT;
        if (value.equals("VECTOR")) return VECTOR;
        throw new IOException("Cannot deserialize NodeType");
    }
}
