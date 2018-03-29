package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

/**
 * * COLUMNS: Vertical grid
 * * ROWS: Horizontal grid
 * * GRID: Square grid
 */
public enum Pattern {
    COLUMNS, GRID, ROWS;

    @JsonValue
    public String toValue() {
        switch (this) {
        case COLUMNS: return "COLUMNS";
        case GRID: return "GRID";
        case ROWS: return "ROWS";
        }
        return null;
    }

    @JsonCreator
    public static Pattern forValue(String value) throws IOException {
        if (value.equals("COLUMNS")) return COLUMNS;
        if (value.equals("GRID")) return GRID;
        if (value.equals("ROWS")) return ROWS;
        throw new IOException("Cannot deserialize Pattern");
    }
}
