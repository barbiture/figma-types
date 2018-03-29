// To parse and unparse this JSON data, add this code to your project and do:
//
//    regularPolygonNode, err := UnmarshalRegularPolygonNode(bytes)
//    bytes, err = regularPolygonNode.Marshal()
//
//    ellipseNode, err := UnmarshalEllipseNode(bytes)
//    bytes, err = ellipseNode.Marshal()
//
//    groupNode, err := UnmarshalGroupNode(bytes)
//    bytes, err = groupNode.Marshal()
//
//    node, err := UnmarshalNode(bytes)
//    bytes, err = node.Marshal()
//
//    vector, err := UnmarshalVector(bytes)
//    bytes, err = vector.Marshal()
//
//    color, err := UnmarshalColor(bytes)
//    bytes, err = color.Marshal()
//
//    global, err := UnmarshalGlobal(bytes)
//    bytes, err = global.Marshal()
//
//    colorStop, err := UnmarshalColorStop(bytes)
//    bytes, err = colorStop.Marshal()
//
//    vectorNode, err := UnmarshalVectorNode(bytes)
//    bytes, err = vectorNode.Marshal()
//
//    layoutConstraint, err := UnmarshalLayoutConstraint(bytes)
//    bytes, err = layoutConstraint.Marshal()
//
//    booleanNode, err := UnmarshalBooleanNode(bytes)
//    bytes, err = booleanNode.Marshal()
//
//    user, err := UnmarshalUser(bytes)
//    bytes, err = user.Marshal()
//
//    textNode, err := UnmarshalTextNode(bytes)
//    bytes, err = textNode.Marshal()
//
//    frameNode, err := UnmarshalFrameNode(bytes)
//    bytes, err = frameNode.Marshal()
//
//    rectangle, err := UnmarshalRectangle(bytes)
//    bytes, err = rectangle.Marshal()
//
//    layoutGrid, err := UnmarshalLayoutGrid(bytes)
//    bytes, err = layoutGrid.Marshal()
//
//    effect, err := UnmarshalEffect(bytes)
//    bytes, err = effect.Marshal()
//
//    rectangleNode, err := UnmarshalRectangleNode(bytes)
//    bytes, err = rectangleNode.Marshal()
//
//    blendMode, err := UnmarshalBlendMode(bytes)
//    bytes, err = blendMode.Marshal()
//
//    sliceNode, err := UnmarshalSliceNode(bytes)
//    bytes, err = sliceNode.Marshal()
//
//    starNode, err := UnmarshalStarNode(bytes)
//    bytes, err = starNode.Marshal()
//
//    lineNode, err := UnmarshalLineNode(bytes)
//    bytes, err = lineNode.Marshal()
//
//    instanceNode, err := UnmarshalInstanceNode(bytes)
//    bytes, err = instanceNode.Marshal()
//
//    typeStyle, err := UnmarshalTypeStyle(bytes)
//    bytes, err = typeStyle.Marshal()
//
//    canvasNode, err := UnmarshalCanvasNode(bytes)
//    bytes, err = canvasNode.Marshal()
//
//    exportSetting, err := UnmarshalExportSetting(bytes)
//    bytes, err = exportSetting.Marshal()
//
//    documentNode, err := UnmarshalDocumentNode(bytes)
//    bytes, err = documentNode.Marshal()
//
//    constraint, err := UnmarshalConstraint(bytes)
//    bytes, err = constraint.Marshal()
//
//    paint, err := UnmarshalPaint(bytes)
//    bytes, err = paint.Marshal()
//
//    componentNode, err := UnmarshalComponentNode(bytes)
//    bytes, err = componentNode.Marshal()
//
//    comment, err := UnmarshalComment(bytes)
//    bytes, err = comment.Marshal()

package main

import "encoding/json"

