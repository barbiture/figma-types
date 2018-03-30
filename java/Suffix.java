package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * File suffix to append to all filenames
 */
public enum Suffix {
    STRING;

    @JsonValue
    public String toValue() {
        switch (this) {
        case STRING: return "string";
        }
        return null;
    }

    @JsonCreator
    public static Suffix forValue(String value) throws IOException {
        if (value.equals("string")) return STRING;
        throw new IOException("Cannot deserialize Suffix");
    }
}
