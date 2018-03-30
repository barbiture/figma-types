import {
  BlendMode,
  ExportSetting,
  Paint,
  Effect,
  TypeStyle,
  LayoutConstraint,
  Color,
  LayoutGrid
} from "./types";

export interface Global {
  /** a string uniquely identifying this node within the document */
  id: string;
  /** the name given to the node by the user in the tool. */
  name: string;
  /** whether or not the node is visible on the canvas */
  visible: boolean;
  /** the type of the node, refer to table below for details */
  type: NodeType;
}

export type NodeType =
  | "DOCUMENT"
  | "CANVAS"
  | "FRAME"
  | "GROUP"
  | "VECTOR"
  | "BOOLEAN"
  | "STAR"
  | "LINE"
  | "ELLIPSE"
  | "REGULAR_POLYGON"
  | "RECTANGLE"
  | "TEXT"
  | "SLICE"
  | "COMPONENT"
  | "INSTANCE";

export type Node =
  | Document
  | Canvas
  | Frame
  | Group
  | Vector
  | BooleanGroup
  | Star
  | Line
  | Ellipse
  | RegularPolygon
  | Rectangle
  | Text
  | Slice
  | Component
  | Instance;

/** Node Properties */

/** The root node */
export interface Document extends Global {
  /** An array of canvases attached to the document */
  children: Node[];
}

/** Represents a single page */
export interface Canvas extends Global {
  /** An array of top level layers on the canvas */
  children: Node[];
  /** Background color of the canvas */
  backgroundColor: Color;
  /** An array of export settings representing images to export from the canvas */
  exportSettings: ExportSetting[];
}

export interface FrameBase extends Global {
  /** An array of nodes that are direct children of this node */
  children: Node[];
  /** Background color of the node */
  backgroundColor: Color;
  /**
   * An array of export settings representing images to export from node
   * @default []
   */
  exportSettings: ExportSetting[];
  /**
   * How this node blends with nodes behind it in the scene
   * (see blend mode section for more details)
   */
  blendMode: BlendMode;
  /**
   * Keep height and width constrained to same ratio
   * @default false
   */
  preserveRatio: boolean;
  /** Horizontal and vertical layout constraints for node */
  constraints: LayoutConstraint;
  /**
   * Node ID of node to transition to in prototyping
   * @default null
   */
  transitionNodeID: string | null;
  /**
   * Opacity of the node
   * @default 1
   */
  opacity: number;
  /** Bounding box of the node in absolute space coordinates */
  absoluteBoundingBox: Rectangle;
  /** Does this node clip content outside of its bounds? */
  clipsContent: boolean;
  /**
   * An array of layout grids attached to this node (see layout grids section
   * for more details). GROUP nodes do not have this attribute
   * @default []
   */
  layoutGrids: LayoutGrid[];
  /**
   * An array of effects attached to this node
   * (see effects sectionfor more details)
   * @default []
   */
  effects: Effect[];
  /**
   * Does this node mask sibling nodes in front of it?
   * @default false
   */
  isMask: boolean;
}

/** A node of fixed size containing other nodes */
export interface Frame extends FrameBase {}

/** A logical grouping of nodes */
export interface Group extends FrameBase {}

export interface VectorBase extends Global {
  /**
   * An array of export settings representing images to export from node
   * @default []
   */
  exportSettings: ExportSetting[];
  /**
   * How this node blends with nodes behind it in the scene
   * (see blend mode section for more details)
   */
  blendMode: BlendMode;
  /**
   * Keep height and width constrained to same ratio
   * @default false
   */
  preserveRatio: boolean;
  /**
   * Horizontal and vertical layout constraints for node
   */
  constraints: LayoutConstraint;
  /**
   * Node ID of node to transition to in prototyping
   * @default null
   */
  transitionNodeID: string | null;
  /**
   * Opacity of the node
   * @default 1
   */
  opacity: number;
  /** Bounding box of the node in absolute space coordinates */
  absoluteBoundingBox: Rectangle;
  /**
   * An array of effects attached to this node
   * (see effects sectionfor more details)
   * @default []
   */
  effects: Effect[];
  /**
   * Does this node mask sibling nodes in front of it?
   * @default false
   */
  isMask: boolean;
  /**
   * An array of fill paints applied to the node
   * @default []
   */
  fills: Paint[];
  /**
   * An array of stroke paints applied to the node
   * @default []
   */
  strokes: Paint[];
  /** The weight of strokes on the node */
  strokeWeight: number;
  /**
   * Where stroke is drawn relative to the vector outline as a string enum
   * "INSIDE": draw stroke inside the shape boundary
   * "OUTSIDE": draw stroke outside the shape boundary
   * "CENTER": draw stroke centered along the shape boundary
   */
  strokeAlign: "INSIDE" | "OUTSIDE" | "CENTER";
}

/** A vector network, consisting of vertices and edges */
export interface Vector extends VectorBase {}

/** A group that has a boolean operation applied to it */
export interface BooleanGroup extends VectorBase {
  /** An array of nodes that are being boolean operated on */
  children: Node[];
}

/** A regular star shape */
export interface Star extends VectorBase {}

/** A straight line */
export interface Line extends VectorBase {}

/** An ellipse */
export interface Ellipse extends VectorBase {}

/** A regular n-sided polygon */
export interface RegularPolygon extends VectorBase {}

/** A rectangle */
export interface Rectangle extends VectorBase {
  /** Radius of each corner of the rectangle */
  cornerRadius: number;
}

/** A text box */
export interface Text extends VectorBase {
  /** Text contained within text box */
  characters: string;
  /**
   * Style of text including font family and weight (see type style
   * section for more information)
   */
  style: TypeStyle;
  /**
   * Array with same number of elements as characeters in text box,
   * each element is a reference to the styleOverrideTable defined
   * below and maps to the corresponding character in the characters
   * field. Elements with value 0 have the default type style
   */
  characterStyleOverrides: number[];
  /** Map from ID to TypeStyle for looking up style overrides */
  styleOverrideTable: { [index: number]: TypeStyle };
}

/** A rectangular region of the canvas that can be exported */
export interface Slice extends Global {
  /** An array of export settings representing images to export from this node */
  exportSettings: ExportSetting[];
  /** Bounding box of the node in absolute space coordinates */
  absoluteBoundingBox: Rectangle;
}

/** A node that can have instances created of it that share the same properties */
export interface Component extends FrameBase {}

/**
 * An instance of a component, changes to the component result in the same
 * changes applied to the instance
 */
export interface Instance extends FrameBase {
  /**
   * ID of component that this instance came from, refers to components
   * table (see endpoints section below)
   */
  componentId: string;
}
