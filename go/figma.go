// To parse and unparse this JSON data, add this code to your project and do:
//
//    frameOffset, err := UnmarshalFrameOffset(bytes)
//    bytes, err = frameOffset.Marshal()
//
//    vector, err := UnmarshalVector(bytes)
//    bytes, err = vector.Marshal()
//
//    color, err := UnmarshalColor(bytes)
//    bytes, err = color.Marshal()
//
//    colorStop, err := UnmarshalColorStop(bytes)
//    bytes, err = colorStop.Marshal()
//
//    layoutConstraint, err := UnmarshalLayoutConstraint(bytes)
//    bytes, err = layoutConstraint.Marshal()
//
//    user, err := UnmarshalUser(bytes)
//    bytes, err = user.Marshal()
//
//    text, err := UnmarshalText(bytes)
//    bytes, err = text.Marshal()
//
//    frame, err := UnmarshalFrame(bytes)
//    bytes, err = frame.Marshal()
//
//    rectangle, err := UnmarshalRectangle(bytes)
//    bytes, err = rectangle.Marshal()
//
//    layoutGrid, err := UnmarshalLayoutGrid(bytes)
//    bytes, err = layoutGrid.Marshal()
//
//    string, err := UnmarshalString(bytes)
//    bytes, err = string.Marshal()
//
//    effect, err := UnmarshalEffect(bytes)
//    bytes, err = effect.Marshal()
//
//    slice, err := UnmarshalSlice(bytes)
//    bytes, err = slice.Marshal()
//
//    star, err := UnmarshalStar(bytes)
//    bytes, err = star.Marshal()
//
//    line, err := UnmarshalLine(bytes)
//    bytes, err = line.Marshal()
//
//    blendMode, err := UnmarshalBlendMode(bytes)
//    bytes, err = blendMode.Marshal()
//
//    instance, err := UnmarshalInstance(bytes)
//    bytes, err = instance.Marshal()
//
//    commentsResponse, err := UnmarshalCommentsResponse(bytes)
//    bytes, err = commentsResponse.Marshal()
//
//    vector2D, err := UnmarshalVector2D(bytes)
//    bytes, err = vector2D.Marshal()
//
//    typeStyle, err := UnmarshalTypeStyle(bytes)
//    bytes, err = typeStyle.Marshal()
//
//    booleanGroup, err := UnmarshalBooleanGroup(bytes)
//    bytes, err = booleanGroup.Marshal()
//
//    canvas, err := UnmarshalCanvas(bytes)
//    bytes, err = canvas.Marshal()
//
//    document, err := UnmarshalDocument(bytes)
//    bytes, err = document.Marshal()
//
//    nodeType, err := UnmarshalNodeType(bytes)
//    bytes, err = nodeType.Marshal()
//
//    exportSetting, err := UnmarshalExportSetting(bytes)
//    bytes, err = exportSetting.Marshal()
//
//    component, err := UnmarshalComponent(bytes)
//    bytes, err = component.Marshal()
//
//    fileResponse, err := UnmarshalFileResponse(bytes)
//    bytes, err = fileResponse.Marshal()
//
//    constraint, err := UnmarshalConstraint(bytes)
//    bytes, err = constraint.Marshal()
//
//    paint, err := UnmarshalPaint(bytes)
//    bytes, err = paint.Marshal()
//
//    regularPolygon, err := UnmarshalRegularPolygon(bytes)
//    bytes, err = regularPolygon.Marshal()
//
//    ellipse, err := UnmarshalEllipse(bytes)
//    bytes, err = ellipse.Marshal()
//
//    comment, err := UnmarshalComment(bytes)
//    bytes, err = comment.Marshal()
//
//    group, err := UnmarshalGroup(bytes)
//    bytes, err = group.Marshal()

package main

import "encoding/json"

