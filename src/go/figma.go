// To parse and unparse this JSON data, add this code to your project and do:
//
//    figma, err := UnmarshalFigma(bytes)
//    bytes, err = figma.Marshal()

package main

import "encoding/json"

func UnmarshalFigma(data []byte) (Figma, error) {
	var r Figma
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Figma) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

// A geographical coordinate
type Figma struct {
	Latitude  *float64 `json:"latitude"` 
	Longitude *float64 `json:"longitude"`
}
