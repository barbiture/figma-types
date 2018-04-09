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
	Document      FileResponseDocument `json:"document"`     // The root node within the document
	SchemaVersion float64              `json:"schemaVersion"`
}

// A node that can have instances created of it that share the same properties
type Component struct {
	AbsoluteBoundingBox Rectangle         `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	BackgroundColor     Color             `json:"backgroundColor"`    // Background color of the node
	BlendMode           LendMode          `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Children            []DocumentElement `json:"children"`           // An array of nodes that are direct children of this node
	ClipsContent        bool              `json:"clipsContent"`       // Does this node clip content outside of its bounds?
	Constraints         LayoutConstraint  `json:"constraints"`        // Horizontal and vertical layout constraints for node
	Effects             []Effect          `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	ExportSettings      []ExportSetting   `json:"exportSettings"`     // An array of export settings representing images to export from node
	ID                  string            `json:"id"`                 // a string uniquely identifying this node within the document
	IsMask              bool              `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	LayoutGrids         []LayoutGrid      `json:"layoutGrids"`        // An array of layout grids attached to this node (see layout grids section; for more details). GROUP nodes do not have this attribute
	Name                string            `json:"name"`               // the name given to the node by the user in the tool.
	Opacity             float64           `json:"opacity"`            // Opacity of the node
	PreserveRatio       bool              `json:"preserveRatio"`      // Keep height and width constrained to same ratio
	TransitionNodeID    *string           `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Type                NodeType          `json:"type"`               // the type of the node, refer to table below for details
	Visible             bool              `json:"visible"`            // whether or not the node is visible on the canvas
}

// Bounding box of the node in absolute space coordinates
//
// A rectangle
type Rectangle struct {
	AbsoluteBoundingBox Rectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	BlendMode           LendMode         `json:"blendMode"`          // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	Constraints         LayoutConstraint `json:"constraints"`        // Horizontal and vertical layout constraints for node
	CornerRadius        float64          `json:"cornerRadius"`       // Radius of each corner of the rectangle
	Effects             []Effect         `json:"effects"`            // An array of effects attached to this node; (see effects sectionfor more details)
	ExportSettings      []ExportSetting  `json:"exportSettings"`     // An array of export settings representing images to export from node
	Fills               []Paint          `json:"fills"`              // An array of fill paints applied to the node
	ID                  string           `json:"id"`                 // a string uniquely identifying this node within the document
	IsMask              bool             `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	Name                string           `json:"name"`               // the name given to the node by the user in the tool.
	Opacity             float64          `json:"opacity"`            // Opacity of the node
	PreserveRatio       bool             `json:"preserveRatio"`      // Keep height and width constrained to same ratio
	StrokeAlign         StrokeAlign      `json:"strokeAlign"`        // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	Strokes             []Paint          `json:"strokes"`            // An array of stroke paints applied to the node
	StrokeWeight        float64          `json:"strokeWeight"`       // The weight of strokes on the node
	TransitionNodeID    *string          `json:"transitionNodeID"`   // Node ID of node to transition to in prototyping
	Type                NodeType         `json:"type"`               // the type of the node, refer to table below for details
	Visible             bool             `json:"visible"`            // whether or not the node is visible on the canvas
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
	BlendMode *LendMode  `json:"blendMode"`// Enum describing how layer blends with layers below; This type is a string enum with the following possible values
	Color     *Color     `json:"color"`    // An RGBA color
	Offset    *Vector2   `json:"offset"`   // A 2d vector
	Radius    float64    `json:"radius"`   // Radius of the blur effect (applies to shadows as well)
	Type      EffectType `json:"type"`     // Type of effect as a string enum
	Visible   bool       `json:"visible"`  // Is the effect active?
}

// Background color of the node
//
// An RGBA color
//
// Color of the grid
//
// Solid color of the paint
//
// Background color of the canvas
//
// Color attached to corresponding position
type Color struct {
	A float64 `json:"a"`// Alpha channel value, between 0 and 1
	B float64 `json:"b"`// Blue channel value, between 0 and 1
	G float64 `json:"g"`// Green channel value, between 0 and 1
	R float64 `json:"r"`// Red channel value, between 0 and 1
}

// 2d vector offset within the frame.
//
// A 2d vector
//
// This field contains three vectors, each of which are a position in
// normalized object space (normalized object space is if the top left
// corner of the bounding box of the object is (0, 0) and the bottom
// right is (1,1)). The first position corresponds to the start of the
// gradient (value 0 for the purposes of calculating gradient stops),
// the second position is the end of the gradient (value 1), and the
// third handle position determines the width of the gradient (only
// relevant for non-linear gradients).
type Vector2 struct {
	X float64 `json:"x"`// X coordinate of the vector
	Y float64 `json:"y"`// Y coordinate of the vector
}

