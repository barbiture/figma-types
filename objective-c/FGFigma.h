// To parse this JSON:
//
//   NSError *error;
//   QTFileResponse *fileResponse = [QTFileResponse fromJSON:json encoding:NSUTF8Encoding error:&error];

#import <Foundation/Foundation.h>

@class QTFileResponse;
@class QTComponent;
@class QTRectangle;
@class QTColor;
@class QTBlendMode;
@class QTPurpleNode;
@class QTNodeNode;
@class QTLayoutConstraint;
@class QTHorizontal;
@class QTVertical;
@class QTEffect;
@class QTVector2D;
@class QTEffectType;
@class QTExportSetting;
@class QTConstraint;
@class QTConstraintType;
@class QTFormat;
@class QTPaint;
@class QTColorStop;
@class QTScaleMode;
@class QTPaintType;
@class QTLayoutGrid;
@class QTAlignment;
@class QTPattern;
@class QTStrokeAlign;
@class QTTypeStyle;
@class QTTextAlignHorizontal;
@class QTTextAlignVertical;
@class QTNodeType;
@class QTDocument;
@class QTFluffyNode;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Boxed enums

/// Enum describing how layer blends with layers below
///
/// See type property for effect of this field
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@interface QTBlendMode : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTBlendMode *)color;
+ (QTBlendMode *)colorBurn;
+ (QTBlendMode *)colorDodge;
+ (QTBlendMode *)darken;
+ (QTBlendMode *)difference;
+ (QTBlendMode *)exclusion;
+ (QTBlendMode *)hardLight;
+ (QTBlendMode *)hue;
+ (QTBlendMode *)lighten;
+ (QTBlendMode *)linearBurn;
+ (QTBlendMode *)linearDodge;
+ (QTBlendMode *)luminosity;
+ (QTBlendMode *)multiply;
+ (QTBlendMode *)normal;
+ (QTBlendMode *)overlay;
+ (QTBlendMode *)passThrough;
+ (QTBlendMode *)saturation;
+ (QTBlendMode *)screen;
+ (QTBlendMode *)softLight;
@end

/// * LEFT: Node is laid out relative to left of the containing frame
/// * RIGHT: Node is laid out relative to right of the containing frame
/// * CENTER: Node is horizontally centered relative to containing frame
/// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// * SCALE: Node scales horizontally with containing frame
@interface QTHorizontal : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTHorizontal *)center;
+ (QTHorizontal *)left;
+ (QTHorizontal *)leftRight;
+ (QTHorizontal *)right;
+ (QTHorizontal *)scale;
@end

/// * TOP: Node is laid out relative to top of the containing frame
/// * BOTTOM: Node is laid out relative to bottom of the containing frame
/// * CENTER: Node is vertically centered relative to containing frame
/// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// * SCALE: Node scales vertically with containing frame
@interface QTVertical : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTVertical *)bottom;
+ (QTVertical *)center;
+ (QTVertical *)scale;
+ (QTVertical *)top;
+ (QTVertical *)topBottom;
@end

/// Type of effect as a string enum
@interface QTEffectType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTEffectType *)backgroundBlur;
+ (QTEffectType *)dropShadow;
+ (QTEffectType *)innerShadow;
+ (QTEffectType *)layerBlur;
@end

/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
@interface QTConstraintType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTConstraintType *)height;
+ (QTConstraintType *)scale;
+ (QTConstraintType *)width;
@end

/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
@interface QTFormat : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTFormat *)jpg;
+ (QTFormat *)png;
+ (QTFormat *)svg;
@end

/// (For image paints) Image scaling mode
@interface QTScaleMode : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTScaleMode *)fill;
+ (QTScaleMode *)fit;
+ (QTScaleMode *)stretch;
+ (QTScaleMode *)tile;
@end

/// Type of paint as a string enum
@interface QTPaintType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTPaintType *)emoji;
+ (QTPaintType *)gradientAngular;
+ (QTPaintType *)gradientDiamond;
+ (QTPaintType *)gradientLinear;
+ (QTPaintType *)gradientRadial;
+ (QTPaintType *)image;
+ (QTPaintType *)solid;
@end

/// Positioning of grid as a string enum
///
/// * MIN: Grid starts at the left or top of the frame
/// * MAX: Grid starts at the right or bottom of the frame
/// * CENTER: Grid is center aligned
@interface QTAlignment : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTAlignment *)center;
+ (QTAlignment *)max;
+ (QTAlignment *)min;
@end

/// * COLUMNS: Vertical grid
/// * ROWS: Horizontal grid
/// * GRID: Square grid
@interface QTPattern : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTPattern *)columns;
+ (QTPattern *)grid;
+ (QTPattern *)rows;
@end

