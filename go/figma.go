// To parse and unparse this JSON data, add this code to your project and do:
//
//    node, err := UnmarshalNode(bytes)
//    bytes, err = node.Marshal()
//
//    color, err := UnmarshalColor(bytes)
//    bytes, err = color.Marshal()
//
//    global, err := UnmarshalGlobal(bytes)
//    bytes, err = global.Marshal()
//
//    user, err := UnmarshalUser(bytes)
//    bytes, err = user.Marshal()
//
//    blendMode, err := UnmarshalBlendMode(bytes)
//    bytes, err = blendMode.Marshal()
//
//    canvas, err := UnmarshalCanvas(bytes)
//    bytes, err = canvas.Marshal()
//
//    document, err := UnmarshalDocument(bytes)
//    bytes, err = document.Marshal()
//
//    constraint, err := UnmarshalConstraint(bytes)
//    bytes, err = constraint.Marshal()
//
//    comment, err := UnmarshalComment(bytes)
//    bytes, err = comment.Marshal()

package main

import "encoding/json"

func UnmarshalNode(data []byte) (Node, error) {
	var r Node
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Node) Marshal() ([]byte, error) {
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

func UnmarshalUser(data []byte) (User, error) {
	var r User
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *User) Marshal() ([]byte, error) {
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

func UnmarshalConstraint(data []byte) (Constraint, error) {
	var r Constraint
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Constraint) Marshal() ([]byte, error) {
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

// An array of canvases attached to the document
//
// Properties are shared across all nodes
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// See type property for effect of this field
//
// Whether or not the node is visible on the canvas
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type Node struct {
	ID              string     `json:"id"`             // A string uniquely identifying this node within the document
	Name            string     `json:"name"`           // The name given to the node by the user in the tool
	Visible         bool       `json:"visible"`        // Whether or not the node is visible on the canvas
	Type            NodeType   `json:"type"`           // The type of the node
	Children        []NodeNode `json:"children"`       // An array of canvases attached to the document; ; An array of top level layers on the canvas
	BackgroundColor *NodeColor `json:"backgroundColor"`// Background color of the canvas
}

// An RGBA color
//
// Background color of the canvas
type NodeColor struct {
	R float64 `json:"r"`// Red channel value, between 0 and 1
	G float64 `json:"g"`// Green channel value, between 0 and 1
	B float64 `json:"b"`// Blue channel value, between 0 and 1
	A float64 `json:"a"`// Alpha channel value, between 0 and 1
}

// An array of canvases attached to the document
//
// Properties are shared across all nodes
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// See type property for effect of this field
//
// Whether or not the node is visible on the canvas
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
//
// An array of top level layers on the canvas
type NodeNode struct {
	ID              string     `json:"id"`             // A string uniquely identifying this node within the document
	Name            string     `json:"name"`           // The name given to the node by the user in the tool
	Visible         bool       `json:"visible"`        // Whether or not the node is visible on the canvas
	Type            NodeType   `json:"type"`           // The type of the node
	Children        []NodeNode `json:"children"`       // An array of canvases attached to the document; ; An array of top level layers on the canvas
	BackgroundColor *NodeColor `json:"backgroundColor"`// Background color of the canvas
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
	ID      string   `json:"id"`     // A string uniquely identifying this node within the document
	Name    string   `json:"name"`   // The name given to the node by the user in the tool
	Visible bool     `json:"visible"`// Whether or not the node is visible on the canvas
	Type    NodeType `json:"type"`   // The type of the node
}

// A description of a user
type User struct {
	Handle string `json:"handle"` 
	ImgURL string `json:"img_url"`
}

// An array of canvases attached to the document
//
// Properties are shared across all nodes
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// See type property for effect of this field
//
// Whether or not the node is visible on the canvas
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type Canvas struct {
	ID              string       `json:"id"`             // A string uniquely identifying this node within the document
	Name            string       `json:"name"`           // The name given to the node by the user in the tool
	Visible         bool         `json:"visible"`        // Whether or not the node is visible on the canvas
	Type            NodeType     `json:"type"`           // The type of the node
	Children        []PurpleNode `json:"children"`       // An array of top level layers on the canvas
	BackgroundColor *NodeColor   `json:"backgroundColor"`// Background color of the canvas
}

// An array of top level layers on the canvas
//
// An array of canvases attached to the document
//
// Properties are shared across all nodes
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// See type property for effect of this field
//
// Whether or not the node is visible on the canvas
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type PurpleNode struct {
	ID              string     `json:"id"`             // A string uniquely identifying this node within the document
	Name            string     `json:"name"`           // The name given to the node by the user in the tool
	Visible         bool       `json:"visible"`        // Whether or not the node is visible on the canvas
	Type            NodeType   `json:"type"`           // The type of the node
	Children        []NodeNode `json:"children"`       // An array of canvases attached to the document; ; An array of top level layers on the canvas
	BackgroundColor *NodeColor `json:"backgroundColor"`// Background color of the canvas
}

// An array of canvases attached to the document
//
// Properties are shared across all nodes
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// See type property for effect of this field
//
// Whether or not the node is visible on the canvas
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type Document struct {
	ID       string       `json:"id"`      // A string uniquely identifying this node within the document
	Name     string       `json:"name"`    // The name given to the node by the user in the tool
	Visible  bool         `json:"visible"` // Whether or not the node is visible on the canvas
	Type     NodeType     `json:"type"`    // The type of the node
	Children []FluffyNode `json:"children"`// An array of canvases attached to the document
}

// An array of canvases attached to the document
//
// Properties are shared across all nodes
//
// Red channel value, between 0 and 1
//
// Green channel value, between 0 and 1
//
// Blue channel value, between 0 and 1
//
// Alpha channel value, between 0 and 1
//
// See type property for effect of this field
//
// Whether or not the node is visible on the canvas
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// Unique identifier for comment
//
// The file in which the comment lives
//
// If present, the id of the comment to which this is the reply
type FluffyNode struct {
	ID              string     `json:"id"`             // A string uniquely identifying this node within the document
	Name            string     `json:"name"`           // The name given to the node by the user in the tool
	Visible         bool       `json:"visible"`        // Whether or not the node is visible on the canvas
	Type            NodeType   `json:"type"`           // The type of the node
	Children        []NodeNode `json:"children"`       // An array of canvases attached to the document; ; An array of top level layers on the canvas
	BackgroundColor *NodeColor `json:"backgroundColor"`// Background color of the canvas
}

// Sizing constraint for exports
type Constraint struct {
	Type  ConstraintType `json:"type"` // Type of constraint to apply; string enum with potential values below; ; * "SCALE": Scale by value; * "WIDTH": Scale proportionally and set width to value; * "HEIGHT": Scale proportionally and set height to value
	Value *float64       `json:"value"`// See type property for effect of this field
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

// The type of the node
type NodeType string
const (
	Boolean NodeType = "BOOLEAN"
	Component NodeType = "COMPONENT"
	Ellipse NodeType = "ELLIPSE"
	Frame NodeType = "FRAME"
	Group NodeType = "GROUP"
	Instance NodeType = "INSTANCE"
	Line NodeType = "LINE"
	Rectangle NodeType = "RECTANGLE"
	RegularPolygon NodeType = "REGULAR_POLYGON"
	Slice NodeType = "SLICE"
	Star NodeType = "STAR"
	Text NodeType = "TEXT"
	TypeCANVAS NodeType = "CANVAS"
	TypeDOCUMENT NodeType = "DOCUMENT"
	Vector NodeType = "VECTOR"
)

// Enum describing how layer blends with layers below
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

// Type of constraint to apply; string enum with potential values below
//
// * "SCALE": Scale by value
// * "WIDTH": Scale proportionally and set width to value
// * "HEIGHT": Scale proportionally and set height to value
type ConstraintType string
const (
	Height ConstraintType = "HEIGHT"
	Scale ConstraintType = "SCALE"
	Width ConstraintType = "WIDTH"
)