// Format and size to export an asset at
//
// An array of export settings representing images to export from node
//
// An array of export settings representing images to export from this node
//
// An array of export settings representing images to export from the canvas
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

// An array of fill paints applied to the node
//
// A solid color, gradient, or image texture that can be applied as fills or strokes
//
// An array of stroke paints applied to the node
//
// Paints applied to characters
type Paint struct {
	Color                   *Color      `json:"color"`                  // Solid color of the paint
	GradientHandlePositions []Vector2   `json:"gradientHandlePositions"`// This field contains three vectors, each of which are a position in; normalized object space (normalized object space is if the top left; corner of the bounding box of the object is (0, 0) and the bottom; right is (1,1)). The first position corresponds to the start of the; gradient (value 0 for the purposes of calculating gradient stops),; the second position is the end of the gradient (value 1), and the; third handle position determines the width of the gradient (only; relevant for non-linear gradients).
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
	AbsoluteBoundingBox     *Rectangle        `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	BlendMode               *LendMode         `json:"blendMode"`              // How this node blends with nodes behind it in the scene; (see blend mode section for more details)
	ClipsContent            *bool             `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	Constraints             *LayoutConstraint `json:"constraints"`            // Horizontal and vertical layout constraints for node
	Effects                 []Effect          `json:"effects"`                // An array of effects attached to this node; (see effects sectionfor more details)
	IsMask                  *bool             `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	LayoutGrids             []LayoutGrid      `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section; for more details). GROUP nodes do not have this attribute
	Opacity                 *float64          `json:"opacity"`                // Opacity of the node
	PreserveRatio           *bool             `json:"preserveRatio"`          // Keep height and width constrained to same ratio
	TransitionNodeID        *string           `json:"transitionNodeID"`       // Node ID of node to transition to in prototyping
	Fills                   []Paint           `json:"fills"`                  // An array of fill paints applied to the node
	StrokeAlign             *StrokeAlign      `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; "INSIDE": draw stroke inside the shape boundary; "OUTSIDE": draw stroke outside the shape boundary; "CENTER": draw stroke centered along the shape boundary
	Strokes                 []Paint           `json:"strokes"`                // An array of stroke paints applied to the node
	StrokeWeight            *float64          `json:"strokeWeight"`           // The weight of strokes on the node
	CornerRadius            *float64          `json:"cornerRadius"`           // Radius of each corner of the rectangle
	Characters              *string           `json:"characters"`             // Text contained within text box
	CharacterStyleOverrides []float64         `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box,; each element is a reference to the styleOverrideTable defined; below and maps to the corresponding character in the characters; field. Elements with value 0 have the default type style
	Style                   *TypeStyle        `json:"style"`                  // Style of text including font family and weight (see type style; section for more information)
	StyleOverrideTable      []TypeStyle       `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
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

// Map from ID to TypeStyle for looking up style overrides
//
// Metadata for character formatting
//
// Style of text including font family and weight (see type style
// section for more information)
type TypeStyle struct {
	Fills               []Paint             `json:"fills"`              // Paints applied to characters
	FontFamily          string              `json:"fontFamily"`         // Font family of text (standard name)
	FontPostScriptName  string              `json:"fontPostScriptName"` // PostScript font name
	FontSize            float64             `json:"fontSize"`           // Font size in px
	FontWeight          float64             `json:"fontWeight"`         // Numeric font weight
	Italic              bool                `json:"italic"`             // Is text italicized?
	LetterSpacing       float64             `json:"letterSpacing"`      // Space between characters in px
	LineHeightPercent   float64             `json:"lineHeightPercent"`  // Line height as a percentage of normal line height
	LineHeightPx        float64             `json:"lineHeightPx"`       // Line height in px
	TextAlignHorizontal TextAlignHorizontal `json:"textAlignHorizontal"`// Horizontal text alignment as string enum
	TextAlignVertical   TextAlignVertical   `json:"textAlignVertical"`  // Vertical text alignment as string enum
}

// Node Properties
// The root node
//
// The root node within the document
type FileResponseDocument struct {
	Children []DocumentElement `json:"children"`// An array of canvases attached to the document
	ID       string            `json:"id"`      // a string uniquely identifying this node within the document
	Name     string            `json:"name"`    // the name given to the node by the user in the tool.
	Type     NodeType          `json:"type"`    // the type of the node, refer to table below for details
	Visible  bool              `json:"visible"` // whether or not the node is visible on the canvas
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
	ClientMeta ClientMeta `json:"client_meta"`
	CreatedAt  string     `json:"created_at"` // The time at which the comment was left
	FileKey    string     `json:"file_key"`   // The file in which the comment lives
	ID         string     `json:"id"`         // Unique identifier for comment
	Message    string     `json:"message"`    // (MISSING IN DOCS); The content of the comment
	OrderID    float64    `json:"order_id"`   // Only set for top level comments. The number displayed with the; comment in the UI
	ParentID   string     `json:"parent_id"`  // If present, the id of the comment to which this is the reply
	ResolvedAt *string    `json:"resolved_at"`// If set, when the comment was resolved
	User       User       `json:"user"`       // The user who left the comment
}

// 2d vector offset within the frame.
//
// A 2d vector
//
// This field contains three vectors, each of which are a position in
// normalized object space (normalized object space is if the top left
// corner of the bounding box of the object is (0, 0) and the bottom
// right is (1,1)). The first position corresponds to the start of the
// gradient (value 0 for the purposes of calculating gradient stops),
// the second position is the end of the gradient (value 1), and the
// third handle position determines the width of the gradient (only
// relevant for non-linear gradients).
//
// A relative offset within a frame
type ClientMeta struct {
	X          *float64 `json:"x"`          // X coordinate of the vector
	Y          *float64 `json:"y"`          // Y coordinate of the vector
	NodeID     []string `json:"node_id"`    // Unique id specifying the frame.
	NodeOffset *Vector2 `json:"node_offset"`// 2d vector offset within the frame.
}

// The user who left the comment
//
// A description of a user
type User struct {
	Handle string `json:"handle"` 
	ImgURL string `json:"img_url"`
}

// POST /v1/files/:key/comments
//
// > Description
// Posts a new comment on the file.
//
// > Path parameters
// key String
// File to get comments from
//
// > Body parameters
// message String
// The text contents of the comment to post
//
// client_meta Vector2 | FrameOffset
// The position of where to place the comment. This can either be an absolute canvas
// position or the relative position within a frame.
//
// > Return value
// The Comment that was successfully posted
//
// > Error codes
// 404 The specified file was not found
type CommentRequest struct {
	ClientMeta ClientMeta `json:"client_meta"`
	Message    string     `json:"message"`    
}

// GET /v1/teams/:team_id/projects
//
// > Description
// Lists the projects for a specified team. Note that this will only return projects visible
// to the authenticated user or owner of the developer token.
//
// > Path parameters
// team_id String
// Id of the team to list projects from
type ProjectsResponse struct {
	Projects []Project `json:"projects"`
}

type Project struct {
	ID   float64 `json:"id"`  
	Name string  `json:"name"`
}

// GET /v1/projects/:project_id/files
//
// > Description
// List the files in a given project.
//
// > Path parameters
// project_id String
// Id of the project to list files from
type ProjectFilesResponse struct {
	Files []File `json:"files"`
}

type File struct {
	Key          string `json:"key"`          
	LastModified string `json:"last_modified"`// utc date in iso8601
	Name         string `json:"name"`         
	ThumbnailURL string `json:"thumbnail_url"`
}

// How this node blends with nodes behind it in the scene
// (see blend mode section for more details)
//
// Enum describing how layer blends with layers below
// This type is a string enum with the following possible values
type LendMode string
const (
	ColorBurn LendMode = "COLOR_BURN"
	ColorDodge LendMode = "COLOR_DODGE"
	Darken LendMode = "DARKEN"
	Difference LendMode = "DIFFERENCE"
	Exclusion LendMode = "EXCLUSION"
	HardLight LendMode = "HARD_LIGHT"
	Hue LendMode = "HUE"
	LendModeCOLOR LendMode = "COLOR"
	Lighten LendMode = "LIGHTEN"
	LinearBurn LendMode = "LINEAR_BURN"
	LinearDodge LendMode = "LINEAR_DODGE"
	Luminosity LendMode = "LUMINOSITY"
	Multiply LendMode = "MULTIPLY"
	Normal LendMode = "NORMAL"
	Overlay LendMode = "OVERLAY"
	PassThrough LendMode = "PASS_THROUGH"
	Saturation LendMode = "SATURATION"
	Screen LendMode = "SCREEN"
	SoftLight LendMode = "SOFT_LIGHT"
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
	Canvas NodeType = "CANVAS"
	Document NodeType = "DOCUMENT"
	Ellipse NodeType = "ELLIPSE"
	Frame NodeType = "FRAME"
	Group NodeType = "GROUP"
	Instance NodeType = "INSTANCE"
	Line NodeType = "LINE"
	NodeTypeCOMPONENT NodeType = "COMPONENT"
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
