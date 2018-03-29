// To parse and unparse this JSON data, add this code to your project and do:
//
//    comment, err := UnmarshalComment(bytes)
//    bytes, err = comment.Marshal()
//
//    user, err := UnmarshalUser(bytes)
//    bytes, err = user.Marshal()
//
//    color, err := UnmarshalColor(bytes)
//    bytes, err = color.Marshal()
//
//    constraint, err := UnmarshalConstraint(bytes)
//    bytes, err = constraint.Marshal()

package main

import "encoding/json"

func UnmarshalComment(data []byte) (Comment, error) {
	var r Comment
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Comment) Marshal() ([]byte, error) {
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

func UnmarshalColor(data []byte) (Color, error) {
	var r Color
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Color) Marshal() ([]byte, error) {
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

// A description of a user
type User struct {
	Handle string `json:"handle"` 
	ImgURL string `json:"img_url"`
}

// An RGBA color
type Color struct {
	R float64 `json:"r"`// Red channel value, between 0 and 1
	G float64 `json:"g"`// Green channel value, between 0 and 1
	B float64 `json:"b"`// Blue channel value, between 0 and 1
	A float64 `json:"a"`// Alpha channel value, between 0 and 1
}

// Sizing constraint for exports
type Constraint struct {
	Type  Type     `json:"type"` // Type of constraint to apply; string enum with potential values below; ; * "SCALE": Scale by value; * "WIDTH": Scale proportionally and set width to value; * "HEIGHT": Scale proportionally and set height to value
	Value *float64 `json:"value"`// See type property for effect of this field
}

// Type of constraint to apply; string enum with potential values below
//
// * "SCALE": Scale by value
// * "WIDTH": Scale proportionally and set width to value
// * "HEIGHT": Scale proportionally and set height to value
type Type string
const (
	Height Type = "HEIGHT"
	Scale Type = "SCALE"
	Width Type = "WIDTH"
)