/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@interface QTStrokeAlign : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTStrokeAlign *)center;
+ (QTStrokeAlign *)inside;
+ (QTStrokeAlign *)outside;
@end

/// Horizontal text alignment as string enum
@interface QTTextAlignHorizontal : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTTextAlignHorizontal *)center;
+ (QTTextAlignHorizontal *)justified;
+ (QTTextAlignHorizontal *)left;
+ (QTTextAlignHorizontal *)right;
@end

/// Vertical text alignment as string enum
@interface QTTextAlignVertical : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTTextAlignVertical *)bottom;
+ (QTTextAlignVertical *)center;
+ (QTTextAlignVertical *)top;
@end

/// The type of the node
@interface QTNodeType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTNodeType *)boolean;
+ (QTNodeType *)canvas;
+ (QTNodeType *)component;
+ (QTNodeType *)document;
+ (QTNodeType *)ellipse;
+ (QTNodeType *)frame;
+ (QTNodeType *)group;
+ (QTNodeType *)instance;
+ (QTNodeType *)line;
+ (QTNodeType *)rectangle;
+ (QTNodeType *)regularPolygon;
+ (QTNodeType *)slice;
+ (QTNodeType *)star;
+ (QTNodeType *)text;
+ (QTNodeType *)vector;
@end

#pragma mark - Object interfaces

/// GET /v1/files/:key
///
/// Returns the document refered to by :key as a JSON object. The file key can be parsed from
/// any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
/// contains a Node of type DOCUMENT.
@interface QTFileResponse : NSObject
/// The root node within the document
@property (nonatomic, strong) QTDocument *document;
/// A mapping from node IDs to component metadata. This is to help you determine which
/// components each instance comes from. Currently the only piece of metadata available on
/// components is the name of the component, but more properties will be forthcoming.
@property (nonatomic, copy)   NSDictionary<NSString *, QTComponent *> *components;
@property (nonatomic, assign) double schemaVersion;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A mapping from node IDs to component metadata. This is to help you determine which
/// components each instance comes from. Currently the only piece of metadata available on
/// components is the name of the component, but more properties will be forthcoming.
///
/// A node that can have instances created of it that share the same properties
///
/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
///
/// The root node within the document
///
/// A rectangular region of the canvas that can be exported
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// See type property for effect of this field
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Opacity of the node
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the grid currently visible?
///
/// Does this node mask sibling nodes in front of it?
///
/// Does this node clip content outside of its bounds?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the paint enabled?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// File suffix to append to all filenames
///
/// Node ID of node to transition to in prototyping
///
/// A group that has a boolean operation applied to it
///
/// A text box
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@interface QTComponent : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffect *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, copy) NSArray<QTLayoutGrid *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionID;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRectangle *absoluteBoundingBox;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// Background color of the node
@property (nonatomic, strong) QTColor *backgroundColor;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, assign) BOOL isClipsContent;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSetting *> *exportSettings;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;
/// An array of nodes that are direct children of this node
@property (nonatomic, copy) NSArray<QTPurpleNode *> *children;
@end

/// A rectangle that expresses a bounding box in absolute coordinates
///
/// Bounding box of the node in absolute space coordinates
///
/// An array of canvases attached to the document
@interface QTRectangle : NSObject
/// X coordinate of top left corner of the rectangle
@property (nonatomic, assign) double x;
/// Y coordinate of top left corner of the rectangle
@property (nonatomic, assign) double y;
/// Width of the rectangle
@property (nonatomic, assign) double width;
/// Height of the rectangle
@property (nonatomic, assign) double height;
@end

/// An RGBA color
///
/// Background color of the canvas
///
/// See type property for effect of this field
///
/// Color of the grid
///
/// Background color of the node
///
/// (For solid paints) Solid color of the paint
///
/// Color attached to corresponding position
@interface QTColor : NSObject
/// Red channel value, between 0 and 1
@property (nonatomic, assign) double r;
/// Green channel value, between 0 and 1
@property (nonatomic, assign) double g;
/// Blue channel value, between 0 and 1
@property (nonatomic, assign) double b;
/// Alpha channel value, between 0 and 1
@property (nonatomic, assign) double a;
@end

