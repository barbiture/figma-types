// To parse and unparse this JSON data, add this code to your project and do:
//
//    fileResponse, err := UnmarshalFileResponse(bytes)
//    bytes, err = fileResponse.Marshal()

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

// GET /v1/files/:key
//
// Returns the document refered to by :key as a JSON object. The file key can be parsed from
// any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
// contains a Node of type DOCUMENT.
type FileResponse struct {
	Document      Document             `json:"document"`     // The root node within the document
	Components    map[string]Component `json:"components"`   // A mapping from node IDs to component metadata. This is to help you determine which; components each instance comes from. Currently the only piece of metadata available on; components is the name of the component, but more properties will be forthcoming.
	SchemaVersion float64              `json:"schemaVersion"`
}

// A mapping from node IDs to component metadata. This is to help you determine which
// components each instance comes from. Currently the only piece of metadata available on
// components is the name of the component, but more properties will be forthcoming.
//
// A node that can have instances created of it that share the same properties
//
// An array of canvases attached to the document
//
// Properties are shared across all nodes
//
// The root node within the document
//
// A rectangular region of the canvas that can be exported
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
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Opacity of the node
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
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
// Is the grid currently visible?
//
// Does this node mask sibling nodes in front of it?
//
// Does this node clip content outside of its bounds?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the paint enabled?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// File suffix to append to all filenames
//
// Node ID of node to transition to in prototyping
//
// A group that has a boolean operation applied to it
//
// A text box
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
type Component struct {
	ID                  string           `json:"id"`                 // A string uniquely identifying this node within the document
	Name                string           `json:"name"`               // The name given to the node by the user in the tool
	Visible             bool             `json:"visible"`            // Whether or not the node is visible on the canvas
	Type                NodeType         `json:"type"`               // The type of the node
	Effects             []Effect         `json:"effects"`            // An array of effects attached to this node (see effects section for more details)
	LayoutGrids         []LayoutGrid     `json:"layoutGrids"`        // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity             float64          `json:"opacity"`            // Opacity of the node
	TransitionID        *string          `json:"transitionID"`       // Node ID of node to transition to in prototyping
	AbsoluteBoundingBox Rectangle        `json:"absoluteBoundingBox"`// Bounding box of the node in absolute space coordinates
	BlendMode           BlendMode        `json:"blendMode"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	BackgroundColor     Color            `json:"backgroundColor"`    // Background color of the node
	Constraints         LayoutConstraint `json:"constraints"`        // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask              bool             `json:"isMask"`             // Does this node mask sibling nodes in front of it?
	ClipsContent        bool             `json:"clipsContent"`       // Does this node clip content outside of its bounds?
	ExportSettings      []ExportSetting  `json:"exportSettings"`     // An array of export settings representing images to export from node
	PreserveRatio       bool             `json:"preserveRatio"`      // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Children            []PurpleNode     `json:"children"`           // An array of nodes that are direct children of this node
}

// A rectangle that expresses a bounding box in absolute coordinates
//
// Bounding box of the node in absolute space coordinates
//
// An array of canvases attached to the document
type Rectangle struct {
	X      float64 `json:"x"`     // X coordinate of top left corner of the rectangle
	Y      float64 `json:"y"`     // Y coordinate of top left corner of the rectangle
	Width  float64 `json:"width"` // Width of the rectangle
	Height float64 `json:"height"`// Height of the rectangle
}

// An RGBA color
//
// Background color of the canvas
//
// See type property for effect of this field
//
// Color of the grid
//
// Background color of the node
//
// (For solid paints) Solid color of the paint
//
// Color attached to corresponding position
type Color struct {
	R float64 `json:"r"`// Red channel value, between 0 and 1
	G float64 `json:"g"`// Green channel value, between 0 and 1
	B float64 `json:"b"`// Blue channel value, between 0 and 1
	A float64 `json:"a"`// Alpha channel value, between 0 and 1
}

// An array of nodes that are direct children of this node
//
// An array of canvases attached to the document
//
// The root node within the document
//
// Properties are shared across all nodes
//
// A rectangular region of the canvas that can be exported
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
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Opacity of the node
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
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
// Is the grid currently visible?
//
// Does this node mask sibling nodes in front of it?
//
// Does this node clip content outside of its bounds?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the paint enabled?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// File suffix to append to all filenames
//
// Node ID of node to transition to in prototyping
//
// A group that has a boolean operation applied to it
//
// A text box
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// A logical grouping of nodes
//
// A regular star shape
//
// A straight line
//
// An ellipse
//
// A regular n-sided polygon
//
// A rectangle that expresses a bounding box in absolute coordinates
//
// Bounding box of the node in absolute space coordinates
//
// A node that can have instances created of it that share the same properties
type PurpleNode struct {
	ID                      *string              `json:"id"`                     // A string uniquely identifying this node within the document
	Name                    *string              `json:"name"`                   // The name given to the node by the user in the tool
	Visible                 *bool                `json:"visible"`                // Whether or not the node is visible on the canvas
	Type                    *NodeType            `json:"type"`                   // The type of the node
	Children                []NodeNode           `json:"children"`               // An array of canvases attached to the document; ; An array of top level layers on the canvas; ; An array of nodes that are direct children of this node; ; An array of nodes that are being boolean operated on
	BackgroundColor         *Color               `json:"backgroundColor"`        // Background color of the canvas; ; Background color of the node
	ExportSettings          []ExportSetting      `json:"exportSettings"`         // An array of export settings representing images to export from the canvas; ; An array of export settings representing images to export from node; ; A rectangular region of the canvas that can be exported
	Effects                 []Effect             `json:"effects"`                // An array of effects attached to this node (see effects section for more details)
	LayoutGrids             []LayoutGrid         `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity                 *float64             `json:"opacity"`                // Opacity of the node
	TransitionID            *string              `json:"transitionID"`           // Node ID of node to transition to in prototyping
	AbsoluteBoundingBox     *Rectangle           `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	BlendMode               *BlendMode           `json:"blendMode"`              // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints             *LayoutConstraint    `json:"constraints"`            // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask                  *bool                `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ClipsContent            *bool                `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	PreserveRatio           *bool                `json:"preserveRatio"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	StrokeAlign             *StrokeAlign         `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight            *float64             `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []Paint              `json:"fills"`                  // An array of fill paints applied to the node
	Strokes                 []Paint              `json:"strokes"`                // An array of stroke paints applied to the node
	X                       *float64             `json:"x"`                      // X coordinate of top left corner of the rectangle
	Y                       *float64             `json:"y"`                      // Y coordinate of top left corner of the rectangle
	Width                   *float64             `json:"width"`                  // Width of the rectangle
	Height                  *float64             `json:"height"`                 // Height of the rectangle
	Characters              *string              `json:"characters"`             // Text contained within text box
	Style                   *TypeStyle           `json:"style"`                  // Style of text including font family and weight (see type style section for more; information)
	CharacterStyleOverrides []float64            `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box, each element is a; reference to the styleOverrideTable defined below and maps to the corresponding character; in the characters field. Elements with value 0 have the default type style
	StyleOverrideTable      map[string]TypeStyle `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	ComponentID             *string              `json:"componentId"`            // ID of component that this instance came from, refers to components table (see endpoints; section below)
}

