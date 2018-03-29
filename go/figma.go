// To parse and unparse this JSON data, add this code to your project and do:
//
//    comment, err := UnmarshalComment(bytes)
//    bytes, err = comment.Marshal()
//
//    user, err := UnmarshalUser(bytes)
//    bytes, err = user.Marshal()

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
