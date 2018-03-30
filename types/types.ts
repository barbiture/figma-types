/** An RGBA color */
export interface Color {
  /** Red channel value, between 0 and 1 */
  r: number;
  /** Green channel value, between 0 and 1 */
  g: number;
  /** Blue channel value, between 0 and 1 */
  b: number;
  /** Alpha channel value, between 0 and 1 */
  a: number;
}

/** Format and size to export an asset at */
export interface ExportSetting {
  /** File suffix to append to all filenames */
  suffix: "string";
  /** Image type, string enum */
  format: "JPG" | "PNG" | "SVG";
  /** Constraint that determines sizing of exported asset */
  constraint: Constraint;
}

/** Sizing constraint for exports */
export interface Constraint {
  /**
   * Type of constraint to apply; string enum with potential values below
   * "SCALE": Scale by value
   * "WIDTH": Scale proportionally and set width to value
   * "HEIGHT": Scale proportionally and set height to value
   */
  type: "SCALE" | "WIDTH" | "HEIGHT";
  /** See type property for effect of this field */
  value: number;
}

/** A rectangle that expresses a bounding box in absolute coordinates */
export interface Rectangle {
  /** X coordinate of top left corner of the rectangle */
  x: number;
  /** Y coordinate of top left corner of the rectangle */
  y: number;
  /** Width of the rectangle */
  width: number;
  /** Height of the rectangle */
  height: number;
}

/**
 * Enum describing how layer blends with layers below
 * This type is a string enum with the following possible values
 */
export type BlendMode =
  /** (Only applicable to objects with children) */
  | "PASS_THROUGH"
  | "NORMAL"

  /** Darken: */
  | "DARKEN"
  | "MULTIPLY"
  | "LINEAR_BURN"
  | "COLOR_BURN"

  /** Lighten: */
  | "LIGHTEN"
  | "SCREEN"
  | "LINEAR_DODGE"
  | "COLOR_DODGE"

  /** Contrast: */
  | "OVERLAY"
  | "SOFT_LIGHT"
  | "HARD_LIGHT"

  /** Inversion: */
  | "DIFFERENCE"
  | "EXCLUSION"

  /** Component: */
  | "HUE"
  | "SATURATION"
  | "COLOR"
  | "LUMINOSITY";

/** Layout constraint relative to containing Frame */
export interface LayoutConstraint {
  /**
   * Vertical constraint as an enum
   * "TOP": Node is laid out relative to top of the containing frame
   * "BOTTOM": Node is laid out relative to bottom of the containing frame
   * "CENTER": Node is vertically centered relative to containing frame
   * "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame (node stretches with frame)
   * "SCALE": Node scales vertically with containing frame
   */
  vertical: "TOP" | "BOTTOM" | "CENTER" | "TOP_BOTTOM" | "SCALE";
  /**
   * Horizontal constraint as an enum
   * "LEFT": Node is laid out relative to left of the containing frame
   * "RIGHT": Node is laid out relative to right of the containing frame
   * "CENTER": Node is horizontally centered relative to containing frame
   * "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame (node stretches with frame)
   * "SCALE": Node scales horizontally with containing frame
   */
  horizontal: "LEFT" | "RIGHT" | "CENTER" | "LEFT_RIGHT" | "SCALE";
}

/** Guides to align and place objects within a frame */
export interface LayoutGrid {
  /**
   * Orientation of the grid as a string enum
   * "COLUMNS": Vertical grid
   * "ROWS": Horizontal grid
   * "GRID": Square grid
   */
  pattern: "COLUMNS" | "ROWS" | "GRID";
  /** Width of column grid or height of row grid or square grid spacing */
  sectionSize: number;
  /** Is the grid currently visible? */
  visible: boolean;
  /** Color of the grid */
  color: Color;
  /**
   * Positioning of grid as a string enum
   * "MIN": Grid starts at the left or top of the frame
   * "MAX": Grid starts at the right or bottom of the frame
   * "CENTER": Grid is center aligned
   */
  alignment: "MIN" | "MAX" | "CENTER";
  /** Spacing in between columns and rows */
  gutterSize: number;
  /** Spacing before the first column or row */
  offset: number;
  /** Number of columns or rows */
  count: number;
}

/** A visual effect such as a shadow or blur */
export interface Effect {
  /** Type of effect as a string enum */
  type: "INNER_SHADOW" | "DROP_SHADOW" | "LAYER_BLUR" | "BACKGROUND_BLUR";
  /** Is the effect active? */
  visible: boolean;
  /** Radius of the blur effect (applies to shadows as well) */
  radius: number;

