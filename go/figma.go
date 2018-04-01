// To parse and unparse this JSON data, add this code to your project and do:
//
//    fileResponse, err := UnmarshalFileResponse(bytes)
//    bytes, err = fileResponse.Marshal()
//
//    commentsResponse, err := UnmarshalCommentsResponse(bytes)
//    bytes, err = commentsResponse.Marshal()
//
//    commentRequest, err := UnmarshalCommentRequest(bytes)
//    bytes, err = commentRequest.Marshal()
//
//    projectsResponse, err := UnmarshalProjectsResponse(bytes)
//    bytes, err = projectsResponse.Marshal()
//
//    projectFilesResponse, err := UnmarshalProjectFilesResponse(bytes)
//    bytes, err = projectFilesResponse.Marshal()

package main

import "encoding/json"

func UnmarshalFileResponse(data []byte) (FileResponse, error) {
	var r FileResponse
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *FileResponse) Marshal() ([]byte, error) {
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

func UnmarshalCommentRequest(data []byte) (CommentRequest, error) {
	var r CommentRequest
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *CommentRequest) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalProjectsResponse(data []byte) (ProjectsResponse, error) {
	var r ProjectsResponse
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ProjectsResponse) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalProjectFilesResponse(data []byte) (ProjectFilesResponse, error) {
	var r ProjectFilesResponse
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ProjectFilesResponse) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

type FileResponse struct {
	Document      Document             `json:"document"`     // Node Properties; The root node; The root node within the document
	Components    map[string]Component `json:"components"`   // A mapping from node IDs to component metadata. This is to help you determine which; components each instance comes from. Currently the only piece of metadata available on; components is the name of the component, but more properties will be forthcoming.
	SchemaVersion float64              `json:"schemaVersion"`// X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
}

// A node that can have instances created of it that share the same properties
type Component struct {
	Effects             []Effect         `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	LayoutGrids         []LayoutGrid     `json:"layoutGrids"`        // An array of layout grids attached to this node (see layout grids section; for more details). GROUP nodes do not have this attribute
	Opacity             float64          `json:"opacity"`            // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Name                string           `json:"name"`               // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	AbsoluteBoundingBox Rectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates; A rectangle
	TransitionNodeID    *string          `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool             `json:"visible"`            // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	BlendMode           BlendMode        `json:"blendMode"`          // Enum describing how layer blends with layers below; This type is a string enum with the following possible values; How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	BackgroundColor     Color            `json:"backgroundColor"`    // Background color of the node; An RGBA color; Solid color of the paint; Color attached to corresponding position; Color of the grid; Background color of the canvas
	Constraints         LayoutConstraint `json:"constraints"`        // Horizontal and vertical layout constraints for node; Layout constraint relative to containing Frame
	IsMask              bool             `json:"isMask"`             // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	ClipsContent        bool             `json:"clipsContent"`       // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	ExportSettings      []ExportSetting  `json:"exportSettings"`     // An array of export settings representing images to export from node; An array of export settings representing images to export from this node; An array of export settings representing images to export from the canvas
	Type                NodeType         `json:"type"`               // the type of the node, refer to table below for details
	ID                  string           `json:"id"`                 // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	PreserveRatio       bool             `json:"preserveRatio"`      // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	Children            []Node           `json:"children"`           // An array of nodes that are direct children of this node; An array of nodes that are being boolean operated on; An array of top level layers on the canvas; An array of canvases attached to the document
}

// Bounding box of the node in absolute space coordinates
// A rectangle
type Rectangle struct {
	Effects             []Effect         `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	CornerRadius        float64          `json:"cornerRadius"`       // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Opacity             float64          `json:"opacity"`            // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Name                string           `json:"name"`               // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	StrokeAlign         StrokeAlign      `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	StrokeWeight        float64          `json:"strokeWeight"`       // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Fills               []Paint          `json:"fills"`              // An array of fill paints applied to the node; An array of stroke paints applied to the node; Paints applied to characters
	AbsoluteBoundingBox Rectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates; A rectangle
	TransitionNodeID    *string          `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Visible             bool             `json:"visible"`            // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	BlendMode           BlendMode        `json:"blendMode"`          // Enum describing how layer blends with layers below; This type is a string enum with the following possible values; How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Constraints         LayoutConstraint `json:"constraints"`        // Horizontal and vertical layout constraints for node; Layout constraint relative to containing Frame
	IsMask              bool             `json:"isMask"`             // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	ExportSettings      []ExportSetting  `json:"exportSettings"`     // An array of export settings representing images to export from node; An array of export settings representing images to export from this node; An array of export settings representing images to export from the canvas
	Type                NodeType         `json:"type"`               // the type of the node, refer to table below for details
	ID                  string           `json:"id"`                 // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	Strokes             []Paint          `json:"strokes"`            // An array of fill paints applied to the node; An array of stroke paints applied to the node; Paints applied to characters
	PreserveRatio       bool             `json:"preserveRatio"`      // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
}

// Horizontal and vertical layout constraints for node
// Layout constraint relative to containing Frame
type LayoutConstraint struct {
	Vertical   Vertical   `json:"vertical"`  // Vertical constraint as an enum; "TOP": Node is laid out relative to top of the containing frame; "BOTTOM": Node is laid out relative to bottom of the containing frame; "CENTER": Node is vertically centered relative to containing frame; "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame; (node stretches with frame); "SCALE": Node scales vertically with containing frame
	Horizontal Horizontal `json:"horizontal"`// Horizontal constraint as an enum; "LEFT": Node is laid out relative to left of the containing frame; "RIGHT": Node is laid out relative to right of the containing frame; "CENTER": Node is horizontally centered relative to containing frame; "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame; (node stretches with frame); "SCALE": Node scales horizontally with containing frame
}

// An array of effects attached to this node
// (see effects sectionfor more details)
// A visual effect such as a shadow or blur
type Effect struct {
	Type      EffectType `json:"type"`     // Type of effect as a string enum
	Visible   bool       `json:"visible"`  // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	Radius    float64    `json:"radius"`   // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Color     *Color     `json:"color"`    // Background color of the node; An RGBA color; Solid color of the paint; Color attached to corresponding position; Color of the grid; Background color of the canvas
	BlendMode *BlendMode `json:"blendMode"`// Enum describing how layer blends with layers below; This type is a string enum with the following possible values; How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Offset    *Vector2   `json:"offset"`   // 2d vector offset within the frame.; A 2d vector; This field contains three vectors, each of which are a position in; normalized object space (normalized object space is if the top left; corner of the bounding box of the object is (0, 0) and the bottom; right is (1,1)). The first position corresponds to the start of the; gradient (value 0 for the purposes of calculating gradient stops),; the second position is the end of the gradient (value 1), and the; third handle position determines the width of the gradient (only; relevant for non-linear gradients).
}

// Background color of the node
// An RGBA color
// Solid color of the paint
// Color attached to corresponding position
// Color of the grid
// Background color of the canvas
type Color struct {
	R float64 `json:"r"`// X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	G float64 `json:"g"`// X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	B float64 `json:"b"`// X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	A float64 `json:"a"`// X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
}

// 2d vector offset within the frame.
// A 2d vector
// This field contains three vectors, each of which are a position in
// normalized object space (normalized object space is if the top left
// corner of the bounding box of the object is (0, 0) and the bottom
// right is (1,1)). The first position corresponds to the start of the
// gradient (value 0 for the purposes of calculating gradient stops),
// the second position is the end of the gradient (value 1), and the
// third handle position determines the width of the gradient (only
// relevant for non-linear gradients).
type Vector2 struct {
	X float64 `json:"x"`// X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Y float64 `json:"y"`// X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
}

// An array of export settings representing images to export from node
// Format and size to export an asset at
// An array of export settings representing images to export from the canvas
// An array of export settings representing images to export from this node
type ExportSetting struct {
	Suffix     string     `json:"suffix"`    // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	Format     Format     `json:"format"`    // Image type, string enum
	Constraint Constraint `json:"constraint"`// Constraint that determines sizing of exported asset; Sizing constraint for exports
}

// Constraint that determines sizing of exported asset
// Sizing constraint for exports
type Constraint struct {
	Type  ConstraintType `json:"type"` // Type of constraint to apply; string enum with potential values below; "SCALE": Scale by value; "WIDTH": Scale proportionally and set width to value; "HEIGHT": Scale proportionally and set height to value
	Value float64        `json:"value"`// X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
}

// An array of fill paints applied to the node
// A solid color, gradient, or image texture that can be applied as fills or strokes
// An array of stroke paints applied to the node
// Paints applied to characters
type Paint struct {
	Type                    PaintType   `json:"type"`                   // Type of paint as a string enum
	Visible                 bool        `json:"visible"`                // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	Opacity                 float64     `json:"opacity"`                // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Color                   *Color      `json:"color"`                  // Background color of the node; An RGBA color; Solid color of the paint; Color attached to corresponding position; Color of the grid; Background color of the canvas
	GradientHandlePositions []Vector2   `json:"gradientHandlePositions"`// This field contains three vectors, each of which are a position in; normalized object space (normalized object space is if the top left; corner of the bounding box of the object is (0, 0) and the bottom; right is (1,1)). The first position corresponds to the start of the; gradient (value 0 for the purposes of calculating gradient stops),; the second position is the end of the gradient (value 1), and the; third handle position determines the width of the gradient (only; relevant for non-linear gradients).
	GradientStops           []ColorStop `json:"gradientStops"`          // Positions of key points along the gradient axis with the colors; anchored there. Colors along the gradient are interpolated smoothly; between neighboring gradient stops.
	ScaleMode               *string     `json:"scaleMode"`              // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
}

// Positions of key points along the gradient axis with the colors
// anchored there. Colors along the gradient are interpolated smoothly
// between neighboring gradient stops.
// A position color pair representing a gradient stop
type ColorStop struct {
	Position float64 `json:"position"`// X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Color    Color   `json:"color"`   // Background color of the node; An RGBA color; Solid color of the paint; Color attached to corresponding position; Color of the grid; Background color of the canvas
}

// An array of nodes that are direct children of this node
// An array of nodes that are being boolean operated on
// An array of top level layers on the canvas
// An array of canvases attached to the document
// Node Properties
// The root node
// The root node within the document
// Represents a single page
// A node of fixed size containing other nodes
// A logical grouping of nodes
// A vector network, consisting of vertices and edges
// A group that has a boolean operation applied to it
// A regular star shape
// A straight line
// An ellipse
// A regular n-sided polygon
// Bounding box of the node in absolute space coordinates
// A rectangle
// A text box
// A rectangular region of the canvas that can be exported
// A node that can have instances created of it that share the same properties
// An instance of a component, changes to the component result in the same
// changes applied to the instance
type Node struct {
	Effects                 []Effect          `json:"effects"`                // An array of effects attached to this node; (see effects sectionfor more details)
	LayoutGrids             []LayoutGrid      `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section; for more details). GROUP nodes do not have this attribute
	CornerRadius            *float64          `json:"cornerRadius"`           // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Characters              *string           `json:"characters"`             // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	Opacity                 *float64          `json:"opacity"`                // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Name                    string            `json:"name"`                   // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	StrokeAlign             *StrokeAlign      `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	StrokeWeight            *float64          `json:"strokeWeight"`           // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Fills                   []Paint           `json:"fills"`                  // An array of fill paints applied to the node; An array of stroke paints applied to the node; Paints applied to characters
	AbsoluteBoundingBox     *Rectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates; A rectangle
	StyleOverrideTable      []TypeStyle       `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	Style                   *TypeStyle        `json:"style"`                  // Map from ID to TypeStyle for looking up style overrides; Metadata for character formatting; Style of text including font family and weight (see type style; section for more information)
	TransitionNodeID        *string           `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	Visible                 bool              `json:"visible"`                // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	BlendMode               *BlendMode        `json:"blendMode"`              // Enum describing how layer blends with layers below; This type is a string enum with the following possible values; How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	BackgroundColor         *Color            `json:"backgroundColor"`        // Background color of the node; An RGBA color; Solid color of the paint; Color attached to corresponding position; Color of the grid; Background color of the canvas
	Constraints             *LayoutConstraint `json:"constraints"`            // Horizontal and vertical layout constraints for node; Layout constraint relative to containing Frame
	IsMask                  *bool             `json:"isMask"`                 // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	ClipsContent            *bool             `json:"clipsContent"`           // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	ExportSettings          []ExportSetting   `json:"exportSettings"`         // An array of export settings representing images to export from node; An array of export settings representing images to export from this node; An array of export settings representing images to export from the canvas
	ComponentID             *string           `json:"componentId"`            // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	Type                    NodeType          `json:"type"`                   // the type of the node, refer to table below for details
	ID                      string            `json:"id"`                     // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	Strokes                 []Paint           `json:"strokes"`                // An array of fill paints applied to the node; An array of stroke paints applied to the node; Paints applied to characters
	PreserveRatio           *bool             `json:"preserveRatio"`          // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	Children                []Node            `json:"children"`               // An array of nodes that are direct children of this node; An array of nodes that are being boolean operated on; An array of top level layers on the canvas; An array of canvases attached to the document
	CharacterStyleOverrides []float64         `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style
}

// An array of layout grids attached to this node (see layout grids section
// for more details). GROUP nodes do not have this attribute
// Guides to align and place objects within a frame
type LayoutGrid struct {
	Pattern     Pattern   `json:"pattern"`    // Orientation of the grid as a string enum; "COLUMNS": Vertical grid; "ROWS": Horizontal grid; "GRID": Square grid
	SectionSize float64   `json:"sectionSize"`// X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Visible     bool      `json:"visible"`    // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	Color       Color     `json:"color"`      // Background color of the node; An RGBA color; Solid color of the paint; Color attached to corresponding position; Color of the grid; Background color of the canvas
	Alignment   Alignment `json:"alignment"`  // Positioning of grid as a string enum; "MIN": Grid starts at the left or top of the frame; "MAX": Grid starts at the right or bottom of the frame; "CENTER": Grid is center aligned
	GutterSize  float64   `json:"gutterSize"` // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Offset      float64   `json:"offset"`     // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Count       float64   `json:"count"`      // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
}

// Map from ID to TypeStyle for looking up style overrides
// Metadata for character formatting
// Style of text including font family and weight (see type style
// section for more information)
type TypeStyle struct {
	LineHeightPx        float64             `json:"lineHeightPx"`       // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	FontPostScriptName  string              `json:"fontPostScriptName"` // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	FontWeight          float64             `json:"fontWeight"`         // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	LineHeightPercent   float64             `json:"lineHeightPercent"`  // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	TextAlignVertical   TextAlignVertical   `json:"textAlignVertical"`  // Vertical text alignment as string enum
	FontSize            float64             `json:"fontSize"`           // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Italic              bool                `json:"italic"`             // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	Fills               []Paint             `json:"fills"`              // An array of fill paints applied to the node; An array of stroke paints applied to the node; Paints applied to characters
	FontFamily          string              `json:"fontFamily"`         // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	TextAlignHorizontal TextAlignHorizontal `json:"textAlignHorizontal"`// Horizontal text alignment as string enum
	LetterSpacing       float64             `json:"letterSpacing"`      // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
}

// Node Properties
// The root node
// The root node within the document
type Document struct {
	Children []Node   `json:"children"`// An array of nodes that are direct children of this node; An array of nodes that are being boolean operated on; An array of top level layers on the canvas; An array of canvases attached to the document
	ID       string   `json:"id"`      // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	Name     string   `json:"name"`    // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	Visible  bool     `json:"visible"` // Is the effect active?; Is the grid currently visible?; Is the paint enabled?; whether or not the node is visible on the canvas; Does this node mask sibling nodes in front of it?; Keep height and width constrained to same ratio; Does this node clip content outside of its bounds?; Is text italicized?
	Type     NodeType `json:"type"`    // the type of the node, refer to table below for details
}

type CommentsResponse struct {
	Comments []Comment `json:"comments"`
}

// A comment or reply left by a user
type Comment struct {
	Message    string     `json:"message"`    // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	CreatedAt  string     `json:"created_at"` // Enables basic storage and retrieval of dates and times.
	User       User       `json:"user"`       // A description of a user; The user who left the comment
	OrderID    float64    `json:"order_id"`   // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	ParentID   string     `json:"parent_id"`  // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	ClientMeta ClientMeta `json:"client_meta"`// 2d vector offset within the frame.; A 2d vector; This field contains three vectors, each of which are a position in; normalized object space (normalized object space is if the top left; corner of the bounding box of the object is (0, 0) and the bottom; right is (1,1)). The first position corresponds to the start of the; gradient (value 0 for the purposes of calculating gradient stops),; the second position is the end of the gradient (value 1), and the; third handle position determines the width of the gradient (only; relevant for non-linear gradients).; A relative offset within a frame
	ResolvedAt *string    `json:"resolved_at"`// If set, when the comment was resolved
	ID         string     `json:"id"`         // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	FileKey    string     `json:"file_key"`   // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
}

// 2d vector offset within the frame.
// A 2d vector
// This field contains three vectors, each of which are a position in
// normalized object space (normalized object space is if the top left
// corner of the bounding box of the object is (0, 0) and the bottom
// right is (1,1)). The first position corresponds to the start of the
// gradient (value 0 for the purposes of calculating gradient stops),
// the second position is the end of the gradient (value 1), and the
// third handle position determines the width of the gradient (only
// relevant for non-linear gradients).
// A relative offset within a frame
type ClientMeta struct {
	X          *float64 `json:"x"`          // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Y          *float64 `json:"y"`          // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	NodeID     []string `json:"node_id"`    // Unique id specifying the frame.; Allows manipulation and formatting of text strings and determination and location of; substrings within strings.
	NodeOffset *Vector2 `json:"node_offset"`// 2d vector offset within the frame.; A 2d vector; This field contains three vectors, each of which are a position in; normalized object space (normalized object space is if the top left; corner of the bounding box of the object is (0, 0) and the bottom; right is (1,1)). The first position corresponds to the start of the; gradient (value 0 for the purposes of calculating gradient stops),; the second position is the end of the gradient (value 1), and the; third handle position determines the width of the gradient (only; relevant for non-linear gradients).
}

// A description of a user
// The user who left the comment
type User struct {
	Handle string `json:"handle"` // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	ImgURL string `json:"img_url"`// Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
}

type CommentRequest struct {
	Message    string     `json:"message"`    // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	ClientMeta ClientMeta `json:"client_meta"`// 2d vector offset within the frame.; A 2d vector; This field contains three vectors, each of which are a position in; normalized object space (normalized object space is if the top left; corner of the bounding box of the object is (0, 0) and the bottom; right is (1,1)). The first position corresponds to the start of the; gradient (value 0 for the purposes of calculating gradient stops),; the second position is the end of the gradient (value 1), and the; third handle position determines the width of the gradient (only; relevant for non-linear gradients).; A relative offset within a frame
}

type ProjectsResponse struct {
	Projects []Project `json:"projects"`
}

type Project struct {
	ID   float64 `json:"id"`  // X coordinate of the vector; Y coordinate of the vector; Radius of the blur effect (applies to shadows as well); Red channel value, between 0 and 1; Green channel value, between 0 and 1; Blue channel value, between 0 and 1; Alpha channel value, between 0 and 1; Width of column grid or height of row grid or square grid spacing; Spacing in between columns and rows; Spacing before the first column or row; Number of columns or rows; Opacity of the node; Radius of each corner of the rectangle; The weight of strokes on the node; Overall opacity of paint (colors within the paint can also have opacity; values which would blend with this); Value between 0 and 1 representing position along gradient axis; See type property for effect of this field; Line height in px; Numeric font weight; Line height as a percentage of normal line height; Font size in px; Space between characters in px; Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style; Only set for top level comments. The number displayed with the; comment in the UI
	Name string  `json:"name"`// Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
}

type ProjectFilesResponse struct {
	Files []File `json:"files"`
}

type File struct {
	Key          string `json:"key"`          // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	Name         string `json:"name"`         // Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	ThumbnailURL string `json:"thumbnail_url"`// Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
	LastModified string `json:"last_modified"`// Allows manipulation and formatting of text strings and determination and location of; substrings within strings.; the name given to the node by the user in the tool.; Image scaling mode; File suffix to append to all filenames; a string uniquely identifying this node within the document; Text contained within text box; PostScript font name; Font family of text (standard name); ID of component that this instance came from, refers to components; table (see endpoints section below); (MISSING IN DOCS); The content of the comment; If present, the id of the comment to which this is the reply; Unique identifier for comment; The file in which the comment lives; utc date in iso8601
}

// Enum describing how layer blends with layers below
// This type is a string enum with the following possible values
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
	ConstraintTypeSCALE ConstraintType = "SCALE"
	Height ConstraintType = "HEIGHT"
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
	Canvas NodeType = "CANVAS"
	Ellipse NodeType = "ELLIPSE"
	Frame NodeType = "FRAME"
	Group NodeType = "GROUP"
	Instance NodeType = "INSTANCE"
	Line NodeType = "LINE"
	NodeTypeCOMPONENT NodeType = "COMPONENT"
	NodeTypeDOCUMENT NodeType = "DOCUMENT"
	NodeTypeRECTANGLE NodeType = "RECTANGLE"
	RegularPolygon NodeType = "REGULAR_POLYGON"
	Slice NodeType = "SLICE"
	Star NodeType = "STAR"
	Text NodeType = "TEXT"
	Vector NodeType = "VECTOR"
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