/// An array of nodes that are direct children of this node
///
/// An array of canvases attached to the document
///
/// The root node within the document
///
/// Properties are shared across all nodes
///
/// A rectangular region of the canvas that can be exported
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// See type property for effect of this field
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Opacity of the node
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the grid currently visible?
///
/// Does this node mask sibling nodes in front of it?
///
/// Does this node clip content outside of its bounds?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the paint enabled?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// File suffix to append to all filenames
///
/// Node ID of node to transition to in prototyping
///
/// A group that has a boolean operation applied to it
///
/// A text box
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// A logical grouping of nodes
///
/// A regular star shape
///
/// A straight line
///
/// An ellipse
///
/// A regular n-sided polygon
///
/// A rectangle that expresses a bounding box in absolute coordinates
///
/// Bounding box of the node in absolute space coordinates
///
/// A node that can have instances created of it that share the same properties
@interface QTPurpleNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, nullable, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// The type of the node
@property (nonatomic, nullable, assign) QTNodeType *type;
/// An array of canvases attached to the document
///
/// An array of top level layers on the canvas
///
/// An array of nodes that are direct children of this node
///
/// An array of nodes that are being boolean operated on
@property (nonatomic, nullable, copy) NSArray<QTNodeNode *> *children;
/// Background color of the canvas
///
/// Background color of the node
@property (nonatomic, nullable, strong) QTColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
@property (nonatomic, nullable, copy) NSArray<QTExportSetting *> *exportSettings;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, nullable, copy) NSArray<QTEffect *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGrid *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionID;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTRectangle *absoluteBoundingBox;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) QTLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, nullable, strong) NSNumber *clipsContent;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaint *> *fills;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaint *> *strokes;
/// X coordinate of top left corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *x;
/// Y coordinate of top left corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *y;
/// Width of the rectangle
@property (nonatomic, nullable, strong) NSNumber *width;
/// Height of the rectangle
@property (nonatomic, nullable, strong) NSNumber *height;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Style of text including font family and weight (see type style section for more
/// information)
@property (nonatomic, nullable, strong) QTTypeStyle *style;
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSDictionary<NSString *, QTTypeStyle *> *styleOverrideTable;
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@property (nonatomic, nullable, copy) NSString *componentID;
@end

/// An array of canvases attached to the document
///
/// The root node within the document
///
/// Properties are shared across all nodes
///
/// A rectangular region of the canvas that can be exported
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// See type property for effect of this field
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Opacity of the node
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the grid currently visible?
///
/// Does this node mask sibling nodes in front of it?
///
/// Does this node clip content outside of its bounds?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the paint enabled?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// File suffix to append to all filenames
///
/// Node ID of node to transition to in prototyping
///
/// A group that has a boolean operation applied to it
///
/// A text box
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// A logical grouping of nodes
///
/// A regular star shape
///
/// A straight line
///
/// An ellipse
///
/// A regular n-sided polygon
///
/// A rectangle that expresses a bounding box in absolute coordinates
///
/// Bounding box of the node in absolute space coordinates
///
/// A node that can have instances created of it that share the same properties
///
/// An array of top level layers on the canvas
///
/// An array of nodes that are direct children of this node
///
/// An array of nodes that are being boolean operated on
@interface QTNodeNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, nullable, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// The type of the node
@property (nonatomic, nullable, assign) QTNodeType *type;
/// An array of canvases attached to the document
///
/// An array of top level layers on the canvas
///
/// An array of nodes that are direct children of this node
///
/// An array of nodes that are being boolean operated on
@property (nonatomic, nullable, copy) NSArray<QTNodeNode *> *children;
/// Background color of the canvas
///
/// Background color of the node
@property (nonatomic, nullable, strong) QTColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
@property (nonatomic, nullable, copy) NSArray<QTExportSetting *> *exportSettings;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, nullable, copy) NSArray<QTEffect *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGrid *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionID;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTRectangle *absoluteBoundingBox;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) QTLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, nullable, strong) NSNumber *clipsContent;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaint *> *fills;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaint *> *strokes;
/// X coordinate of top left corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *x;
/// Y coordinate of top left corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *y;
/// Width of the rectangle
@property (nonatomic, nullable, strong) NSNumber *width;
/// Height of the rectangle
@property (nonatomic, nullable, strong) NSNumber *height;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Style of text including font family and weight (see type style section for more
/// information)
@property (nonatomic, nullable, strong) QTTypeStyle *style;
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSDictionary<NSString *, QTTypeStyle *> *styleOverrideTable;
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@property (nonatomic, nullable, copy) NSString *componentID;
@end

/// Layout constraint relative to containing Frame
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@interface QTLayoutConstraint : NSObject
/// * TOP: Node is laid out relative to top of the containing frame
/// * BOTTOM: Node is laid out relative to bottom of the containing frame
/// * CENTER: Node is vertically centered relative to containing frame
/// * TOP_BOTTOM: Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// * SCALE: Node scales vertically with containing frame
@property (nonatomic, assign) QTVertical *vertical;
/// * LEFT: Node is laid out relative to left of the containing frame
/// * RIGHT: Node is laid out relative to right of the containing frame
/// * CENTER: Node is horizontally centered relative to containing frame
/// * LEFT_RIGHT: Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// * SCALE: Node scales horizontally with containing frame
@property (nonatomic, assign) QTHorizontal *horizontal;
@end

/// A visual effect such as a shadow or blur
///
/// An array of effects attached to this node (see effects section for more details)
@interface QTEffect : NSObject
/// Type of effect as a string enum
@property (nonatomic, assign) QTEffectType *type;
/// See type property for effect of this field
@property (nonatomic, assign) double radius;
/// See type property for effect of this field
@property (nonatomic, assign) BOOL isVisible;
/// See type property for effect of this field
@property (nonatomic, strong) QTColor *color;
/// See type property for effect of this field
@property (nonatomic, assign) QTBlendMode *blendMode;
/// See type property for effect of this field
@property (nonatomic, strong) QTVector2D *offset;
@end

/// A 2d vector
///
/// See type property for effect of this field
///
/// (For gradient paints) This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left corner of the
/// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
/// corresponds to the start of the gradient (value 0 for the purposes of calculating
/// gradient stops), the second position is the end of the gradient (value 1), and the third
/// handle position determines the width of the gradient (only relevant for non-linear
/// gradients).
@interface QTVector2D : NSObject
/// X coordinate of the vector
@property (nonatomic, assign) double x;
/// Y coordinate of the vector
@property (nonatomic, assign) double y;
@end

/// Format and size to export an asset at
///
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
@interface QTExportSetting : NSObject
/// File suffix to append to all filenames
@property (nonatomic, copy) NSString *suffix;
/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
@property (nonatomic, assign) QTFormat *format;
/// Constraint that determines sizing of exported asset
@property (nonatomic, strong) QTConstraint *constraint;
@end

/// Sizing constraint for exports
///
/// Constraint that determines sizing of exported asset
@interface QTConstraint : NSObject
/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
@property (nonatomic, assign) QTConstraintType *type;
/// See type property for effect of this field
@property (nonatomic, assign) double value;
@end

/// A solid color, gradient, or image texture that can be applied as fills or strokes
///
/// An array of fill paints applied to the node
///
/// An array of stroke paints applied to the node
///
/// Paints applied to characters
@interface QTPaint : NSObject
/// Type of paint as a string enum
@property (nonatomic, assign) QTPaintType *type;
/// Is the paint enabled?
@property (nonatomic, assign) BOOL isVisible;
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
@property (nonatomic, assign) double opacity;
/// (For solid paints) Solid color of the paint
@property (nonatomic, nullable, strong) QTColor *color;
/// (For gradient paints) This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left corner of the
/// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
/// corresponds to the start of the gradient (value 0 for the purposes of calculating
/// gradient stops), the second position is the end of the gradient (value 1), and the third
/// handle position determines the width of the gradient (only relevant for non-linear
/// gradients).
@property (nonatomic, nullable, copy) NSArray<QTVector2D *> *gradientHandlePositions;
/// (For gradient paints) Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly between neighboring
/// gradient stops.
@property (nonatomic, nullable, copy) NSArray<QTColorStop *> *gradientStops;
/// (For image paints) Image scaling mode
@property (nonatomic, nullable, assign) QTScaleMode *scaleMode;
@end

/// A position color pair representing a gradient stop
///
/// (For gradient paints) Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly between neighboring
/// gradient stops.
@interface QTColorStop : NSObject
/// Color attached to corresponding position
@property (nonatomic, strong) QTColor *color;
/// Value between 0 and 1 representing position along gradient axis
@property (nonatomic, assign) double position;
@end

/// Guides to align and place objects within a frame
///
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@interface QTLayoutGrid : NSObject
/// * COLUMNS: Vertical grid
/// * ROWS: Horizontal grid
/// * GRID: Square grid
@property (nonatomic, assign) QTPattern *pattern;
/// Width of column grid or height of row grid or square grid spacing
@property (nonatomic, assign) double sectionSize;
/// Is the grid currently visible?
@property (nonatomic, assign) BOOL isVisible;
/// Color of the grid
@property (nonatomic, strong) QTColor *color;
/// Positioning of grid as a string enum
///
/// * MIN: Grid starts at the left or top of the frame
/// * MAX: Grid starts at the right or bottom of the frame
/// * CENTER: Grid is center aligned
@property (nonatomic, assign) QTAlignment *alignment;
/// Spacing in between columns and rows
@property (nonatomic, assign) double gutterSize;
/// Spacing before the first column or row
@property (nonatomic, assign) double offset;
/// Number of columns or rows
@property (nonatomic, assign) double count;
@end

/// Metadata for character formatting
///
/// Style of text including font family and weight (see type style section for more
/// information)
///
/// Map from ID to TypeStyle for looking up style overrides
@interface QTTypeStyle : NSObject
/// Line height in px
@property (nonatomic, assign) double lineHeightPx;
/// PostScript font name
@property (nonatomic, copy) NSString *fontPostScriptName;
/// Numeric font weight
@property (nonatomic, assign) double fontWeight;
/// Line height as a percentage of normal line height
@property (nonatomic, assign) double lineHeightPercent;
/// Vertical text alignment as string enum
@property (nonatomic, assign) QTTextAlignVertical *textAlignVertical;
/// Font size in px
@property (nonatomic, assign) double fontSize;
/// Is text italicized?
@property (nonatomic, assign) BOOL isItalic;
/// Paints applied to characters
@property (nonatomic, copy) NSArray<QTPaint *> *fills;
/// Font family of text (standard name)
@property (nonatomic, copy) NSString *fontFamily;
/// Horizontal text alignment as string enum
@property (nonatomic, assign) QTTextAlignHorizontal *textAlignHorizontal;
/// Space between characters in px
@property (nonatomic, assign) double letterSpacing;
@end

/// The root node within the document
///
/// Properties are shared across all nodes
///
/// An array of canvases attached to the document
///
/// A rectangular region of the canvas that can be exported
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// See type property for effect of this field
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Opacity of the node
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the grid currently visible?
///
/// Does this node mask sibling nodes in front of it?
///
/// Does this node clip content outside of its bounds?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the paint enabled?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// File suffix to append to all filenames
///
/// Node ID of node to transition to in prototyping
///
/// A group that has a boolean operation applied to it
///
/// A text box
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@interface QTDocument : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTNodeType *type;
/// An array of canvases attached to the document
@property (nonatomic, copy) NSArray<QTFluffyNode *> *children;
@end

/// An array of canvases attached to the document
///
/// The root node within the document
///
/// Properties are shared across all nodes
///
/// A rectangular region of the canvas that can be exported
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// See type property for effect of this field
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Opacity of the node
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// Line height in px
///
/// Numeric font weight
///
/// Line height as a percentage of normal line height
///
/// Font size in px
///
/// Space between characters in px
///
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
///
/// Whether or not the node is visible on the canvas
///
/// Is the grid currently visible?
///
/// Does this node mask sibling nodes in front of it?
///
/// Does this node clip content outside of its bounds?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the paint enabled?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// File suffix to append to all filenames
///
/// Node ID of node to transition to in prototyping
///
/// A group that has a boolean operation applied to it
///
/// A text box
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// A logical grouping of nodes
///
/// A regular star shape
///
/// A straight line
///
/// An ellipse
///
/// A regular n-sided polygon
///
/// A rectangle that expresses a bounding box in absolute coordinates
///
/// Bounding box of the node in absolute space coordinates
///
/// A node that can have instances created of it that share the same properties
@interface QTFluffyNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, nullable, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// The type of the node
@property (nonatomic, nullable, assign) QTNodeType *type;
/// An array of canvases attached to the document
///
/// An array of top level layers on the canvas
///
/// An array of nodes that are direct children of this node
///
/// An array of nodes that are being boolean operated on
@property (nonatomic, nullable, copy) NSArray<QTNodeNode *> *children;
/// Background color of the canvas
///
/// Background color of the node
@property (nonatomic, nullable, strong) QTColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
@property (nonatomic, nullable, copy) NSArray<QTExportSetting *> *exportSettings;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, nullable, copy) NSArray<QTEffect *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGrid *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionID;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTRectangle *absoluteBoundingBox;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) QTLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, nullable, strong) NSNumber *clipsContent;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaint *> *fills;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaint *> *strokes;
/// X coordinate of top left corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *x;
/// Y coordinate of top left corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *y;
/// Width of the rectangle
@property (nonatomic, nullable, strong) NSNumber *width;
/// Height of the rectangle
@property (nonatomic, nullable, strong) NSNumber *height;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Style of text including font family and weight (see type style section for more
/// information)
@property (nonatomic, nullable, strong) QTTypeStyle *style;
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSDictionary<NSString *, QTTypeStyle *> *styleOverrideTable;
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@property (nonatomic, nullable, copy) NSString *componentID;
@end

NS_ASSUME_NONNULL_END