// An array of canvases attached to the document
//
// The root node within the document
//
// Properties are shared across all nodes
//
// A rectangular region of the canvas that can be exported
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
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Opacity of the node
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
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
// Is the grid currently visible?
//
// Does this node mask sibling nodes in front of it?
//
// Does this node clip content outside of its bounds?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the paint enabled?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// File suffix to append to all filenames
//
// Node ID of node to transition to in prototyping
//
// A group that has a boolean operation applied to it
//
// A text box
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// A logical grouping of nodes
//
// A regular star shape
//
// A straight line
//
// An ellipse
//
// A regular n-sided polygon
//
// A rectangle that expresses a bounding box in absolute coordinates
//
// Bounding box of the node in absolute space coordinates
//
// A node that can have instances created of it that share the same properties
//
// An array of top level layers on the canvas
//
// An array of nodes that are direct children of this node
//
// An array of nodes that are being boolean operated on
type NodeNode struct {
	ID                      *string              `json:"id"`                     // A string uniquely identifying this node within the document
	Name                    *string              `json:"name"`                   // The name given to the node by the user in the tool
	Visible                 *bool                `json:"visible"`                // Whether or not the node is visible on the canvas
	Type                    *NodeType            `json:"type"`                   // The type of the node
	Children                []NodeNode           `json:"children"`               // An array of canvases attached to the document; ; An array of top level layers on the canvas; ; An array of nodes that are direct children of this node; ; An array of nodes that are being boolean operated on
	BackgroundColor         *Color               `json:"backgroundColor"`        // Background color of the canvas; ; Background color of the node
	ExportSettings          []ExportSetting      `json:"exportSettings"`         // An array of export settings representing images to export from the canvas; ; An array of export settings representing images to export from node; ; A rectangular region of the canvas that can be exported
	Effects                 []Effect             `json:"effects"`                // An array of effects attached to this node (see effects section for more details)
	LayoutGrids             []LayoutGrid         `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity                 *float64             `json:"opacity"`                // Opacity of the node
	TransitionID            *string              `json:"transitionID"`           // Node ID of node to transition to in prototyping
	AbsoluteBoundingBox     *Rectangle           `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	BlendMode               *BlendMode           `json:"blendMode"`              // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints             *LayoutConstraint    `json:"constraints"`            // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask                  *bool                `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ClipsContent            *bool                `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	PreserveRatio           *bool                `json:"preserveRatio"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	StrokeAlign             *StrokeAlign         `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight            *float64             `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []Paint              `json:"fills"`                  // An array of fill paints applied to the node
	Strokes                 []Paint              `json:"strokes"`                // An array of stroke paints applied to the node
	X                       *float64             `json:"x"`                      // X coordinate of top left corner of the rectangle
	Y                       *float64             `json:"y"`                      // Y coordinate of top left corner of the rectangle
	Width                   *float64             `json:"width"`                  // Width of the rectangle
	Height                  *float64             `json:"height"`                 // Height of the rectangle
	Characters              *string              `json:"characters"`             // Text contained within text box
	Style                   *TypeStyle           `json:"style"`                  // Style of text including font family and weight (see type style section for more; information)
	CharacterStyleOverrides []float64            `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box, each element is a; reference to the styleOverrideTable defined below and maps to the corresponding character; in the characters field. Elements with value 0 have the default type style
	StyleOverrideTable      map[string]TypeStyle `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	ComponentID             *string              `json:"componentId"`            // ID of component that this instance came from, refers to components table (see endpoints; section below)
}

