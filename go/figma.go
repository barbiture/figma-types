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
	ID string `json:"id"`// Unique identifier for comment
}

// A description of a user
type User struct {
	Handle string `json:"handle"` 
	ImgURL string `json:"img_url"`
}