func UnmarshalFrameOffset(data []byte) (FrameOffset, error) {
	var r FrameOffset
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *FrameOffset) Marshal() ([]byte, error) {
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

func UnmarshalColorStop(data []byte) (ColorStop, error) {
	var r ColorStop
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ColorStop) Marshal() ([]byte, error) {
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

func UnmarshalUser(data []byte) (User, error) {
	var r User
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *User) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalText(data []byte) (Text, error) {
	var r Text
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Text) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalFrame(data []byte) (Frame, error) {
	var r Frame
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Frame) Marshal() ([]byte, error) {
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

type String []string

func UnmarshalString(data []byte) (String, error) {
	var r String
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *String) Marshal() ([]byte, error) {
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

func UnmarshalSlice(data []byte) (Slice, error) {
	var r Slice
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Slice) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalStar(data []byte) (Star, error) {
	var r Star
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Star) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalLine(data []byte) (Line, error) {
	var r Line
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Line) Marshal() ([]byte, error) {
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

func UnmarshalInstance(data []byte) (Instance, error) {
	var r Instance
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Instance) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalCommentsResponse(data []byte) (CommentsResponse, error) {
	var r CommentsResponse
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *CommentsResponse) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalVector2D(data []byte) (Vector2D, error) {
	var r Vector2D
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Vector2D) Marshal() ([]byte, error) {
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

func UnmarshalBooleanGroup(data []byte) (BooleanGroup, error) {
	var r BooleanGroup
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *BooleanGroup) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalCanvas(data []byte) (Canvas, error) {
	var r Canvas
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Canvas) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalDocument(data []byte) (Document, error) {
	var r Document
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Document) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalNodeType(data []byte) (NodeType, error) {
	var r NodeType
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *NodeType) Marshal() ([]byte, error) {
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

func UnmarshalComponent(data []byte) (Component, error) {
	var r Component
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Component) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalFileResponse(data []byte) (FileResponse, error) {
	var r FileResponse
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *FileResponse) Marshal() ([]byte, error) {
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

func UnmarshalRegularPolygon(data []byte) (RegularPolygon, error) {
	var r RegularPolygon
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *RegularPolygon) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalEllipse(data []byte) (Ellipse, error) {
	var r Ellipse
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Ellipse) Marshal() ([]byte, error) {
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

func UnmarshalGroup(data []byte) (Group, error) {
	var r Group
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Group) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

// A relative offset within a frame
type FrameOffset struct {
	NodeID     []string `json:"node_id"`    // Unique id specifying the frame.
	NodeOffset Vector2D `json:"node_offset"`// 2d vector offset within the frame.
}

// This field contains three vectors, each of which are a position in
// normalized object space (normalized object space is if the top left
// corner of the bounding box of the object is (0, 0) and the bottom
// right is (1,1)). The first position corresponds to the start of the
// gradient (value 0 for the purposes of calculating gradient stops),
// the second position is the end of the gradient (value 1), and the
// third handle position determines the width of the gradient (only
// relevant for non-linear gradients).
//
// A 2d vector
//
// 2d vector offset within the frame.
type Vector2D struct {
	X float64 `json:"x"`// X coordinate of the vector
	Y float64 `json:"y"`// Y coordinate of the vector
}

// A vector network, consisting of vertices and edges
type Vector struct {
	Effects             []Effect         `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	Opacity             float64          `json:"opacity"`            // Opacity of the node
	Name                string           `json:"name"`               // the name given to the node by the user in the tool.
	StrokeAlign         StrokeAlign      `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	StrokeWeight        float64          `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []Paint          `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox Rectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    string           `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool             `json:"visible"`            // whether or not the node is visible on the canvas
	BlendMode           BlendMode        `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Constraints         LayoutConstraint `json:"constraints"`        // Horizontal and vertical layout constraints for node
	IsMask              bool             `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSetting  `json:"exportSettings"`     // An array of export settings representing images to export from node
	Type                NodeType         `json:"type"`               // the type of the node, refer to table below for details
	ID                  string           `json:"id"`                 // a string uniquely identifying this node within the document
	Strokes             []Paint          `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool             `json:"preserveRatio"`      // Keep height and width constrained to same ratio
}

// Bounding box of the node in absolute space coordinates
//
// A rectangle
type Rectangle struct {
	Effects             []Effect         `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	CornerRadius        float64          `json:"cornerRadius"`       // Radius of each corner of the rectangle
	Opacity             float64          `json:"opacity"`            // Opacity of the node
	Name                string           `json:"name"`               // the name given to the node by the user in the tool.
	StrokeAlign         StrokeAlign      `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	StrokeWeight        float64          `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []Paint          `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox Rectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    string           `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool             `json:"visible"`            // whether or not the node is visible on the canvas
	BlendMode           BlendMode        `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Constraints         LayoutConstraint `json:"constraints"`        // Horizontal and vertical layout constraints for node
	IsMask              bool             `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSetting  `json:"exportSettings"`     // An array of export settings representing images to export from node
	Type                NodeType         `json:"type"`               // the type of the node, refer to table below for details
	ID                  string           `json:"id"`                 // a string uniquely identifying this node within the document
	Strokes             []Paint          `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool             `json:"preserveRatio"`      // Keep height and width constrained to same ratio
}

// Horizontal and vertical layout constraints for node
//
// Layout constraint relative to containing Frame
type LayoutConstraint struct {
	Horizontal Horizontal `json:"horizontal"`// Horizontal constraint as an enum; "LEFT": Node is laid out relative to left of the containing frame; "RIGHT": Node is laid out relative to right of the containing frame; "CENTER": Node is horizontally centered relative to containing frame; "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame; (node stretches with frame); "SCALE": Node scales horizontally with containing frame
	Vertical   Vertical   `json:"vertical"`  // Vertical constraint as an enum; "TOP": Node is laid out relative to top of the containing frame; "BOTTOM": Node is laid out relative to bottom of the containing frame; "CENTER": Node is vertically centered relative to containing frame; "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame; (node stretches with frame); "SCALE": Node scales vertically with containing frame
}

// An array of effects attached to this node
// (see effects sectionfor more details)
//
// A visual effect such as a shadow or blur
type Effect struct {
	BlendMode *BlendMode `json:"blendMode"`
	Color     *Color     `json:"color"`    
	Offset    *Vector2D  `json:"offset"`   
	Radius    float64    `json:"radius"`   // Radius of the blur effect (applies to shadows as well)
	Type      EffectType `json:"type"`     // Type of effect as a string enum
	Visible   bool       `json:"visible"`  // Is the effect active?
}

// Solid color of the paint
//
// An RGBA color
//
// Color of the grid
//
// Background color of the node
//
// Color attached to corresponding position
//
// Background color of the canvas
type Color struct {
	A float64 `json:"a"`// Alpha channel value, between 0 and 1
	B float64 `json:"b"`// Blue channel value, between 0 and 1
	G float64 `json:"g"`// Green channel value, between 0 and 1
	R float64 `json:"r"`// Red channel value, between 0 and 1
}

// An array of export settings representing images to export from node
//
// Format and size to export an asset at
//
// An array of export settings representing images to export from the canvas
//
// An array of export settings representing images to export from this node
type ExportSetting struct {
	Constraint Constraint `json:"constraint"`// Constraint that determines sizing of exported asset
	Format     Format     `json:"format"`    // Image type, string enum
	Suffix     string     `json:"suffix"`    // File suffix to append to all filenames
}

// Constraint that determines sizing of exported asset
//
// Sizing constraint for exports
type Constraint struct {
	Type  ConstraintType `json:"type"` // Type of constraint to apply; string enum with potential values below; "SCALE": Scale by value; "WIDTH": Scale proportionally and set width to value; "HEIGHT": Scale proportionally and set height to value
	Value float64        `json:"value"`// See type property for effect of this field
}

// A solid color, gradient, or image texture that can be applied as fills or strokes
//
// An array of stroke paints applied to the node
//
// An array of fill paints applied to the node
//
// Paints applied to characters
type Paint struct {
	Color                   *Color      `json:"color"`                  // Solid color of the paint
	GradientHandlePositions []Vector2D  `json:"gradientHandlePositions"`// This field contains three vectors, each of which are a position in; normalized object space (normalized object space is if the top left; corner of the bounding box of the object is (0, 0) and the bottom; right is (1,1)). The first position corresponds to the start of the; gradient (value 0 for the purposes of calculating gradient stops),; the second position is the end of the gradient (value 1), and the; third handle position determines the width of the gradient (only; relevant for non-linear gradients).
	GradientStops           []ColorStop `json:"gradientStops"`          // Positions of key points along the gradient axis with the colors; anchored there. Colors along the gradient are interpolated smoothly; between neighboring gradient stops.
	Opacity                 float64     `json:"opacity"`                // Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this)
	ScaleMode               *string     `json:"scaleMode"`              // Image scaling mode
	Type                    PaintType   `json:"type"`                   // Type of paint as a string enum
	Visible                 bool        `json:"visible"`                // Is the paint enabled?
}

// Positions of key points along the gradient axis with the colors
// anchored there. Colors along the gradient are interpolated smoothly
// between neighboring gradient stops.
//
// A position color pair representing a gradient stop
type ColorStop struct {
	Color    Color   `json:"color"`   // Color attached to corresponding position
	Position float64 `json:"position"`// Value between 0 and 1 representing position along gradient axis
}

// A text box
type Text struct {
	Effects                 []Effect         `json:"effects"`                // An array of effects attached to this node; (see effects sectionfor more details)
	Characters              string           `json:"characters"`             // Text contained within text box
	Opacity                 float64          `json:"opacity"`                // Opacity of the node
	Name                    string           `json:"name"`                   // the name given to the node by the user in the tool.
	StrokeAlign             StrokeAlign      `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	StrokeWeight            float64          `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []Paint          `json:"fills"`                  // An array of fill paints applied to the node
	AbsoluteBoundingBox     Rectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	StyleOverrideTable      []TypeStyle      `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	Style                   TypeStyle        `json:"style"`                  // Style of text including font family and weight (see type style; section for more information)
	TransitionNodeID        string           `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	Visible                 bool             `json:"visible"`                // whether or not the node is visible on the canvas
	BlendMode               BlendMode        `json:"blendMode"`              // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Constraints             LayoutConstraint `json:"constraints"`            // Horizontal and vertical layout constraints for node
	IsMask                  bool             `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ExportSettings          []ExportSetting  `json:"exportSettings"`         // An array of export settings representing images to export from node
	Type                    NodeType         `json:"type"`                   // the type of the node, refer to table below for details
	ID                      string           `json:"id"`                     // a string uniquely identifying this node within the document
	Strokes                 []Paint          `json:"strokes"`                // An array of stroke paints applied to the node
	PreserveRatio           bool             `json:"preserveRatio"`          // Keep height and width constrained to same ratio
	CharacterStyleOverrides []float64        `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style
}

// Map from ID to TypeStyle for looking up style overrides
//
// Metadata for character formatting
//
// Style of text including font family and weight (see type style
// section for more information)
type TypeStyle struct {
	LineHeightPx        float64             `json:"lineHeightPx"`       // Line height in px
	FontPostScriptName  string              `json:"fontPostScriptName"` // PostScript font name
	FontWeight          float64             `json:"fontWeight"`         // Numeric font weight
	LineHeightPercent   float64             `json:"lineHeightPercent"`  // Line height as a percentage of normal line height
	TextAlignVertical   TextAlignVertical   `json:"textAlignVertical"`  // Vertical text alignment as string enum
	FontSize            float64             `json:"fontSize"`           // Font size in px
	Italic              bool                `json:"italic"`             // Is text italicized?
	Fills               []Paint             `json:"fills"`              // Paints applied to characters
	FontFamily          string              `json:"fontFamily"`         // Font family of text (standard name)
	TextAlignHorizontal TextAlignHorizontal `json:"textAlignHorizontal"`// Horizontal text alignment as string enum
	LetterSpacing       float64             `json:"letterSpacing"`      // Space between characters in px
}

// A node of fixed size containing other nodes
type Frame struct {
	Effects             []Effect          `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	LayoutGrids         []LayoutGrid      `json:"layoutGrids"`        // An array of layout grids attached to this node (see layout grids section; for more details). GROUP nodes do not have this attribute
	Opacity             float64           `json:"opacity"`            // Opacity of the node
	Name                string            `json:"name"`               // the name given to the node by the user in the tool.
	AbsoluteBoundingBox Rectangle         `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    string            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool              `json:"visible"`            // whether or not the node is visible on the canvas
	BlendMode           BlendMode         `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	BackgroundColor     Color             `json:"backgroundColor"`    // Background color of the node
	Constraints         LayoutConstraint  `json:"constraints"`        // Horizontal and vertical layout constraints for node
	IsMask              bool              `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ClipsContent        bool              `json:"clipsContent"`       // Does this node clip content outside of its bounds?
	ExportSettings      []ExportSetting   `json:"exportSettings"`     // An array of export settings representing images to export from node
	Type                NodeType          `json:"type"`               // the type of the node, refer to table below for details
	ID                  string            `json:"id"`                 // a string uniquely identifying this node within the document
	PreserveRatio       bool              `json:"preserveRatio"`      // Keep height and width constrained to same ratio
	Children            []DocumentElement `json:"children"`           // An array of nodes that are direct children of this node
}

// An array of nodes that are direct children of this node
//
// An array of nodes that are being boolean operated on
//
// An array of top level layers on the canvas
//
// An array of canvases attached to the document
//
// Node Properties
// The root node
//
// The root node within the document
//
// Represents a single page
//
// A node of fixed size containing other nodes
//
// A logical grouping of nodes
//
// A vector network, consisting of vertices and edges
//
// A group that has a boolean operation applied to it
//
// A regular star shape
//
// A straight line
//
// An ellipse
//
// A regular n-sided polygon
//
// Bounding box of the node in absolute space coordinates
//
// A rectangle
//
// A text box
//
// A rectangular region of the canvas that can be exported
//
// A node that can have instances created of it that share the same properties
//
// An instance of a component, changes to the component result in the same
// changes applied to the instance
type DocumentElement struct {
	Children                []DocumentElement `json:"children"`               // An array of canvases attached to the document; ; An array of top level layers on the canvas; ; An array of nodes that are direct children of this node; ; An array of nodes that are being boolean operated on
	ID                      string            `json:"id"`                     // a string uniquely identifying this node within the document
	Name                    string            `json:"name"`                   // the name given to the node by the user in the tool.
	Type                    NodeType          `json:"type"`                   // the type of the node, refer to table below for details
	Visible                 bool              `json:"visible"`                // whether or not the node is visible on the canvas
	BackgroundColor         *Color            `json:"backgroundColor"`        // Background color of the canvas; ; Background color of the node
	ExportSettings          []ExportSetting   `json:"exportSettings"`         // An array of export settings representing images to export from the canvas; ; An array of export settings representing images to export from node; ; An array of export settings representing images to export from this node
	Effects                 []Effect          `json:"effects"`                // An array of effects attached to this node; (see effects sectionfor more details)
	LayoutGrids             []LayoutGrid      `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section; for more details). GROUP nodes do not have this attribute
	Opacity                 *float64          `json:"opacity"`                // Opacity of the node
	AbsoluteBoundingBox     *Rectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	TransitionNodeID        *string           `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	BlendMode               *BlendMode        `json:"blendMode"`              // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Constraints             *LayoutConstraint `json:"constraints"`            // Horizontal and vertical layout constraints for node
	IsMask                  *bool             `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ClipsContent            *bool             `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	PreserveRatio           *bool             `json:"preserveRatio"`          // Keep height and width constrained to same ratio
	StrokeAlign             *StrokeAlign      `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	StrokeWeight            *float64          `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []Paint           `json:"fills"`                  // An array of fill paints applied to the node
	Strokes                 []Paint           `json:"strokes"`                // An array of stroke paints applied to the node
	CornerRadius            *float64          `json:"cornerRadius"`           // Radius of each corner of the rectangle
	Characters              *string           `json:"characters"`             // Text contained within text box
	StyleOverrideTable      []TypeStyle       `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	Style                   *TypeStyle        `json:"style"`                  // Style of text including font family and weight (see type style; section for more information)
	CharacterStyleOverrides []float64         `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style
	ComponentID             *string           `json:"componentId"`            // ID of component that this instance came from, refers to components; table (see endpoints section below)
}

// An array of layout grids attached to this node (see layout grids section
// for more details). GROUP nodes do not have this attribute
//
// Guides to align and place objects within a frame
type LayoutGrid struct {
	Alignment   Alignment `json:"alignment"`  // Positioning of grid as a string enum; "MIN": Grid starts at the left or top of the frame; "MAX": Grid starts at the right or bottom of the frame; "CENTER": Grid is center aligned
	Color       Color     `json:"color"`      // Color of the grid
	Count       float64   `json:"count"`      // Number of columns or rows
	GutterSize  float64   `json:"gutterSize"` // Spacing in between columns and rows
	Offset      float64   `json:"offset"`     // Spacing before the first column or row
	Pattern     Pattern   `json:"pattern"`    // Orientation of the grid as a string enum; "COLUMNS": Vertical grid; "ROWS": Horizontal grid; "GRID": Square grid
	SectionSize float64   `json:"sectionSize"`// Width of column grid or height of row grid or square grid spacing
	Visible     bool      `json:"visible"`    // Is the grid currently visible?
}

// A rectangular region of the canvas that can be exported
type Slice struct {
	AbsoluteBoundingBox Rectangle       `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	ExportSettings      []ExportSetting `json:"exportSettings"`     // An array of export settings representing images to export from this node
	ID                  string          `json:"id"`                 // a string uniquely identifying this node within the document
	Name                string          `json:"name"`               // the name given to the node by the user in the tool.
	Type                NodeType        `json:"type"`               // the type of the node, refer to table below for details
	Visible             bool            `json:"visible"`            // whether or not the node is visible on the canvas
}

// A regular star shape
type Star struct {
	Effects             []Effect         `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	Opacity             float64          `json:"opacity"`            // Opacity of the node
	Name                string           `json:"name"`               // the name given to the node by the user in the tool.
	StrokeAlign         StrokeAlign      `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	StrokeWeight        float64          `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []Paint          `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox Rectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    string           `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool             `json:"visible"`            // whether or not the node is visible on the canvas
	BlendMode           BlendMode        `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Constraints         LayoutConstraint `json:"constraints"`        // Horizontal and vertical layout constraints for node
	IsMask              bool             `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSetting  `json:"exportSettings"`     // An array of export settings representing images to export from node
	Type                NodeType         `json:"type"`               // the type of the node, refer to table below for details
	ID                  string           `json:"id"`                 // a string uniquely identifying this node within the document
	Strokes             []Paint          `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool             `json:"preserveRatio"`      // Keep height and width constrained to same ratio
}

// A straight line
type Line struct {
	Effects             []Effect         `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	Opacity             float64          `json:"opacity"`            // Opacity of the node
	Name                string           `json:"name"`               // the name given to the node by the user in the tool.
	StrokeAlign         StrokeAlign      `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	StrokeWeight        float64          `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []Paint          `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox Rectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    string           `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool             `json:"visible"`            // whether or not the node is visible on the canvas
	BlendMode           BlendMode        `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Constraints         LayoutConstraint `json:"constraints"`        // Horizontal and vertical layout constraints for node
	IsMask              bool             `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSetting  `json:"exportSettings"`     // An array of export settings representing images to export from node
	Type                NodeType         `json:"type"`               // the type of the node, refer to table below for details
	ID                  string           `json:"id"`                 // a string uniquely identifying this node within the document
	Strokes             []Paint          `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool             `json:"preserveRatio"`      // Keep height and width constrained to same ratio
}

// An instance of a component, changes to the component result in the same
// changes applied to the instance
type Instance struct {
	Effects             []Effect          `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	LayoutGrids         []LayoutGrid      `json:"layoutGrids"`        // An array of layout grids attached to this node (see layout grids section; for more details). GROUP nodes do not have this attribute
	Opacity             float64           `json:"opacity"`            // Opacity of the node
	Name                string            `json:"name"`               // the name given to the node by the user in the tool.
	AbsoluteBoundingBox Rectangle         `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    string            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool              `json:"visible"`            // whether or not the node is visible on the canvas
	BlendMode           BlendMode         `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	BackgroundColor     Color             `json:"backgroundColor"`    // Background color of the node
	Constraints         LayoutConstraint  `json:"constraints"`        // Horizontal and vertical layout constraints for node
	IsMask              bool              `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ClipsContent        bool              `json:"clipsContent"`       // Does this node clip content outside of its bounds?
	ExportSettings      []ExportSetting   `json:"exportSettings"`     // An array of export settings representing images to export from node
	ComponentID         string            `json:"componentId"`        // ID of component that this instance came from, refers to components; table (see endpoints section below)
	Type                NodeType          `json:"type"`               // the type of the node, refer to table below for details
	ID                  string            `json:"id"`                 // a string uniquely identifying this node within the document
	PreserveRatio       bool              `json:"preserveRatio"`      // Keep height and width constrained to same ratio
	Children            []DocumentElement `json:"children"`           // An array of nodes that are direct children of this node
}

// GET /v1/files/:key/comments
//
// > Description
// A list of comments left on the file.
//
// > Path parameters
// key String
// File to get comments from
type CommentsResponse struct {
	Comments []Comment `json:"comments"`
}

// A comment or reply left by a user
type Comment struct {
	Message    string     `json:"message"`    // (MISSING IN DOCS); The content of the comment
	CreatedAt  string     `json:"created_at"` // Enables basic storage and retrieval of dates and times.
	User       User       `json:"user"`       // The user who left the comment
	OrderID    float64    `json:"order_id"`   // Only set for top level comments. The number displayed with the; comment in the UI
	ParentID   string     `json:"parent_id"`  // If present, the id of the comment to which this is the reply
	ClientMeta ClientMeta `json:"client_meta"`
	ResolvedAt string     `json:"resolved_at"`// Enables basic storage and retrieval of dates and times.
	ID         string     `json:"id"`         // Unique identifier for comment
	FileKey    string     `json:"file_key"`   // The file in which the comment lives
}

// This field contains three vectors, each of which are a position in
// normalized object space (normalized object space is if the top left
// corner of the bounding box of the object is (0, 0) and the bottom
// right is (1,1)). The first position corresponds to the start of the
// gradient (value 0 for the purposes of calculating gradient stops),
// the second position is the end of the gradient (value 1), and the
// third handle position determines the width of the gradient (only
// relevant for non-linear gradients).
//
// A 2d vector
//
// 2d vector offset within the frame.
//
// A relative offset within a frame
type ClientMeta struct {
	X          *float64  `json:"x"`          // X coordinate of the vector
	Y          *float64  `json:"y"`          // Y coordinate of the vector
	NodeID     []string  `json:"node_id"`    // Unique id specifying the frame.
	NodeOffset *Vector2D `json:"node_offset"`// 2d vector offset within the frame.
}

// The user who left the comment
//
// A description of a user
type User struct {
	Handle string `json:"handle"` 
	ImgURL string `json:"img_url"`
}

// A group that has a boolean operation applied to it
type BooleanGroup struct {
	Effects             []Effect          `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	Opacity             float64           `json:"opacity"`            // Opacity of the node
	Name                string            `json:"name"`               // the name given to the node by the user in the tool.
	StrokeAlign         StrokeAlign       `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	StrokeWeight        float64           `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []Paint           `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox Rectangle         `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    string            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool              `json:"visible"`            // whether or not the node is visible on the canvas
	BlendMode           BlendMode         `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Constraints         LayoutConstraint  `json:"constraints"`        // Horizontal and vertical layout constraints for node
	IsMask              bool              `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSetting   `json:"exportSettings"`     // An array of export settings representing images to export from node
	Type                NodeType          `json:"type"`               // the type of the node, refer to table below for details
	ID                  string            `json:"id"`                 // a string uniquely identifying this node within the document
	Strokes             []Paint           `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool              `json:"preserveRatio"`      // Keep height and width constrained to same ratio
	Children            []DocumentElement `json:"children"`           // An array of nodes that are being boolean operated on
}

// Represents a single page
type Canvas struct {
	BackgroundColor Color             `json:"backgroundColor"`// Background color of the canvas
	Children        []DocumentElement `json:"children"`       // An array of top level layers on the canvas
	ExportSettings  []ExportSetting   `json:"exportSettings"` // An array of export settings representing images to export from the canvas
	ID              string            `json:"id"`             // a string uniquely identifying this node within the document
	Name            string            `json:"name"`           // the name given to the node by the user in the tool.
	Type            NodeType          `json:"type"`           // the type of the node, refer to table below for details
	Visible         bool              `json:"visible"`        // whether or not the node is visible on the canvas
}

// GET /v1/files/:key
//
// > Description
//
// Returns the document refered to by :key as a JSON object. The file key can be parsed from
// any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
// contains a Node of type DOCUMENT.
//
// The "components" key contains a mapping from node IDs to component metadata. This is to
// help you determine which components each instance comes from. Currently the only piece of
// metadata available on components is the name of the component, but more properties will
// be forthcoming.
//
// > Path parameters
//
// key String
// File to export JSON from
type FileResponse struct {
	Components    map[string]Component `json:"components"`   // A mapping from node IDs to component metadata. This is to help you determine which; components each instance comes from. Currently the only piece of metadata available on; components is the name of the component, but more properties will be forthcoming.
	Document      Document             `json:"document"`     // The root node within the document
	SchemaVersion float64              `json:"schemaVersion"`
}

// A node that can have instances created of it that share the same properties
type Component struct {
	Effects             []Effect          `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	LayoutGrids         []LayoutGrid      `json:"layoutGrids"`        // An array of layout grids attached to this node (see layout grids section; for more details). GROUP nodes do not have this attribute
	Opacity             float64           `json:"opacity"`            // Opacity of the node
	Name                string            `json:"name"`               // the name given to the node by the user in the tool.
	AbsoluteBoundingBox Rectangle         `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    string            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool              `json:"visible"`            // whether or not the node is visible on the canvas
	BlendMode           BlendMode         `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	BackgroundColor     Color             `json:"backgroundColor"`    // Background color of the node
	Constraints         LayoutConstraint  `json:"constraints"`        // Horizontal and vertical layout constraints for node
	IsMask              bool              `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ClipsContent        bool              `json:"clipsContent"`       // Does this node clip content outside of its bounds?
	ExportSettings      []ExportSetting   `json:"exportSettings"`     // An array of export settings representing images to export from node
	Type                NodeType          `json:"type"`               // the type of the node, refer to table below for details
	ID                  string            `json:"id"`                 // a string uniquely identifying this node within the document
	PreserveRatio       bool              `json:"preserveRatio"`      // Keep height and width constrained to same ratio
	Children            []DocumentElement `json:"children"`           // An array of nodes that are direct children of this node
}

// Node Properties
// The root node
//
// The root node within the document
type Document struct {
	Children []DocumentElement `json:"children"`// An array of canvases attached to the document
	ID       string            `json:"id"`      // a string uniquely identifying this node within the document
	Name     string            `json:"name"`    // the name given to the node by the user in the tool.
	Type     NodeType          `json:"type"`    // the type of the node, refer to table below for details
	Visible  bool              `json:"visible"` // whether or not the node is visible on the canvas
}

// A regular n-sided polygon
type RegularPolygon struct {
	Effects             []Effect         `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	Opacity             float64          `json:"opacity"`            // Opacity of the node
	Name                string           `json:"name"`               // the name given to the node by the user in the tool.
	StrokeAlign         StrokeAlign      `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	StrokeWeight        float64          `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []Paint          `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox Rectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    string           `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool             `json:"visible"`            // whether or not the node is visible on the canvas
	BlendMode           BlendMode        `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Constraints         LayoutConstraint `json:"constraints"`        // Horizontal and vertical layout constraints for node
	IsMask              bool             `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSetting  `json:"exportSettings"`     // An array of export settings representing images to export from node
	Type                NodeType         `json:"type"`               // the type of the node, refer to table below for details
	ID                  string           `json:"id"`                 // a string uniquely identifying this node within the document
	Strokes             []Paint          `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool             `json:"preserveRatio"`      // Keep height and width constrained to same ratio
}

// An ellipse
type Ellipse struct {
	Effects             []Effect         `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	Opacity             float64          `json:"opacity"`            // Opacity of the node
	Name                string           `json:"name"`               // the name given to the node by the user in the tool.
	StrokeAlign         StrokeAlign      `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	StrokeWeight        float64          `json:"strokeWeight"`       // The weight of strokes on the node
	Fills               []Paint          `json:"fills"`              // An array of fill paints applied to the node
	AbsoluteBoundingBox Rectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    string           `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool             `json:"visible"`            // whether or not the node is visible on the canvas
	BlendMode           BlendMode        `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Constraints         LayoutConstraint `json:"constraints"`        // Horizontal and vertical layout constraints for node
	IsMask              bool             `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ExportSettings      []ExportSetting  `json:"exportSettings"`     // An array of export settings representing images to export from node
	Type                NodeType         `json:"type"`               // the type of the node, refer to table below for details
	ID                  string           `json:"id"`                 // a string uniquely identifying this node within the document
	Strokes             []Paint          `json:"strokes"`            // An array of stroke paints applied to the node
	PreserveRatio       bool             `json:"preserveRatio"`      // Keep height and width constrained to same ratio
}

// A logical grouping of nodes
type Group struct {
	Effects             []Effect          `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	LayoutGrids         []LayoutGrid      `json:"layoutGrids"`        // An array of layout grids attached to this node (see layout grids section; for more details). GROUP nodes do not have this attribute
	Opacity             float64           `json:"opacity"`            // Opacity of the node
	Name                string            `json:"name"`               // the name given to the node by the user in the tool.
	AbsoluteBoundingBox Rectangle         `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	TransitionNodeID    string            `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool              `json:"visible"`            // whether or not the node is visible on the canvas
	BlendMode           BlendMode         `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	BackgroundColor     Color             `json:"backgroundColor"`    // Background color of the node
	Constraints         LayoutConstraint  `json:"constraints"`        // Horizontal and vertical layout constraints for node
	IsMask              bool              `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ClipsContent        bool              `json:"clipsContent"`       // Does this node clip content outside of its bounds?
	ExportSettings      []ExportSetting   `json:"exportSettings"`     // An array of export settings representing images to export from node
	Type                NodeType          `json:"type"`               // the type of the node, refer to table below for details
	ID                  string            `json:"id"`                 // a string uniquely identifying this node within the document
	PreserveRatio       bool              `json:"preserveRatio"`      // Keep height and width constrained to same ratio
	Children            []DocumentElement `json:"children"`           // An array of nodes that are direct children of this node
}

// How this node blends with nodes behind it in the scene
// (see blend mode section for more details)
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

// Horizontal constraint as an enum
// "LEFT": Node is laid out relative to left of the containing frame
// "RIGHT": Node is laid out relative to right of the containing frame
// "CENTER": Node is horizontally centered relative to containing frame
// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
// (node stretches with frame)
// "SCALE": Node scales horizontally with containing frame
type Horizontal string
const (
	HorizontalCENTER Horizontal = "CENTER"
	HorizontalLEFT Horizontal = "LEFT"
	HorizontalRIGHT Horizontal = "RIGHT"
	HorizontalSCALE Horizontal = "SCALE"
	LeftRight Horizontal = "LEFT_RIGHT"
)

// Vertical constraint as an enum
// "TOP": Node is laid out relative to top of the containing frame
// "BOTTOM": Node is laid out relative to bottom of the containing frame
// "CENTER": Node is vertically centered relative to containing frame
// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
// (node stretches with frame)
// "SCALE": Node scales vertically with containing frame
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
// "SCALE": Scale by value
// "WIDTH": Scale proportionally and set width to value
// "HEIGHT": Scale proportionally and set height to value
type ConstraintType string
const (
	Height ConstraintType = "HEIGHT"
	TypeSCALE ConstraintType = "SCALE"
	Width ConstraintType = "WIDTH"
)

// Image type, string enum
type Format string
const (
	Jpg Format = "JPG"
	PNG Format = "PNG"
	SVG Format = "SVG"
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
// "INSIDE": draw stroke inside the shape boundary
// "OUTSIDE": draw stroke outside the shape boundary
// "CENTER": draw stroke centered along the shape boundary
type StrokeAlign string
const (
	Inside StrokeAlign = "INSIDE"
	Outside StrokeAlign = "OUTSIDE"
	StrokeAlignCENTER StrokeAlign = "CENTER"
)

// the type of the node, refer to table below for details
type NodeType string
const (
	Boolean NodeType = "BOOLEAN"
	TypeCANVAS NodeType = "CANVAS"
	TypeCOMPONENT NodeType = "COMPONENT"
	TypeDOCUMENT NodeType = "DOCUMENT"
	TypeELLIPSE NodeType = "ELLIPSE"
	TypeFRAME NodeType = "FRAME"
	TypeGROUP NodeType = "GROUP"
	TypeINSTANCE NodeType = "INSTANCE"
	TypeLINE NodeType = "LINE"
	TypeRECTANGLE NodeType = "RECTANGLE"
	TypeREGULARPOLYGON NodeType = "REGULAR_POLYGON"
	TypeSLICE NodeType = "SLICE"
	TypeSTAR NodeType = "STAR"
	TypeTEXT NodeType = "TEXT"
	TypeVECTOR NodeType = "VECTOR"
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

// Positioning of grid as a string enum
// "MIN": Grid starts at the left or top of the frame
// "MAX": Grid starts at the right or bottom of the frame
// "CENTER": Grid is center aligned
type Alignment string
const (
	AlignmentCENTER Alignment = "CENTER"
	Max Alignment = "MAX"
	Min Alignment = "MIN"
)

// Orientation of the grid as a string enum
// "COLUMNS": Vertical grid
// "ROWS": Horizontal grid
// "GRID": Square grid
type Pattern string
const (
	Columns Pattern = "COLUMNS"
	Grid Pattern = "GRID"
	Rows Pattern = "ROWS"
)