// Layout constraint relative to containing Frame
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
type LayoutConstraint struct {
	Vertical   Vertical   `json:"vertical"`  // * TOP: Node is laid out relative to top of the containing frame; * BOTTOM: Node is laid out relative to bottom of the containing frame; * CENTER: Node is vertically centered relative to containing frame; * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame; (node stretches with frame); * SCALE: Node scales vertically with containing frame
	Horizontal Horizontal `json:"horizontal"`// * LEFT: Node is laid out relative to left of the containing frame; * RIGHT: Node is laid out relative to right of the containing frame; * CENTER: Node is horizontally centered relative to containing frame; * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame; (node stretches with frame); * SCALE: Node scales horizontally with containing frame
}

// A visual effect such as a shadow or blur
//
// An array of effects attached to this node (see effects section for more details)
type Effect struct {
	Type      EffectType `json:"type"`     // Type of effect as a string enum
	Radius    float64    `json:"radius"`   // See type property for effect of this field
	Visible   bool       `json:"visible"`  // See type property for effect of this field
	Color     Color      `json:"color"`    // See type property for effect of this field
	BlendMode BlendMode  `json:"blendMode"`// See type property for effect of this field
	Offset    Vector2D   `json:"offset"`   // See type property for effect of this field
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
type Vector2D struct {
	X float64 `json:"x"`// X coordinate of the vector
	Y float64 `json:"y"`// Y coordinate of the vector
}

// Format and size to export an asset at
//
// An array of export settings representing images to export from the canvas
//
// An array of export settings representing images to export from node
//
// A rectangular region of the canvas that can be exported
type ExportSetting struct {
	Suffix     string     `json:"suffix"`    // File suffix to append to all filenames
	Format     Format     `json:"format"`    // Type of constraint to apply; string enum with potential values below; ; * "SCALE": Scale by value; * "WIDTH": Scale proportionally and set width to value; * "HEIGHT": Scale proportionally and set height to value
	Constraint Constraint `json:"constraint"`// Constraint that determines sizing of exported asset
}

// Sizing constraint for exports
//
// Constraint that determines sizing of exported asset
type Constraint struct {
	Type  ConstraintType `json:"type"` // Type of constraint to apply; string enum with potential values below; ; * "SCALE": Scale by value; * "WIDTH": Scale proportionally and set width to value; * "HEIGHT": Scale proportionally and set height to value
	Value float64        `json:"value"`// See type property for effect of this field
}

// A solid color, gradient, or image texture that can be applied as fills or strokes
//
// An array of fill paints applied to the node
//
// An array of stroke paints applied to the node
//
// Paints applied to characters
type Paint struct {
	Type                    PaintType   `json:"type"`                   // Type of paint as a string enum
	Visible                 bool        `json:"visible"`                // Is the paint enabled?
	Opacity                 float64     `json:"opacity"`                // Overall opacity of paint (colors within the paint can also have opacity values which; would blend with this)
	Color                   *Color      `json:"color"`                  // (For solid paints) Solid color of the paint
	GradientHandlePositions []Vector2D  `json:"gradientHandlePositions"`// (For gradient paints) This field contains three vectors, each of which are a position in; normalized object space (normalized object space is if the top left corner of the; bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position; corresponds to the start of the gradient (value 0 for the purposes of calculating; gradient stops), the second position is the end of the gradient (value 1), and the third; handle position determines the width of the gradient (only relevant for non-linear; gradients).
	GradientStops           []ColorStop `json:"gradientStops"`          // (For gradient paints) Positions of key points along the gradient axis with the colors; anchored there. Colors along the gradient are interpolated smoothly between neighboring; gradient stops.
	ScaleMode               *ScaleMode  `json:"scaleMode"`              // (For image paints) Image scaling mode
}

// A position color pair representing a gradient stop
//
// (For gradient paints) Positions of key points along the gradient axis with the colors
// anchored there. Colors along the gradient are interpolated smoothly between neighboring
// gradient stops.
type ColorStop struct {
	Color    Color   `json:"color"`   // Color attached to corresponding position
	Position float64 `json:"position"`// Value between 0 and 1 representing position along gradient axis
}

// Guides to align and place objects within a frame
//
// An array of layout grids attached to this node (see layout grids section for more
// details). GROUP nodes do not have this attribute
type LayoutGrid struct {
	Pattern     Pattern   `json:"pattern"`    // * COLUMNS: Vertical grid; * ROWS: Horizontal grid; * GRID: Square grid
	SectionSize float64   `json:"sectionSize"`// Width of column grid or height of row grid or square grid spacing
	Visible     bool      `json:"visible"`    // Is the grid currently visible?
	Color       Color     `json:"color"`      // Color of the grid
	Alignment   Alignment `json:"alignment"`  // Positioning of grid as a string enum; ; * MIN: Grid starts at the left or top of the frame; * MAX: Grid starts at the right or bottom of the frame; * CENTER: Grid is center aligned
	GutterSize  float64   `json:"gutterSize"` // Spacing in between columns and rows
	Offset      float64   `json:"offset"`     // Spacing before the first column or row
	Count       float64   `json:"count"`      // Number of columns or rows
}

// Metadata for character formatting
//
// Style of text including font family and weight (see type style section for more
// information)
//
// Map from ID to TypeStyle for looking up style overrides
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

// The root node within the document
//
// Properties are shared across all nodes
//
// An array of canvases attached to the document
//
// A rectangular region of the canvas that can be exported
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
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Opacity of the node
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
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
// Is the grid currently visible?
//
// Does this node mask sibling nodes in front of it?
//
// Does this node clip content outside of its bounds?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the paint enabled?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// File suffix to append to all filenames
//
// Node ID of node to transition to in prototyping
//
// A group that has a boolean operation applied to it
//
// A text box
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
type Document struct {
	ID       string       `json:"id"`      // A string uniquely identifying this node within the document
	Name     string       `json:"name"`    // The name given to the node by the user in the tool
	Visible  bool         `json:"visible"` // Whether or not the node is visible on the canvas
	Type     NodeType     `json:"type"`    // The type of the node
	Children []FluffyNode `json:"children"`// An array of canvases attached to the document
}

// An array of canvases attached to the document
//
// The root node within the document
//
// Properties are shared across all nodes
//
// A rectangular region of the canvas that can be exported
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
// X coordinate of the vector
//
// Y coordinate of the vector
//
// Width of column grid or height of row grid or square grid spacing
//
// Spacing in between columns and rows
//
// Spacing before the first column or row
//
// Number of columns or rows
//
// Opacity of the node
//
// X coordinate of top left corner of the rectangle
//
// Y coordinate of top left corner of the rectangle
//
// Width of the rectangle
//
// Height of the rectangle
//
// The weight of strokes on the node
//
// Overall opacity of paint (colors within the paint can also have opacity values which
// would blend with this)
//
// Value between 0 and 1 representing position along gradient axis
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
// Is the grid currently visible?
//
// Does this node mask sibling nodes in front of it?
//
// Does this node clip content outside of its bounds?
//
// How this node blends with nodes behind it in the scene (see blend mode section for more
// details)
//
// Is the paint enabled?
//
// Is text italicized?
//
// A string uniquely identifying this node within the document
//
// The name given to the node by the user in the tool
//
// File suffix to append to all filenames
//
// Node ID of node to transition to in prototyping
//
// A group that has a boolean operation applied to it
//
// A text box
//
// Text contained within text box
//
// PostScript font name
//
// Font family of text (standard name)
//
// An instance of a component, changes to the component result in the same changes applied
// to the instance
//
// ID of component that this instance came from, refers to components table (see endpoints
// section below)
//
// A logical grouping of nodes
//
// A regular star shape
//
// A straight line
//
// An ellipse
//
// A regular n-sided polygon
//
// A rectangle that expresses a bounding box in absolute coordinates
//
// Bounding box of the node in absolute space coordinates
//
// A node that can have instances created of it that share the same properties
type FluffyNode struct {
	ID                      *string              `json:"id"`                     // A string uniquely identifying this node within the document
	Name                    *string              `json:"name"`                   // The name given to the node by the user in the tool
	Visible                 *bool                `json:"visible"`                // Whether or not the node is visible on the canvas
	Type                    *NodeType            `json:"type"`                   // The type of the node
	Children                []NodeNode           `json:"children"`               // An array of canvases attached to the document; ; An array of top level layers on the canvas; ; An array of nodes that are direct children of this node; ; An array of nodes that are being boolean operated on
	BackgroundColor         *Color               `json:"backgroundColor"`        // Background color of the canvas; ; Background color of the node
	ExportSettings          []ExportSetting      `json:"exportSettings"`         // An array of export settings representing images to export from the canvas; ; An array of export settings representing images to export from node; ; A rectangular region of the canvas that can be exported
	Effects                 []Effect             `json:"effects"`                // An array of effects attached to this node (see effects section for more details)
	LayoutGrids             []LayoutGrid         `json:"layoutGrids"`            // An array of layout grids attached to this node (see layout grids section for more; details). GROUP nodes do not have this attribute
	Opacity                 *float64             `json:"opacity"`                // Opacity of the node
	TransitionID            *string              `json:"transitionID"`           // Node ID of node to transition to in prototyping
	AbsoluteBoundingBox     *Rectangle           `json:"absoluteBoundingBox"`    // Bounding box of the node in absolute space coordinates
	BlendMode               *BlendMode           `json:"blendMode"`              // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	Constraints             *LayoutConstraint    `json:"constraints"`            // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	IsMask                  *bool                `json:"isMask"`                 // Does this node mask sibling nodes in front of it?
	ClipsContent            *bool                `json:"clipsContent"`           // Does this node clip content outside of its bounds?
	PreserveRatio           *bool                `json:"preserveRatio"`          // How this node blends with nodes behind it in the scene (see blend mode section for more; details)
	StrokeAlign             *StrokeAlign         `json:"strokeAlign"`            // Where stroke is drawn relative to the vector outline as a string enum; ; * INSIDE: draw stroke inside the shape boundary; * OUTSIDE: draw stroke outside the shape boundary; * CENTER: draw stroke centered along the shape boundary
	StrokeWeight            *float64             `json:"strokeWeight"`           // The weight of strokes on the node
	Fills                   []Paint              `json:"fills"`                  // An array of fill paints applied to the node
	Strokes                 []Paint              `json:"strokes"`                // An array of stroke paints applied to the node
	X                       *float64             `json:"x"`                      // X coordinate of top left corner of the rectangle
	Y                       *float64             `json:"y"`                      // Y coordinate of top left corner of the rectangle
	Width                   *float64             `json:"width"`                  // Width of the rectangle
	Height                  *float64             `json:"height"`                 // Height of the rectangle
	Characters              *string              `json:"characters"`             // Text contained within text box
	Style                   *TypeStyle           `json:"style"`                  // Style of text including font family and weight (see type style section for more; information)
	CharacterStyleOverrides []float64            `json:"characterStyleOverrides"`// Array with same number of elements as characeters in text box, each element is a; reference to the styleOverrideTable defined below and maps to the corresponding character; in the characters field. Elements with value 0 have the default type style
	StyleOverrideTable      map[string]TypeStyle `json:"styleOverrideTable"`     // Map from ID to TypeStyle for looking up style overrides
	ComponentID             *string              `json:"componentId"`            // ID of component that this instance came from, refers to components table (see endpoints; section below)
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

// The type of the node
type NodeType string
const (
	Boolean NodeType = "BOOLEAN"
	Canvas NodeType = "CANVAS"
	Ellipse NodeType = "ELLIPSE"
	Frame NodeType = "FRAME"
	Group NodeType = "GROUP"
	Instance NodeType = "INSTANCE"
	Line NodeType = "LINE"
	RegularPolygon NodeType = "REGULAR_POLYGON"
	Slice NodeType = "SLICE"
	Star NodeType = "STAR"
	Text NodeType = "TEXT"
	TypeCOMPONENT NodeType = "COMPONENT"
	TypeDOCUMENT NodeType = "DOCUMENT"
	TypeRECTANGLE NodeType = "RECTANGLE"
	Vector NodeType = "VECTOR"
)