func UnmarshalRegularPolygonNode(data []byte) (RegularPolygonNode, error) {
	var r RegularPolygonNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *RegularPolygonNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalEllipseNode(data []byte) (EllipseNode, error) {
	var r EllipseNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *EllipseNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalGroupNode(data []byte) (GroupNode, error) {
	var r GroupNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *GroupNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalNode(data []byte) (Node, error) {
	var r Node
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Node) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalVector(data []byte) (Vector, error) {
	var r Vector
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Vector) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalColor(data []byte) (Color, error) {
	var r Color
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Color) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalGlobal(data []byte) (Global, error) {
	var r Global
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Global) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalColorStop(data []byte) (ColorStop, error) {
	var r ColorStop
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ColorStop) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalVectorNode(data []byte) (VectorNode, error) {
	var r VectorNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *VectorNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalLayoutConstraint(data []byte) (LayoutConstraint, error) {
	var r LayoutConstraint
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *LayoutConstraint) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalBooleanNode(data []byte) (BooleanNode, error) {
	var r BooleanNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *BooleanNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalUser(data []byte) (User, error) {
	var r User
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *User) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalTextNode(data []byte) (TextNode, error) {
	var r TextNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *TextNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalFrameNode(data []byte) (FrameNode, error) {
	var r FrameNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *FrameNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalRectangle(data []byte) (Rectangle, error) {
	var r Rectangle
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Rectangle) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalLayoutGrid(data []byte) (LayoutGrid, error) {
	var r LayoutGrid
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *LayoutGrid) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalEffect(data []byte) (Effect, error) {
	var r Effect
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Effect) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalRectangleNode(data []byte) (RectangleNode, error) {
	var r RectangleNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *RectangleNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalBlendMode(data []byte) (BlendMode, error) {
	var r BlendMode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *BlendMode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalSliceNode(data []byte) (SliceNode, error) {
	var r SliceNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *SliceNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalStarNode(data []byte) (StarNode, error) {
	var r StarNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *StarNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalLineNode(data []byte) (LineNode, error) {
	var r LineNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *LineNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalInstanceNode(data []byte) (InstanceNode, error) {
	var r InstanceNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *InstanceNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalTypeStyle(data []byte) (TypeStyle, error) {
	var r TypeStyle
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *TypeStyle) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalCanvasNode(data []byte) (CanvasNode, error) {
	var r CanvasNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *CanvasNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalExportSetting(data []byte) (ExportSetting, error) {
	var r ExportSetting
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ExportSetting) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalDocumentNode(data []byte) (DocumentNode, error) {
	var r DocumentNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *DocumentNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalConstraint(data []byte) (Constraint, error) {
	var r Constraint
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Constraint) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalPaint(data []byte) (Paint, error) {
	var r Paint
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Paint) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalComponentNode(data []byte) (ComponentNode, error) {
	var r ComponentNode
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ComponentNode) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalComment(data []byte) (Comment, error) {
	var r Comment
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Comment) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type RegularPolygonNode struct {
	ID                  string                             `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                             `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                               `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType             `json:"type"`               // The type of the node
	Effects             []EffectElement                    `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	Opacity             float64                            `json:"opacity"`            // Opacity of the node
	StrokeAlign         StrokeAlign                        `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight        float64                            `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []PaintElement                     `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    *string                            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	BlendMode           BlendMode                          `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints         RegularPolygonNodeLayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool                               `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSettingElement             `json:"exportSettings"`     // An array of export settings representing images to export from node
	Strokes             []PaintElement                     `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool                               `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
}

// A rectangle that expresses a bounding box in absolute coordinates
//
// Bounding box of the node in absolute space coordinates
type RegularPolygonNodeRectangle struct {
	X      float64 `json:"x"`     // X coordinate of top left corner of the rectangle
	Y      float64 `json:"y"`     // Y coordinate of top left corner of the rectangle
	Width  float64 `json:"width"` // Width of the rectangle
	Height float64 `json:"height"`// Height of the rectangle
}

// Layout constraint relative to containing Frame
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
type RegularPolygonNodeLayoutConstraint struct {
	Vertical   Vertical   `json:"vertical"`  // * TOP: Node is laid out relative to top of the containing frame; * BOTTOM: Node is laid out relative to bottom of the containing frame; * CENTER: Node is vertically centered relative to containing frame; * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame; (node stretches with frame); * SCALE: Node scales vertically with containing frame
	Horizontal Horizontal `json:"horizontal"`// * LEFT: Node is laid out relative to left of the containing frame; * RIGHT: Node is laid out relative to right of the containing frame; * CENTER: Node is horizontally centered relative to containing frame; * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame; (node stretches with frame); * SCALE: Node scales horizontally with containing frame
}

// A visual effect such as a shadow or blur
//
// An array of effects attached to this node (see effects section for more details)
type EffectElement struct {
	Type      EffectType   `json:"type"`     // Type of effect as a string enum
	Radius    float64      `json:"radius"`   // See type property for effect of this field
	Visible   bool         `json:"visible"`  // See type property for effect of this field
	Color     EffectColor  `json:"color"`    // See type property for effect of this field
	BlendMode BlendMode    `json:"blendMode"`// See type property for effect of this field
	Offset    EffectVector `json:"offset"`   // See type property for effect of this field
}

// An RGBA color
//
// See type property for effect of this field
//
// (For solid paints) Solid color of the paint
//
// Color attached to corresponding position
//
// Color of the grid
//
// Background color of the node
//
// Background color of the canvas
type EffectColor struct {
	R float64 `json:"r"`// Red channel value, between 0 and 1
	G float64 `json:"g"`// Green channel value, between 0 and 1
	B float64 `json:"b"`// Blue channel value, between 0 and 1
	A float64 `json:"a"`// Alpha channel value, between 0 and 1
}

// A 2d vector
//
// See type property for effect of this field
//
// (For gradient paints) This field contains three vectors, each of which are a position in
// normalized object space (normalized object space is if the top left corner of the
// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
// corresponds to the start of the gradient (value 0 for the purposes of calculating
// gradient stops), the second position is the end of the gradient (value 1), and the third
// handle position determines the width of the gradient (only relevant for non-linear
// gradients).
type EffectVector struct {
	X float64 `json:"x"`// X coordinate of the vector
	Y float64 `json:"y"`// Y coordinate of the vector
}

// Format and size to export an asset at
//
// An array of export settings representing images to export from node
//
// An array of export settings representing images to export from the canvas
//
// A rectangular region of the canvas that can be exported
type ExportSettingElement struct {
	Suffix     string                  `json:"suffix"`    // File suffix to append to all filenames
	Format     Format                  `json:"format"`    // Type of constraint to apply; string enum with potential values below; ; * "SCALE": Scale by value; * "WIDTH": Scale proportionally and set width to value; * "HEIGHT": Scale proportionally and set height to value
	Constraint ExportSettingConstraint `json:"constraint"`// Constraint that determines sizing of exported asset
}

// Sizing constraint for exports
//
// Constraint that determines sizing of exported asset
type ExportSettingConstraint struct {
	Type  ConstraintType `json:"type"` // Type of constraint to apply; string enum with potential values below; ; * "SCALE": Scale by value; * "WIDTH": Scale proportionally and set width to value; * "HEIGHT": Scale proportionally and set height to value
	Value *float64       `json:"value"`// See type property for effect of this field
}

// A solid color, gradient, or image texture that can be applied as fills or strokes
//
// An array of fill paints applied to the node
//
// An array of stroke paints applied to the node
//
// Paints applied to characters
type PaintElement struct {
	Type                    PaintType          `json:"type"`                   // Type of paint as a string enum
	Visible                 bool               `json:"visible"`                // Is the paint enabled?
	Opacity                 float64            `json:"opacity"`                // Overall opacity of paint (colors within the paint can also have opacity values which; would blend with this)
	Color                   *EffectColor       `json:"color"`                  // (For solid paints) Solid color of the paint
	GradientHandlePositions []EffectVector     `json:"gradientHandlePositions"`// (For gradient paints) This field contains three vectors, each of which are a position in; normalized object space (normalized object space is if the top left corner of the; bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position; corresponds to the start of the gradient (value 0 for the purposes of calculating; gradient stops), the second position is the end of the gradient (value 1), and the third; handle position determines the width of the gradient (only relevant for non-linear; gradients).
	GradientStops           []ColorStopElement `json:"gradientStops"`          // (For gradient paints) Positions of key points along the gradient axis with the colors; anchored there. Colors along the gradient are interpolated smoothly between neighboring; gradient stops.
	ScaleMode               *ScaleMode         `json:"scaleMode"`              // (For image paints) Image scaling mode
}

// A position color pair representing a gradient stop
//
// (For gradient paints) Positions of key points along the gradient axis with the colors
// anchored there. Colors along the gradient are interpolated smoothly between neighboring
// gradient stops.
type ColorStopElement struct {
	Color    EffectColor `json:"color"`   // Color attached to corresponding position
	Position float64     `json:"position"`// Value between 0 and 1 representing position along gradient axis
}

// An ellipse
//
// A regular n-sided polygon
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type EllipseNode struct {
	ID                  string                             `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                             `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                               `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType             `json:"type"`               // The type of the node
	Effects             []EffectElement                    `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	Opacity             float64                            `json:"opacity"`            // Opacity of the node
	StrokeAlign         StrokeAlign                        `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight        float64                            `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []PaintElement                     `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    *string                            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	BlendMode           BlendMode                          `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints         RegularPolygonNodeLayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool                               `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSettingElement             `json:"exportSettings"`     // An array of export settings representing images to export from node
	Strokes             []PaintElement                     `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool                               `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
}

// A logical grouping of nodes
//
// A regular n-sided polygon
//
// An ellipse
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type GroupNode struct {
	ID                  string                             `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                             `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                               `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType             `json:"type"`               // The type of the node
	Effects             []EffectElement                    `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	LayoutGrids         []LayoutGridElement                `json:"layoutGrids"`        // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity             float64                            `json:"opacity"`            // Opacity of the node
	AbsoluteBoundingBox RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    *string                            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	BlendMode           BlendMode                          `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	BackgroundColor     EffectColor                        `json:"backgroundColor"`    // Background color of the node
	Constraints         RegularPolygonNodeLayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool                               `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ClipsContent        bool                               `json:"clipsContent"`       // Does this node clip content outside of its bounds?
	ExportSettings      []ExportSettingElement             `json:"exportSettings"`     // An array of export settings representing images to export from node
	PreserveRatio       bool                               `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Children            []PurpleNode                       `json:"children"`           // An array of nodes that are direct children of this node
}

// An array of nodes that are direct children of this node
//
// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type PurpleNode struct {
	ID                      string                              `json:"id"`                     // A string uniquely identifying this node within the document
	Name                    string                              `json:"name"`                   // The name given to the node by the user in the tool
	Visible                 bool                                `json:"visible"`                // Whether or not the node is visible on the canvas
	Type                    RegularPolygonNodeType              `json:"type"`                   // The type of the node
	Children                []NodeNode                          `json:"children"`               // An array of canvases attached to the document; ; An array of top level layers on the canvas; ; An array of nodes that are direct children of this node; ; An array of nodes that are being boolean operated on
	BackgroundColor         *EffectColor                        `json:"backgroundColor"`        // Background color of the canvas; ; Background color of the node
	ExportSettings          []ExportSettingElement              `json:"exportSettings"`         // An array of export settings representing images to export from the canvas; ; An array of export settings representing images to export from node; ; A rectangular region of the canvas that can be exported
	Effects                 []EffectElement                     `json:"effects"`                // An array of effects attached to this node (see effects section for more details)
	LayoutGrids             []LayoutGridElement                 `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity                 *float64                            `json:"opacity"`                // Opacity of the node
	AbsoluteBoundingBox     *RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	TransitionNodeID        *string                             `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	BlendMode               *BlendMode                          `json:"blendMode"`              // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints             *RegularPolygonNodeLayoutConstraint `json:"constraints"`            // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask                  *bool                               `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ClipsContent            *bool                               `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	PreserveRatio           *bool                               `json:"preserveRatio"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	StrokeAlign             *StrokeAlign                        `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight            *float64                            `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []PaintElement                      `json:"fills"`                  // An array of fill paints applied to the node
	Strokes                 []PaintElement                      `json:"strokes"`                // An array of stroke paints applied to the node
	CornerRadius            *float64                            `json:"cornerRadius"`           // Radius of each corner of the rectangle
	Characters              *string                             `json:"characters"`             // Text contained within text box
	Style                   *NodeTypeStyle                      `json:"style"`                  // Style of text including font family and weight (see type style section for more; information)
	CharacterStyleOverrides []float64                           `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box, each element is a; reference to the styleOverrideTable defined below and maps to the corresponding character; in the characters field. Elements with value 0 have the default type style
	StyleOverrideTable      map[string]NodeTypeStyle            `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	ComponentID             *string                             `json:"componentId"`            // ID of component that this instance came from, refers to components table (see endpoints; section below)
}

// An array of canvases attached to the document
//
// An array of nodes that are direct children of this node
//
// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
//
// An array of top level layers on the canvas
//
// An array of nodes that are being boolean operated on
type NodeNode struct {
	ID                      string                              `json:"id"`                     // A string uniquely identifying this node within the document
	Name                    string                              `json:"name"`                   // The name given to the node by the user in the tool
	Visible                 bool                                `json:"visible"`                // Whether or not the node is visible on the canvas
	Type                    RegularPolygonNodeType              `json:"type"`                   // The type of the node
	Children                []NodeNode                          `json:"children"`               // An array of canvases attached to the document; ; An array of top level layers on the canvas; ; An array of nodes that are direct children of this node; ; An array of nodes that are being boolean operated on
	BackgroundColor         *EffectColor                        `json:"backgroundColor"`        // Background color of the canvas; ; Background color of the node
	ExportSettings          []ExportSettingElement              `json:"exportSettings"`         // An array of export settings representing images to export from the canvas; ; An array of export settings representing images to export from node; ; A rectangular region of the canvas that can be exported
	Effects                 []EffectElement                     `json:"effects"`                // An array of effects attached to this node (see effects section for more details)
	LayoutGrids             []LayoutGridElement                 `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity                 *float64                            `json:"opacity"`                // Opacity of the node
	AbsoluteBoundingBox     *RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	TransitionNodeID        *string                             `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	BlendMode               *BlendMode                          `json:"blendMode"`              // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints             *RegularPolygonNodeLayoutConstraint `json:"constraints"`            // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask                  *bool                               `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ClipsContent            *bool                               `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	PreserveRatio           *bool                               `json:"preserveRatio"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	StrokeAlign             *StrokeAlign                        `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight            *float64                            `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []PaintElement                      `json:"fills"`                  // An array of fill paints applied to the node
	Strokes                 []PaintElement                      `json:"strokes"`                // An array of stroke paints applied to the node
	CornerRadius            *float64                            `json:"cornerRadius"`           // Radius of each corner of the rectangle
	Characters              *string                             `json:"characters"`             // Text contained within text box
	Style                   *NodeTypeStyle                      `json:"style"`                  // Style of text including font family and weight (see type style section for more; information)
	CharacterStyleOverrides []float64                           `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box, each element is a; reference to the styleOverrideTable defined below and maps to the corresponding character; in the characters field. Elements with value 0 have the default type style
	StyleOverrideTable      map[string]NodeTypeStyle            `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	ComponentID             *string                             `json:"componentId"`            // ID of component that this instance came from, refers to components table (see endpoints; section below)
}

// Guides to align and place objects within a frame
//
// An array of layout grids attached to this node (see layout grids section for more
// details). GROUP nodes do not have this attribute
type LayoutGridElement struct {
	Pattern     Pattern     `json:"pattern"`    // * COLUMNS: Vertical grid; * ROWS: Horizontal grid; * GRID: Square grid
	SectionSize float64     `json:"sectionSize"`// Width of column grid or height of row grid or square grid spacing
	Visible     bool        `json:"visible"`    // Is the grid currently visible?
	Color       EffectColor `json:"color"`      // Color of the grid
	Alignment   Alignment   `json:"alignment"`  // Positioning of grid as a string enum; ; * MIN: Grid starts at the left or top of the frame; * MAX: Grid starts at the right or bottom of the frame; * CENTER: Grid is center aligned
	GutterSize  float64     `json:"gutterSize"` // Spacing in between columns and rows
	Offset      float64     `json:"offset"`     // Spacing before the first column or row
	Count       float64     `json:"count"`      // Number of columns or rows
}

// Metadata for character formatting
//
// Style of text including font family and weight (see type style section for more
// information)
//
// Map from ID to TypeStyle for looking up style overrides
type NodeTypeStyle struct {
	LineHeightPx        float64             `json:"lineHeightPx"`       // Line height in px
	FontPostScriptName  string              `json:"fontPostScriptName"` // PostScript font name
	FontWeight          float64             `json:"fontWeight"`         // Numeric font weight
	LineHeightPercent   float64             `json:"lineHeightPercent"`  // Line height as a percentage of normal line height
	TextAlignVertical   TextAlignVertical   `json:"textAlignVertical"`  // Vertical text alignment as string enum
	FontSize            float64             `json:"fontSize"`           // Font size in px
	Italic              bool                `json:"italic"`             // Is text italicized?
	Fills               []PaintElement      `json:"fills"`              // Paints applied to characters
	FontFamily          string              `json:"fontFamily"`         // Font family of text (standard name)
	TextAlignHorizontal TextAlignHorizontal `json:"textAlignHorizontal"`// Horizontal text alignment as string enum
	LetterSpacing       float64             `json:"letterSpacing"`      // Space between characters in px
}

// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type Node struct {
	ID                      string                              `json:"id"`                     // A string uniquely identifying this node within the document
	Name                    string                              `json:"name"`                   // The name given to the node by the user in the tool
	Visible                 bool                                `json:"visible"`                // Whether or not the node is visible on the canvas
	Type                    RegularPolygonNodeType              `json:"type"`                   // The type of the node
	Children                []NodeNode                          `json:"children"`               // An array of canvases attached to the document; ; An array of top level layers on the canvas; ; An array of nodes that are direct children of this node; ; An array of nodes that are being boolean operated on
	BackgroundColor         *EffectColor                        `json:"backgroundColor"`        // Background color of the canvas; ; Background color of the node
	ExportSettings          []ExportSettingElement              `json:"exportSettings"`         // An array of export settings representing images to export from the canvas; ; An array of export settings representing images to export from node; ; A rectangular region of the canvas that can be exported
	Effects                 []EffectElement                     `json:"effects"`                // An array of effects attached to this node (see effects section for more details)
	LayoutGrids             []LayoutGridElement                 `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity                 *float64                            `json:"opacity"`                // Opacity of the node
	AbsoluteBoundingBox     *RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	TransitionNodeID        *string                             `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	BlendMode               *BlendMode                          `json:"blendMode"`              // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints             *RegularPolygonNodeLayoutConstraint `json:"constraints"`            // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask                  *bool                               `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ClipsContent            *bool                               `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	PreserveRatio           *bool                               `json:"preserveRatio"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	StrokeAlign             *StrokeAlign                        `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight            *float64                            `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []PaintElement                      `json:"fills"`                  // An array of fill paints applied to the node
	Strokes                 []PaintElement                      `json:"strokes"`                // An array of stroke paints applied to the node
	CornerRadius            *float64                            `json:"cornerRadius"`           // Radius of each corner of the rectangle
	Characters              *string                             `json:"characters"`             // Text contained within text box
	Style                   *NodeTypeStyle                      `json:"style"`                  // Style of text including font family and weight (see type style section for more; information)
	CharacterStyleOverrides []float64                           `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box, each element is a; reference to the styleOverrideTable defined below and maps to the corresponding character; in the characters field. Elements with value 0 have the default type style
	StyleOverrideTable      map[string]NodeTypeStyle            `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	ComponentID             *string                             `json:"componentId"`            // ID of component that this instance came from, refers to components table (see endpoints; section below)
}

// A 2d vector
type Vector struct {
	X float64 `json:"x"`// X coordinate of the vector
	Y float64 `json:"y"`// Y coordinate of the vector
}

// An RGBA color
type Color struct {
	R float64 `json:"r"`// Red channel value, between 0 and 1
	G float64 `json:"g"`// Green channel value, between 0 and 1
	B float64 `json:"b"`// Blue channel value, between 0 and 1
	A float64 `json:"a"`// Alpha channel value, between 0 and 1
}

// Properties are shared across all nodes
type Global struct {
	ID      string                 `json:"id"`     // A string uniquely identifying this node within the document
	Name    string                 `json:"name"`   // The name given to the node by the user in the tool
	Visible bool                   `json:"visible"`// Whether or not the node is visible on the canvas
	Type    RegularPolygonNodeType `json:"type"`   // The type of the node
}

// A position color pair representing a gradient stop
type ColorStop struct {
	Color    EffectColor `json:"color"`   // Color attached to corresponding position
	Position float64     `json:"position"`// Value between 0 and 1 representing position along gradient axis
}

// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type VectorNode struct {
	ID                  string                             `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                             `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                               `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType             `json:"type"`               // The type of the node
	Effects             []EffectElement                    `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	Opacity             float64                            `json:"opacity"`            // Opacity of the node
	StrokeAlign         StrokeAlign                        `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight        float64                            `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []PaintElement                     `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    *string                            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	BlendMode           BlendMode                          `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints         RegularPolygonNodeLayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool                               `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSettingElement             `json:"exportSettings"`     // An array of export settings representing images to export from node
	Strokes             []PaintElement                     `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool                               `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
}

// Layout constraint relative to containing Frame
type LayoutConstraint struct {
	Vertical   Vertical   `json:"vertical"`  // * TOP: Node is laid out relative to top of the containing frame; * BOTTOM: Node is laid out relative to bottom of the containing frame; * CENTER: Node is vertically centered relative to containing frame; * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame; (node stretches with frame); * SCALE: Node scales vertically with containing frame
	Horizontal Horizontal `json:"horizontal"`// * LEFT: Node is laid out relative to left of the containing frame; * RIGHT: Node is laid out relative to right of the containing frame; * CENTER: Node is horizontally centered relative to containing frame; * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame; (node stretches with frame); * SCALE: Node scales horizontally with containing frame
}

// A group that has a boolean operation applied to it
//
// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type BooleanNode struct {
	ID                  string                             `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                             `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                               `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType             `json:"type"`               // The type of the node
	Effects             []EffectElement                    `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	Opacity             float64                            `json:"opacity"`            // Opacity of the node
	StrokeAlign         StrokeAlign                        `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight        float64                            `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []PaintElement                     `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    *string                            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	BlendMode           BlendMode                          `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints         RegularPolygonNodeLayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool                               `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSettingElement             `json:"exportSettings"`     // An array of export settings representing images to export from node
	Strokes             []PaintElement                     `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool                               `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Children            []FluffyNode                       `json:"children"`           // An array of nodes that are being boolean operated on
}

// An array of nodes that are being boolean operated on
//
// An array of nodes that are direct children of this node
//
// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type FluffyNode struct {
	ID                      string                              `json:"id"`                     // A string uniquely identifying this node within the document
	Name                    string                              `json:"name"`                   // The name given to the node by the user in the tool
	Visible                 bool                                `json:"visible"`                // Whether or not the node is visible on the canvas
	Type                    RegularPolygonNodeType              `json:"type"`                   // The type of the node
	Children                []NodeNode                          `json:"children"`               // An array of canvases attached to the document; ; An array of top level layers on the canvas; ; An array of nodes that are direct children of this node; ; An array of nodes that are being boolean operated on
	BackgroundColor         *EffectColor                        `json:"backgroundColor"`        // Background color of the canvas; ; Background color of the node
	ExportSettings          []ExportSettingElement              `json:"exportSettings"`         // An array of export settings representing images to export from the canvas; ; An array of export settings representing images to export from node; ; A rectangular region of the canvas that can be exported
	Effects                 []EffectElement                     `json:"effects"`                // An array of effects attached to this node (see effects section for more details)
	LayoutGrids             []LayoutGridElement                 `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity                 *float64                            `json:"opacity"`                // Opacity of the node
	AbsoluteBoundingBox     *RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	TransitionNodeID        *string                             `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	BlendMode               *BlendMode                          `json:"blendMode"`              // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints             *RegularPolygonNodeLayoutConstraint `json:"constraints"`            // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask                  *bool                               `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ClipsContent            *bool                               `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	PreserveRatio           *bool                               `json:"preserveRatio"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	StrokeAlign             *StrokeAlign                        `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight            *float64                            `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []PaintElement                      `json:"fills"`                  // An array of fill paints applied to the node
	Strokes                 []PaintElement                      `json:"strokes"`                // An array of stroke paints applied to the node
	CornerRadius            *float64                            `json:"cornerRadius"`           // Radius of each corner of the rectangle
	Characters              *string                             `json:"characters"`             // Text contained within text box
	Style                   *NodeTypeStyle                      `json:"style"`                  // Style of text including font family and weight (see type style section for more; information)
	CharacterStyleOverrides []float64                           `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box, each element is a; reference to the styleOverrideTable defined below and maps to the corresponding character; in the characters field. Elements with value 0 have the default type style
	StyleOverrideTable      map[string]NodeTypeStyle            `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	ComponentID             *string                             `json:"componentId"`            // ID of component that this instance came from, refers to components table (see endpoints; section below)
}

// A description of a user
type User struct {
	Handle string `json:"handle"` 
	ImgURL string `json:"img_url"`
}

// A text box
//
// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type TextNode struct {
	ID                      string                             `json:"id"`                     // A string uniquely identifying this node within the document
	Name                    string                             `json:"name"`                   // The name given to the node by the user in the tool
	Visible                 bool                               `json:"visible"`                // Whether or not the node is visible on the canvas
	Type                    RegularPolygonNodeType             `json:"type"`                   // The type of the node
	Effects                 []EffectElement                    `json:"effects"`                // An array of effects attached to this node (see effects section for more details)
	Opacity                 float64                            `json:"opacity"`                // Opacity of the node
	StrokeAlign             StrokeAlign                        `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight            float64                            `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []PaintElement                     `json:"fills"`                  // An array of fill paints applied to the node
	AbsoluteBoundingBox     RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	TransitionNodeID        *string                            `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	BlendMode               BlendMode                          `json:"blendMode"`              // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints             RegularPolygonNodeLayoutConstraint `json:"constraints"`            // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask                  bool                               `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ExportSettings          []ExportSettingElement             `json:"exportSettings"`         // An array of export settings representing images to export from node
	Strokes                 []PaintElement                     `json:"strokes"`                // An array of stroke paints applied to the node
	PreserveRatio           bool                               `json:"preserveRatio"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Characters              string                             `json:"characters"`             // Text contained within text box
	Style                   NodeTypeStyle                      `json:"style"`                  // Style of text including font family and weight (see type style section for more; information)
	CharacterStyleOverrides []float64                          `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box, each element is a; reference to the styleOverrideTable defined below and maps to the corresponding character; in the characters field. Elements with value 0 have the default type style
	StyleOverrideTable      map[string]NodeTypeStyle           `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
}

// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type FrameNode struct {
	ID                  string                             `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                             `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                               `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType             `json:"type"`               // The type of the node
	Effects             []EffectElement                    `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	LayoutGrids         []LayoutGridElement                `json:"layoutGrids"`        // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity             float64                            `json:"opacity"`            // Opacity of the node
	AbsoluteBoundingBox RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    *string                            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	BlendMode           BlendMode                          `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	BackgroundColor     EffectColor                        `json:"backgroundColor"`    // Background color of the node
	Constraints         RegularPolygonNodeLayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool                               `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ClipsContent        bool                               `json:"clipsContent"`       // Does this node clip content outside of its bounds?
	ExportSettings      []ExportSettingElement             `json:"exportSettings"`     // An array of export settings representing images to export from node
	PreserveRatio       bool                               `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Children            []FrameNodeNode                    `json:"children"`           // An array of nodes that are direct children of this node
}

// An array of nodes that are direct children of this node
//
// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type FrameNodeNode struct {
	ID                      string                              `json:"id"`                     // A string uniquely identifying this node within the document
	Name                    string                              `json:"name"`                   // The name given to the node by the user in the tool
	Visible                 bool                                `json:"visible"`                // Whether or not the node is visible on the canvas
	Type                    RegularPolygonNodeType              `json:"type"`                   // The type of the node
	Children                []NodeNode                          `json:"children"`               // An array of canvases attached to the document; ; An array of top level layers on the canvas; ; An array of nodes that are direct children of this node; ; An array of nodes that are being boolean operated on
	BackgroundColor         *EffectColor                        `json:"backgroundColor"`        // Background color of the canvas; ; Background color of the node
	ExportSettings          []ExportSettingElement              `json:"exportSettings"`         // An array of export settings representing images to export from the canvas; ; An array of export settings representing images to export from node; ; A rectangular region of the canvas that can be exported
	Effects                 []EffectElement                     `json:"effects"`                // An array of effects attached to this node (see effects section for more details)
	LayoutGrids             []LayoutGridElement                 `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity                 *float64                            `json:"opacity"`                // Opacity of the node
	AbsoluteBoundingBox     *RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	TransitionNodeID        *string                             `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	BlendMode               *BlendMode                          `json:"blendMode"`              // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints             *RegularPolygonNodeLayoutConstraint `json:"constraints"`            // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask                  *bool                               `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ClipsContent            *bool                               `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	PreserveRatio           *bool                               `json:"preserveRatio"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	StrokeAlign             *StrokeAlign                        `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight            *float64                            `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []PaintElement                      `json:"fills"`                  // An array of fill paints applied to the node
	Strokes                 []PaintElement                      `json:"strokes"`                // An array of stroke paints applied to the node
	CornerRadius            *float64                            `json:"cornerRadius"`           // Radius of each corner of the rectangle
	Characters              *string                             `json:"characters"`             // Text contained within text box
	Style                   *NodeTypeStyle                      `json:"style"`                  // Style of text including font family and weight (see type style section for more; information)
	CharacterStyleOverrides []float64                           `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box, each element is a; reference to the styleOverrideTable defined below and maps to the corresponding character; in the characters field. Elements with value 0 have the default type style
	StyleOverrideTable      map[string]NodeTypeStyle            `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	ComponentID             *string                             `json:"componentId"`            // ID of component that this instance came from, refers to components table (see endpoints; section below)
}

// A rectangle that expresses a bounding box in absolute coordinates
type Rectangle struct {
	X      float64 `json:"x"`     // X coordinate of top left corner of the rectangle
	Y      float64 `json:"y"`     // Y coordinate of top left corner of the rectangle
	Width  float64 `json:"width"` // Width of the rectangle
	Height float64 `json:"height"`// Height of the rectangle
}

// Guides to align and place objects within a frame
type LayoutGrid struct {
	Pattern     Pattern     `json:"pattern"`    // * COLUMNS: Vertical grid; * ROWS: Horizontal grid; * GRID: Square grid
	SectionSize float64     `json:"sectionSize"`// Width of column grid or height of row grid or square grid spacing
	Visible     bool        `json:"visible"`    // Is the grid currently visible?
	Color       EffectColor `json:"color"`      // Color of the grid
	Alignment   Alignment   `json:"alignment"`  // Positioning of grid as a string enum; ; * MIN: Grid starts at the left or top of the frame; * MAX: Grid starts at the right or bottom of the frame; * CENTER: Grid is center aligned
	GutterSize  float64     `json:"gutterSize"` // Spacing in between columns and rows
	Offset      float64     `json:"offset"`     // Spacing before the first column or row
	Count       float64     `json:"count"`      // Number of columns or rows
}

// A visual effect such as a shadow or blur
type Effect struct {
	Type      EffectType   `json:"type"`     // Type of effect as a string enum
	Radius    float64      `json:"radius"`   // See type property for effect of this field
	Visible   bool         `json:"visible"`  // See type property for effect of this field
	Color     EffectColor  `json:"color"`    // See type property for effect of this field
	BlendMode BlendMode    `json:"blendMode"`// See type property for effect of this field
	Offset    EffectVector `json:"offset"`   // See type property for effect of this field
}

// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type RectangleNode struct {
	ID                  string                             `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                             `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                               `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType             `json:"type"`               // The type of the node
	Effects             []EffectElement                    `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	Opacity             float64                            `json:"opacity"`            // Opacity of the node
	StrokeAlign         StrokeAlign                        `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight        float64                            `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []PaintElement                     `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    *string                            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	BlendMode           BlendMode                          `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints         RegularPolygonNodeLayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool                               `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSettingElement             `json:"exportSettings"`     // An array of export settings representing images to export from node
	Strokes             []PaintElement                     `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool                               `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	CornerRadius        float64                            `json:"cornerRadius"`       // Radius of each corner of the rectangle
}

// A rectangular region of the canvas that can be exported
//
// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type SliceNode struct {
	ID                  string                      `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                      `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                        `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType      `json:"type"`               // The type of the node
	ExportSettings      []ExportSettingElement      `json:"exportSettings"`     // A rectangular region of the canvas that can be exported
	AbsoluteBoundingBox RegularPolygonNodeRectangle `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
}

// A regular star shape
//
// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type StarNode struct {
	ID                  string                             `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                             `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                               `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType             `json:"type"`               // The type of the node
	Effects             []EffectElement                    `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	Opacity             float64                            `json:"opacity"`            // Opacity of the node
	StrokeAlign         StrokeAlign                        `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight        float64                            `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []PaintElement                     `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    *string                            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	BlendMode           BlendMode                          `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints         RegularPolygonNodeLayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool                               `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSettingElement             `json:"exportSettings"`     // An array of export settings representing images to export from node
	Strokes             []PaintElement                     `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool                               `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
}

// A straight line
//
// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type LineNode struct {
	ID                  string                             `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                             `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                               `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType             `json:"type"`               // The type of the node
	Effects             []EffectElement                    `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	Opacity             float64                            `json:"opacity"`            // Opacity of the node
	StrokeAlign         StrokeAlign                        `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight        float64                            `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []PaintElement                     `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    *string                            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	BlendMode           BlendMode                          `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints         RegularPolygonNodeLayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool                               `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSettingElement             `json:"exportSettings"`     // An array of export settings representing images to export from node
	Strokes             []PaintElement                     `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool                               `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
}

// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// A logical grouping of nodes
//
// A regular n-sided polygon
//
// An ellipse
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type InstanceNode struct {
	ID                  string                             `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                             `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                               `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType             `json:"type"`               // The type of the node
	Effects             []EffectElement                    `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	LayoutGrids         []LayoutGridElement                `json:"layoutGrids"`        // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity             float64                            `json:"opacity"`            // Opacity of the node
	AbsoluteBoundingBox RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    *string                            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	BlendMode           BlendMode                          `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	BackgroundColor     EffectColor                        `json:"backgroundColor"`    // Background color of the node
	Constraints         RegularPolygonNodeLayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool                               `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ClipsContent        bool                               `json:"clipsContent"`       // Does this node clip content outside of its bounds?
	ExportSettings      []ExportSettingElement             `json:"exportSettings"`     // An array of export settings representing images to export from node
	PreserveRatio       bool                               `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Children            []PurpleNode                       `json:"children"`           // An array of nodes that are direct children of this node
	ComponentID         string                             `json:"componentId"`        // ID of component that this instance came from, refers to components table (see endpoints; section below)
}

// Metadata for character formatting
type TypeStyle struct {
	LineHeightPx        float64             `json:"lineHeightPx"`       // Line height in px
	FontPostScriptName  string              `json:"fontPostScriptName"` // PostScript font name
	FontWeight          float64             `json:"fontWeight"`         // Numeric font weight
	LineHeightPercent   float64             `json:"lineHeightPercent"`  // Line height as a percentage of normal line height
	TextAlignVertical   TextAlignVertical   `json:"textAlignVertical"`  // Vertical text alignment as string enum
	FontSize            float64             `json:"fontSize"`           // Font size in px
	Italic              bool                `json:"italic"`             // Is text italicized?
	Fills               []PaintElement      `json:"fills"`              // Paints applied to characters
	FontFamily          string              `json:"fontFamily"`         // Font family of text (standard name)
	TextAlignHorizontal TextAlignHorizontal `json:"textAlignHorizontal"`// Horizontal text alignment as string enum
	LetterSpacing       float64             `json:"letterSpacing"`      // Space between characters in px
}

// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type CanvasNode struct {
	ID              string                 `json:"id"`             // A string uniquely identifying this node within the document
	Name            string                 `json:"name"`           // The name given to the node by the user in the tool
	Visible         bool                   `json:"visible"`        // Whether or not the node is visible on the canvas
	Type            RegularPolygonNodeType `json:"type"`           // The type of the node
	Children        []TentacledNode        `json:"children"`       // An array of top level layers on the canvas
	BackgroundColor EffectColor            `json:"backgroundColor"`// Background color of the canvas
	ExportSettings  []ExportSettingElement `json:"exportSettings"` // An array of export settings representing images to export from the canvas
}

// An array of top level layers on the canvas
//
// An array of nodes that are direct children of this node
//
// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type TentacledNode struct {
	ID                      string                              `json:"id"`                     // A string uniquely identifying this node within the document
	Name                    string                              `json:"name"`                   // The name given to the node by the user in the tool
	Visible                 bool                                `json:"visible"`                // Whether or not the node is visible on the canvas
	Type                    RegularPolygonNodeType              `json:"type"`                   // The type of the node
	Children                []NodeNode                          `json:"children"`               // An array of canvases attached to the document; ; An array of top level layers on the canvas; ; An array of nodes that are direct children of this node; ; An array of nodes that are being boolean operated on
	BackgroundColor         *EffectColor                        `json:"backgroundColor"`        // Background color of the canvas; ; Background color of the node
	ExportSettings          []ExportSettingElement              `json:"exportSettings"`         // An array of export settings representing images to export from the canvas; ; An array of export settings representing images to export from node; ; A rectangular region of the canvas that can be exported
	Effects                 []EffectElement                     `json:"effects"`                // An array of effects attached to this node (see effects section for more details)
	LayoutGrids             []LayoutGridElement                 `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity                 *float64                            `json:"opacity"`                // Opacity of the node
	AbsoluteBoundingBox     *RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	TransitionNodeID        *string                             `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	BlendMode               *BlendMode                          `json:"blendMode"`              // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints             *RegularPolygonNodeLayoutConstraint `json:"constraints"`            // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask                  *bool                               `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ClipsContent            *bool                               `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	PreserveRatio           *bool                               `json:"preserveRatio"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	StrokeAlign             *StrokeAlign                        `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight            *float64                            `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []PaintElement                      `json:"fills"`                  // An array of fill paints applied to the node
	Strokes                 []PaintElement                      `json:"strokes"`                // An array of stroke paints applied to the node
	CornerRadius            *float64                            `json:"cornerRadius"`           // Radius of each corner of the rectangle
	Characters              *string                             `json:"characters"`             // Text contained within text box
	Style                   *NodeTypeStyle                      `json:"style"`                  // Style of text including font family and weight (see type style section for more; information)
	CharacterStyleOverrides []float64                           `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box, each element is a; reference to the styleOverrideTable defined below and maps to the corresponding character; in the characters field. Elements with value 0 have the default type style
	StyleOverrideTable      map[string]NodeTypeStyle            `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	ComponentID             *string                             `json:"componentId"`            // ID of component that this instance came from, refers to components table (see endpoints; section below)
}

// Format and size to export an asset at
type ExportSetting struct {
	Suffix     string                  `json:"suffix"`    // File suffix to append to all filenames
	Format     Format                  `json:"format"`    // Type of constraint to apply; string enum with potential values below; ; * "SCALE": Scale by value; * "WIDTH": Scale proportionally and set width to value; * "HEIGHT": Scale proportionally and set height to value
	Constraint ExportSettingConstraint `json:"constraint"`// Constraint that determines sizing of exported asset
}

// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type DocumentNode struct {
	ID       string                 `json:"id"`      // A string uniquely identifying this node within the document
	Name     string                 `json:"name"`    // The name given to the node by the user in the tool
	Visible  bool                   `json:"visible"` // Whether or not the node is visible on the canvas
	Type     RegularPolygonNodeType `json:"type"`    // The type of the node
	Children []StickyNode           `json:"children"`// An array of canvases attached to the document
}

// An array of canvases attached to the document
//
// An array of nodes that are direct children of this node
//
// A regular n-sided polygon
//
// An ellipse
//
// A logical grouping of nodes
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type StickyNode struct {
	ID                      string                              `json:"id"`                     // A string uniquely identifying this node within the document
	Name                    string                              `json:"name"`                   // The name given to the node by the user in the tool
	Visible                 bool                                `json:"visible"`                // Whether or not the node is visible on the canvas
	Type                    RegularPolygonNodeType              `json:"type"`                   // The type of the node
	Children                []NodeNode                          `json:"children"`               // An array of canvases attached to the document; ; An array of top level layers on the canvas; ; An array of nodes that are direct children of this node; ; An array of nodes that are being boolean operated on
	BackgroundColor         *EffectColor                        `json:"backgroundColor"`        // Background color of the canvas; ; Background color of the node
	ExportSettings          []ExportSettingElement              `json:"exportSettings"`         // An array of export settings representing images to export from the canvas; ; An array of export settings representing images to export from node; ; A rectangular region of the canvas that can be exported
	Effects                 []EffectElement                     `json:"effects"`                // An array of effects attached to this node (see effects section for more details)
	LayoutGrids             []LayoutGridElement                 `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity                 *float64                            `json:"opacity"`                // Opacity of the node
	AbsoluteBoundingBox     *RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	TransitionNodeID        *string                             `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	BlendMode               *BlendMode                          `json:"blendMode"`              // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints             *RegularPolygonNodeLayoutConstraint `json:"constraints"`            // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask                  *bool                               `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ClipsContent            *bool                               `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	PreserveRatio           *bool                               `json:"preserveRatio"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	StrokeAlign             *StrokeAlign                        `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight            *float64                            `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []PaintElement                      `json:"fills"`                  // An array of fill paints applied to the node
	Strokes                 []PaintElement                      `json:"strokes"`                // An array of stroke paints applied to the node
	CornerRadius            *float64                            `json:"cornerRadius"`           // Radius of each corner of the rectangle
	Characters              *string                             `json:"characters"`             // Text contained within text box
	Style                   *NodeTypeStyle                      `json:"style"`                  // Style of text including font family and weight (see type style section for more; information)
	CharacterStyleOverrides []float64                           `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box, each element is a; reference to the styleOverrideTable defined below and maps to the corresponding character; in the characters field. Elements with value 0 have the default type style
	StyleOverrideTable      map[string]NodeTypeStyle            `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	ComponentID             *string                             `json:"componentId"`            // ID of component that this instance came from, refers to components table (see endpoints; section below)
}

// Sizing constraint for exports
type Constraint struct {
	Type  ConstraintType `json:"type"` // Type of constraint to apply; string enum with potential values below; ; * "SCALE": Scale by value; * "WIDTH": Scale proportionally and set width to value; * "HEIGHT": Scale proportionally and set height to value
	Value *float64       `json:"value"`// See type property for effect of this field
}

// A solid color, gradient, or image texture that can be applied as fills or strokes
type Paint struct {
	Type                    PaintType          `json:"type"`                   // Type of paint as a string enum
	Visible                 bool               `json:"visible"`                // Is the paint enabled?
	Opacity                 float64            `json:"opacity"`                // Overall opacity of paint (colors within the paint can also have opacity values which; would blend with this)
	Color                   *EffectColor       `json:"color"`                  // (For solid paints) Solid color of the paint
	GradientHandlePositions []EffectVector     `json:"gradientHandlePositions"`// (For gradient paints) This field contains three vectors, each of which are a position in; normalized object space (normalized object space is if the top left corner of the; bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position; corresponds to the start of the gradient (value 0 for the purposes of calculating; gradient stops), the second position is the end of the gradient (value 1), and the third; handle position determines the width of the gradient (only relevant for non-linear; gradients).
	GradientStops           []ColorStopElement `json:"gradientStops"`          // (For gradient paints) Positions of key points along the gradient axis with the colors; anchored there. Colors along the gradient are interpolated smoothly between neighboring; gradient stops.
	ScaleMode               *ScaleMode         `json:"scaleMode"`              // (For image paints) Image scaling mode
}

// A node that can have instances created of it that share the same properties
//
// A logical grouping of nodes
//
// A regular n-sided polygon
//
// An ellipse
//
// An array of nodes that are direct children of this node
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// Properties are shared across all nodes
//
// See type property for effect of this field
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Opacity of the node
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Radius of each corner of the rectangle
//
// Line height in px
//
// Numeric font weight
//
// Line height as a percentage of normal line height
//
// Font size in px
//
// Space between characters in px
//
// Array with same number of elements as characeters in text box, each element is a
// reference to the styleOverrideTable defined below and maps to the corresponding character
// in the characters field. Elements with value 0 have the default type style
//
// Whether or not the node is visible on the canvas
//
// Is the paint enabled?
//
// Does this node mask sibling nodes in front of it?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the grid currently visible?
//
// Does this node clip content outside of its bounds?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Node ID of node to transition to in prototyping
//
// File suffix to append to all filenames
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type ComponentNode struct {
	ID                  string                             `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string                             `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool                               `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                RegularPolygonNodeType             `json:"type"`               // The type of the node
	Effects             []EffectElement                    `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	LayoutGrids         []LayoutGridElement                `json:"layoutGrids"`        // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity             float64                            `json:"opacity"`            // Opacity of the node
	AbsoluteBoundingBox RegularPolygonNodeRectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    *string                            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	BlendMode           BlendMode                          `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	BackgroundColor     EffectColor                        `json:"backgroundColor"`    // Background color of the node
	Constraints         RegularPolygonNodeLayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool                               `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ClipsContent        bool                               `json:"clipsContent"`       // Does this node clip content outside of its bounds?
	ExportSettings      []ExportSettingElement             `json:"exportSettings"`     // An array of export settings representing images to export from node
	PreserveRatio       bool                               `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Children            []PurpleNode                       `json:"children"`           // An array of nodes that are direct children of this node
}

// A comment or reply left by a user
type Comment struct {
	ID       string      `json:"id"`       // Unique identifier for comment
	FileKey  string      `json:"file_key"` // The file in which the comment lives
	ParentID *string     `json:"parent_id"`// If present, the id of the comment to which this is the reply
	User     CommentUser `json:"user"`     // The user who left the comment
}

// A description of a user
//
// The user who left the comment
type CommentUser struct {
	Handle string `json:"handle"` 
	ImgURL string `json:"img_url"`
}

// Enum describing how layer blends with layers below
//
// See type property for effect of this field
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
type BlendMode string
const (
	BlendModeCOLOR BlendMode = "COLOR"
	ColorBurn BlendMode = "COLOR_BURN"
	ColorDodge BlendMode = "COLOR_DODGE"
	Darken BlendMode = "DARKEN"
	Difference BlendMode = "DIFFERENCE"
	Exclusion BlendMode = "EXCLUSION"
	HardLight BlendMode = "HARD_LIGHT"
	Hue BlendMode = "HUE"
	Lighten BlendMode = "LIGHTEN"
	LinearBurn BlendMode = "LINEAR_BURN"
	LinearDodge BlendMode = "LINEAR_DODGE"
	Luminosity BlendMode = "LUMINOSITY"
	Multiply BlendMode = "MULTIPLY"
	Normal BlendMode = "NORMAL"
	Overlay BlendMode = "OVERLAY"
	PassThrough BlendMode = "PASS_THROUGH"
	Saturation BlendMode = "SATURATION"
	Screen BlendMode = "SCREEN"
	SoftLight BlendMode = "SOFT_LIGHT"
)

// * LEFT: Node is laid out relative to left of the containing frame
// * RIGHT: Node is laid out relative to right of the containing frame
// * CENTER: Node is horizontally centered relative to containing frame
// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
// (node stretches with frame)
// * SCALE: Node scales horizontally with containing frame
type Horizontal string
const (
	HorizontalCENTER Horizontal = "CENTER"
	HorizontalLEFT Horizontal = "LEFT"
	HorizontalRIGHT Horizontal = "RIGHT"
	HorizontalSCALE Horizontal = "SCALE"
	LeftRight Horizontal = "LEFT_RIGHT"
)

// * TOP: Node is laid out relative to top of the containing frame
// * BOTTOM: Node is laid out relative to bottom of the containing frame
// * CENTER: Node is vertically centered relative to containing frame
// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
// (node stretches with frame)
// * SCALE: Node scales vertically with containing frame
type Vertical string
const (
	TopBottom Vertical = "TOP_BOTTOM"
	VerticalBOTTOM Vertical = "BOTTOM"
	VerticalCENTER Vertical = "CENTER"
	VerticalSCALE Vertical = "SCALE"
	VerticalTOP Vertical = "TOP"
)

// Type of effect as a string enum
type EffectType string
const (
	BackgroundBlur EffectType = "BACKGROUND_BLUR"
	DropShadow EffectType = "DROP_SHADOW"
	InnerShadow EffectType = "INNER_SHADOW"
	LayerBlur EffectType = "LAYER_BLUR"
)

// Type of constraint to apply; string enum with potential values below
//
// * "SCALE": Scale by value
// * "WIDTH": Scale proportionally and set width to value
// * "HEIGHT": Scale proportionally and set height to value
type ConstraintType string
const (
	Height ConstraintType = "HEIGHT"
	TypeSCALE ConstraintType = "SCALE"
	Width ConstraintType = "WIDTH"
)

// Type of constraint to apply; string enum with potential values below
//
// * "SCALE": Scale by value
// * "WIDTH": Scale proportionally and set width to value
// * "HEIGHT": Scale proportionally and set height to value
type Format string
const (
	Jpg Format = "JPG"
	PNG Format = "PNG"
	SVG Format = "SVG"
)

// (For image paints) Image scaling mode
type ScaleMode string
const (
	Fill ScaleMode = "FILL"
	Fit ScaleMode = "FIT"
	Stretch ScaleMode = "STRETCH"
	Tile ScaleMode = "TILE"
)

// Type of paint as a string enum
type PaintType string
const (
	Emoji PaintType = "EMOJI"
	GradientAngular PaintType = "GRADIENT_ANGULAR"
	GradientDiamond PaintType = "GRADIENT_DIAMOND"
	GradientLinear PaintType = "GRADIENT_LINEAR"
	GradientRadial PaintType = "GRADIENT_RADIAL"
	Image PaintType = "IMAGE"
	Solid PaintType = "SOLID"
)

// Where stroke is drawn relative to the vector outline as a string enum
//
// * INSIDE: draw stroke inside the shape boundary
// * OUTSIDE: draw stroke outside the shape boundary
// * CENTER: draw stroke centered along the shape boundary
type StrokeAlign string
const (
	Inside StrokeAlign = "INSIDE"
	Outside StrokeAlign = "OUTSIDE"
	StrokeAlignCENTER StrokeAlign = "CENTER"
)

// The type of the node
type RegularPolygonNodeType string
const (
	Boolean RegularPolygonNodeType = "BOOLEAN"
	Canvas RegularPolygonNodeType = "CANVAS"
	Component RegularPolygonNodeType = "COMPONENT"
	Document RegularPolygonNodeType = "DOCUMENT"
	Ellipse RegularPolygonNodeType = "ELLIPSE"
	Frame RegularPolygonNodeType = "FRAME"
	Group RegularPolygonNodeType = "GROUP"
	Instance RegularPolygonNodeType = "INSTANCE"
	Line RegularPolygonNodeType = "LINE"
	RegularPolygon RegularPolygonNodeType = "REGULAR_POLYGON"
	Slice RegularPolygonNodeType = "SLICE"
	Star RegularPolygonNodeType = "STAR"
	Text RegularPolygonNodeType = "TEXT"
	TypeRECTANGLE RegularPolygonNodeType = "RECTANGLE"
	TypeVECTOR RegularPolygonNodeType = "VECTOR"
)

// Positioning of grid as a string enum
//
// * MIN: Grid starts at the left or top of the frame
// * MAX: Grid starts at the right or bottom of the frame
// * CENTER: Grid is center aligned
type Alignment string
const (
	AlignmentCENTER Alignment = "CENTER"
	Max Alignment = "MAX"
	Min Alignment = "MIN"
)

// * COLUMNS: Vertical grid
// * ROWS: Horizontal grid
// * GRID: Square grid
type Pattern string
const (
	Columns Pattern = "COLUMNS"
	Grid Pattern = "GRID"
	Rows Pattern = "ROWS"
)

// Horizontal text alignment as string enum
type TextAlignHorizontal string
const (
	Justified TextAlignHorizontal = "JUSTIFIED"
	TextAlignHorizontalCENTER TextAlignHorizontal = "CENTER"
	TextAlignHorizontalLEFT TextAlignHorizontal = "LEFT"
	TextAlignHorizontalRIGHT TextAlignHorizontal = "RIGHT"
)

// Vertical text alignment as string enum
type TextAlignVertical string
const (
	TextAlignVerticalBOTTOM TextAlignVertical = "BOTTOM"
	TextAlignVerticalCENTER TextAlignVertical = "CENTER"
	TextAlignVerticalTOP TextAlignVertical = "TOP"
)