  // The following properties are for shadows only:
  color?: Color;
  blendMode?: BlendMode;
  offset?: Vector2D;
}

/** A solid color, gradient, or image texture that can be applied as fills or strokes */
export interface Paint {
  /** Type of paint as a string enum */
  type:
    | "SOLID"
    | "GRADIENT_LINEAR"
    | "GRADIENT_RADIAL"
    | "GRADIENT_ANGULAR"
    | "GRADIENT_DIAMOND"
    | "IMAGE"
    | "EMOJI";
  /**
   * Is the paint enabled?
   * @default true
   */
  visible: boolean;
  /**
   * Overall opacity of paint (colors within the paint can also have opacity
   * values which would blend with this)
   * @default 1
   */
  opacity: number;
  // for solid paints
  /** Solid color of the paint */
  color?: Color;
  // for gradient paints
  /**
   * This field contains three vectors, each of which are a position in
   * normalized object space (normalized object space is if the top left
   * corner of the bounding box of the object is (0, 0) and the bottom
   * right is (1,1)). The first position corresponds to the start of the
   * gradient (value 0 for the purposes of calculating gradient stops),
   * the second position is the end of the gradient (value 1), and the
   * third handle position determines the width of the gradient (only
   * relevant for non-linear gradients).
   *
   */
  gradientHandlePositions?: Vector2D[];
  /**
   * Positions of key points along the gradient axis with the colors
   * anchored there. Colors along the gradient are interpolated smoothly
   * between neighboring gradient stops.
   */
  gradientStops?: ColorStop[];
  // for image paints
  /** Image scaling mode */
  scaleMode?: string;
}

/** A 2d vector */
export interface Vector2D {
  /** X coordinate of the vector */
  x: number;
  /** Y coordinate of the vector */
  y: number;
}

/** A position color pair representing a gradient stop */
export interface ColorStop {
  /** Value between 0 and 1 representing position along gradient axis */
  position: number;
  /** Color attached to corresponding position */
  color: Color;
}

/** Metadata for character formatting */
export interface TypeStyle {
  /** Font family of text (standard name) */
  fontFamily: string;
  /** PostScript font name */
  fontPostScriptName: string;
  /** Is text italicized? */
  italic: boolean;
  /** Numeric font weight */
  fontWeight: number;
  /** Font size in px */
  fontSize: number;
  /** Horizontal text alignment as string enum */
  textAlignHorizontal: "LEFT" | "RIGHT" | "CENTER" | "JUSTIFIED";
  /** Vertical text alignment as string enum */
  textAlignVertical: "TOP" | "CENTER" | "BOTTOM";
  /** Space between characters in px */
  letterSpacing: number;
  /** Paints applied to characters */
  fills: Paint[];
  /** Line height in px */
  lineHeightPx: number;
  /** Line height as a percentage of normal line height */
  lineHeightPercent: number;
}

/**
 * A description of a master component. Helps you identify which component
 * instances are attached to
 */
export interface Component {
  /** The name of the component */
  name: string;
  /** The description of the component as entered in the editor */
  description: string;
}

// General API Types

/** A comment or reply left by a user */
export interface Comment {
  /** Unique identifier for comment */
  id: string;
  /** The file in which the comment lives */
  file_key: string;
  /** If present, the id of the comment to which this is the reply */
  parent_id: string;
  /** The user who left the comment */
  user: User;
  /** The time at which the comment was left */
  created_at: Date;
  /** If set, when the comment was resolved */
  resolved_at: Date | null;
  /**
   * (MISSING IN DOCS)
   * The content of the comment
   */
  message: string;

  client_meta: Vector2D | FrameOffset;

  /**
   * Only set for top level comments. The number displayed with the
   * comment in the UI
   */
  order_id: number;
}

/** A relative offset within a frame */
export interface FrameOffset {
  /** Unique id specifying the frame.*/
  node_id: String;

  /** 2d vector offset within the frame.*/
  node_offset: Vector2D;
}

/** A description of a user */
export interface User {
  handle: string;
  img_url: string;
}

export interface ProjectSummary {
  id: string;
  name: string;
}

export interface FileResponse {
  components: {
    [key: string]: Component;
  };
  document: Document;
  lastModified: string;
  name: string;
  schemaVersion: number;
  thumbnailUrl: string;
}

export interface FileImageResponse {
  err: string | null;
  images: {
    [key: string]: string;
  };
}

export interface CommentsResponse {
  comments: Comment[];
}

export interface FileSummary {
  key: string;
  name: string;
  thumbnail_url: string;
  last_modified: string;
}

export interface TeamProjectsResponse {
  projects: ProjectSummary[];
}

export interface ProjectFilesResponse {
  files: FileSummary[];
}
