// To parse this JSON:
//
//   NSError *error;
//   FGFileResponse *fileResponse = [FGFileResponse fromJSON:json encoding:NSUTF8Encoding error:&error];
//   FGCommentsResponse *commentsResponse = [FGCommentsResponse fromJSON:json encoding:NSUTF8Encoding error:&error];
//   FGCommentRequest *commentRequest = [FGCommentRequest fromJSON:json encoding:NSUTF8Encoding error:&error];
//   FGProjectsResponse *projectsResponse = [FGProjectsResponse fromJSON:json encoding:NSUTF8Encoding error:&error];
//   FGProjectFilesResponse *projectFilesResponse = [FGProjectFilesResponse fromJSON:json encoding:NSUTF8Encoding error:&error];

#import <Foundation/Foundation.h>

@class FGFileResponse;
@class FGComponent;
@class FGRect;
@class FGColor;
@class FGBlendMode;
@class FGDocument;
@class FGLayoutConstraint;
@class FGHorizontal;
@class FGVertical;
@class FGEffect;
@class FGVector2;
@class FGEffectType;
@class FGExportSetting;
@class FGConstraint;
@class FGConstraintType;
@class FGFormat;
@class FGPaint;
@class FGColorStop;
@class FGFillType;
@class FGLayoutGrid;
@class FGAlignment;
@class FGPattern;
@class FGStrokeAlign;
@class FGTypeStyle;
@class FGTextAlignHorizontal;
@class FGTextAlignVertical;
@class FGNodeType;
@class FGDocumentClass;
@class FGCommentsResponse;
@class FGComment;
@class FGClientMeta;
@class FGUser;
@class FGCommentRequest;
@class FGProjectsResponse;
@class FGProject;
@class FGProjectFilesResponse;
@class FGFile;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Boxed enums

/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
///
/// Enum describing how layer blends with layers below
/// This type is a string enum with the following possible values
@interface FGBlendMode : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGBlendMode *)color;
+ (FGBlendMode *)colorBurn;
+ (FGBlendMode *)colorDodge;
+ (FGBlendMode *)darken;
+ (FGBlendMode *)difference;
+ (FGBlendMode *)exclusion;
+ (FGBlendMode *)hardLight;
+ (FGBlendMode *)hue;
+ (FGBlendMode *)lighten;
+ (FGBlendMode *)linearBurn;
+ (FGBlendMode *)linearDodge;
+ (FGBlendMode *)luminosity;
+ (FGBlendMode *)multiply;
+ (FGBlendMode *)normal;
+ (FGBlendMode *)overlay;
+ (FGBlendMode *)passThrough;
+ (FGBlendMode *)saturation;
+ (FGBlendMode *)screen;
+ (FGBlendMode *)softLight;
@end

/// Horizontal constraint as an enum
/// "LEFT": Node is laid out relative to left of the containing frame
/// "RIGHT": Node is laid out relative to right of the containing frame
/// "CENTER": Node is horizontally centered relative to containing frame
/// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales horizontally with containing frame
@interface FGHorizontal : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGHorizontal *)center;
+ (FGHorizontal *)left;
+ (FGHorizontal *)leftRight;
+ (FGHorizontal *)right;
+ (FGHorizontal *)scale;
@end

/// Vertical constraint as an enum
/// "TOP": Node is laid out relative to top of the containing frame
/// "BOTTOM": Node is laid out relative to bottom of the containing frame
/// "CENTER": Node is vertically centered relative to containing frame
/// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales vertically with containing frame
@interface FGVertical : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGVertical *)bottom;
+ (FGVertical *)center;
+ (FGVertical *)scale;
+ (FGVertical *)top;
+ (FGVertical *)topBottom;
@end

/// Type of effect as a string enum
@interface FGEffectType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGEffectType *)backgroundBlur;
+ (FGEffectType *)dropShadow;
+ (FGEffectType *)innerShadow;
+ (FGEffectType *)layerBlur;
@end

/// Type of constraint to apply; string enum with potential values below
/// "SCALE": Scale by value
/// "WIDTH": Scale proportionally and set width to value
/// "HEIGHT": Scale proportionally and set height to value
@interface FGConstraintType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGConstraintType *)height;
+ (FGConstraintType *)scale;
+ (FGConstraintType *)width;
@end

/// Image type, string enum
@interface FGFormat : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGFormat *)jpg;
+ (FGFormat *)png;
+ (FGFormat *)svg;
@end

/// Type of paint as a string enum
@interface FGFillType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGFillType *)emoji;
+ (FGFillType *)gradientAngular;
+ (FGFillType *)gradientDiamond;
+ (FGFillType *)gradientLinear;
+ (FGFillType *)gradientRadial;
+ (FGFillType *)image;
+ (FGFillType *)solid;
@end

/// Positioning of grid as a string enum
/// "MIN": Grid starts at the left or top of the frame
/// "MAX": Grid starts at the right or bottom of the frame
/// "CENTER": Grid is center aligned
@interface FGAlignment : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGAlignment *)center;
+ (FGAlignment *)max;
+ (FGAlignment *)min;
@end

/// Orientation of the grid as a string enum
/// "COLUMNS": Vertical grid
/// "ROWS": Horizontal grid
/// "GRID": Square grid
@interface FGPattern : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGPattern *)columns;
+ (FGPattern *)grid;
+ (FGPattern *)rows;
@end

/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@interface FGStrokeAlign : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGStrokeAlign *)center;
+ (FGStrokeAlign *)inside;
+ (FGStrokeAlign *)outside;
@end

/// Horizontal text alignment as string enum
@interface FGTextAlignHorizontal : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGTextAlignHorizontal *)center;
+ (FGTextAlignHorizontal *)justified;
+ (FGTextAlignHorizontal *)left;
+ (FGTextAlignHorizontal *)right;
@end

/// Vertical text alignment as string enum
@interface FGTextAlignVertical : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGTextAlignVertical *)bottom;
+ (FGTextAlignVertical *)center;
+ (FGTextAlignVertical *)top;
@end

/// the type of the node, refer to table below for details
@interface FGNodeType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGNodeType *)boolean;
+ (FGNodeType *)canvas;
+ (FGNodeType *)component;
+ (FGNodeType *)document;
+ (FGNodeType *)ellipse;
+ (FGNodeType *)frame;
+ (FGNodeType *)group;
+ (FGNodeType *)instance;
+ (FGNodeType *)line;
+ (FGNodeType *)rectangle;
+ (FGNodeType *)regularPolygon;
+ (FGNodeType *)slice;
+ (FGNodeType *)star;
+ (FGNodeType *)text;
+ (FGNodeType *)vector;
@end

#pragma mark - Object interfaces

/// GET /v1/files/:key
///
/// > Description
///
/// Returns the document refered to by :key as a JSON object. The file key can be parsed from
/// any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
/// contains a Node of type DOCUMENT.
///
/// The "components" key contains a mapping from node IDs to component metadata. This is to
/// help you determine which components each instance comes from. Currently the only piece of
/// metadata available on components is the name of the component, but more properties will
/// be forthcoming.
///
/// > Path parameters
///
/// key String
/// File to export JSON from
@interface FGFileResponse : NSObject
/// A mapping from node IDs to component metadata. This is to help you determine which
/// components each instance comes from. Currently the only piece of metadata available on
/// components is the name of the component, but more properties will be forthcoming.
@property (nonatomic, copy) NSDictionary<NSString *, FGComponent *> *components;
/// The root node within the document
@property (nonatomic, strong) FGDocumentClass *document;
@property (nonatomic, assign) double schemaVersion;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A node that can have instances created of it that share the same properties
/// A description of a master component. Helps you identify which component
/// instances are attached to
@interface FGComponent : NSObject
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) FGRect *absoluteBoundingBox;
/// Background color of the node
@property (nonatomic, strong) FGColor *backgroundColor;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, assign) FGBlendMode *blendMode;
/// An array of nodes that are direct children of this node
@property (nonatomic, copy) NSArray<FGDocument *> *children;
/// Does this node clip content outside of its bounds?
@property (nonatomic, assign) BOOL isClipsContent;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, strong) FGLayoutConstraint *constraints;
/// The description of the component as entered in the editor
@property (nonatomic, copy) NSString *theDescription;
/// An array of effects attached to this node
/// (see effects section for more details)
@property (nonatomic, copy) NSArray<FGEffect *> *effects;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<FGExportSetting *> *exportSettings;
/// a string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
@property (nonatomic, copy) NSArray<FGLayoutGrid *> *layoutGrids;
/// The name of the component
@property (nonatomic, copy) NSString *name;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Keep height and width constrained to same ratio
@property (nonatomic, assign) BOOL isPreserveRatio;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// the type of the node, refer to table below for details
@property (nonatomic, assign) FGNodeType *type;
/// whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
@end

/// Bounding box of the node in absolute space coordinates
///
/// A rectangle that expresses a bounding box in absolute coordinates
@interface FGRect : NSObject
/// Height of the rectangle
@property (nonatomic, assign) double height;
/// Width of the rectangle
@property (nonatomic, assign) double width;
/// X coordinate of top left corner of the rectangle
@property (nonatomic, assign) double x;
/// Y coordinate of top left corner of the rectangle
@property (nonatomic, assign) double y;
@end

/// Background color of the node
///
/// An RGBA color
///
/// Background color of the canvas
///
/// Solid color of the paint
///
/// Color attached to corresponding position
///
/// Color of the grid
@interface FGColor : NSObject
/// Alpha channel value, between 0 and 1
@property (nonatomic, assign) double a;
/// Blue channel value, between 0 and 1
@property (nonatomic, assign) double b;
/// Green channel value, between 0 and 1
@property (nonatomic, assign) double g;
/// Red channel value, between 0 and 1
@property (nonatomic, assign) double r;
@end

/// Node Properties
/// The root node
///
/// The root node within the document
///
/// Represents a single page
///
/// A node of fixed size containing other nodes
///
/// A logical grouping of nodes
///
/// A vector network, consisting of vertices and edges
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// An ellipse
///
/// A regular n-sided polygon
///
/// A rectangle
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
/// A description of a master component. Helps you identify which component
/// instances are attached to
///
/// An instance of a component, changes to the component result in the same
/// changes applied to the instance
@interface FGDocument : NSObject
/// An array of canvases attached to the document
///
/// An array of top level layers on the canvas
///
/// An array of nodes that are direct children of this node
///
/// An array of nodes that are being boolean operated on
@property (nonatomic, nullable, copy) NSArray<FGDocument *> *children;
/// a string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// the name given to the node by the user in the tool.
///
/// The name of the component
@property (nonatomic, copy) NSString *name;
/// the type of the node, refer to table below for details
@property (nonatomic, assign) FGNodeType *type;
/// whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// Background color of the canvas
///
/// Background color of the node
@property (nonatomic, nullable, strong) FGColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// An array of export settings representing images to export from this node
@property (nonatomic, nullable, copy) NSArray<FGExportSetting *> *exportSettings;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) FGRect *absoluteBoundingBox;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) FGBlendMode *blendMode;
/// Does this node clip content outside of its bounds?
@property (nonatomic, nullable, strong) NSNumber *clipsContent;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) FGLayoutConstraint *constraints;
/// An array of effects attached to this node
/// (see effects section for more details)
@property (nonatomic, nullable, copy) NSArray<FGEffect *> *effects;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<FGLayoutGrid *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<FGPaint *> *fills;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) FGStrokeAlign *strokeAlign;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<FGPaint *> *strokes;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// Radius of each corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *cornerRadius;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Style of text including font family and weight (see type style
/// section for more information)
@property (nonatomic, nullable, strong) FGTypeStyle *style;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSArray<FGTypeStyle *> *styleOverrideTable;
/// The description of the component as entered in the editor
@property (nonatomic, nullable, copy) NSString *theDescription;
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
@property (nonatomic, nullable, copy) NSString *componentID;
@end

/// Horizontal and vertical layout constraints for node
///
/// Layout constraint relative to containing Frame
@interface FGLayoutConstraint : NSObject
/// Horizontal constraint as an enum
/// "LEFT": Node is laid out relative to left of the containing frame
/// "RIGHT": Node is laid out relative to right of the containing frame
/// "CENTER": Node is horizontally centered relative to containing frame
/// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales horizontally with containing frame
@property (nonatomic, assign) FGHorizontal *horizontal;
/// Vertical constraint as an enum
/// "TOP": Node is laid out relative to top of the containing frame
/// "BOTTOM": Node is laid out relative to bottom of the containing frame
/// "CENTER": Node is vertically centered relative to containing frame
/// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales vertically with containing frame
@property (nonatomic, assign) FGVertical *vertical;
@end

/// An array of effects attached to this node
/// (see effects section for more details)
///
/// A visual effect such as a shadow or blur
@interface FGEffect : NSObject
/// Enum describing how layer blends with layers below
/// This type is a string enum with the following possible values
@property (nonatomic, nullable, assign) FGBlendMode *blendMode;
/// An RGBA color
@property (nonatomic, nullable, strong) FGColor *color;
/// A 2d vector
@property (nonatomic, nullable, strong) FGVector2 *offset;
/// Radius of the blur effect (applies to shadows as well)
@property (nonatomic, assign) double radius;
/// Type of effect as a string enum
@property (nonatomic, assign) FGEffectType *type;
/// Is the effect active?
@property (nonatomic, assign) BOOL isVisible;
@end

/// A 2d vector
///
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
///
/// 2d vector offset within the frame.
@interface FGVector2 : NSObject
/// X coordinate of the vector
@property (nonatomic, assign) double x;
/// Y coordinate of the vector
@property (nonatomic, assign) double y;
@end

/// An array of export settings representing images to export from node
///
/// Format and size to export an asset at
///
/// An array of export settings representing images to export from this node
///
/// An array of export settings representing images to export from the canvas
@interface FGExportSetting : NSObject
/// Constraint that determines sizing of exported asset
@property (nonatomic, strong) FGConstraint *constraint;
/// Image type, string enum
@property (nonatomic, assign) FGFormat *format;
/// File suffix to append to all filenames
@property (nonatomic, copy) NSString *suffix;
@end

/// Constraint that determines sizing of exported asset
///
/// Sizing constraint for exports
@interface FGConstraint : NSObject
/// Type of constraint to apply; string enum with potential values below
/// "SCALE": Scale by value
/// "WIDTH": Scale proportionally and set width to value
/// "HEIGHT": Scale proportionally and set height to value
@property (nonatomic, assign) FGConstraintType *type;
/// See type property for effect of this field
@property (nonatomic, assign) double value;
@end

/// An array of fill paints applied to the node
///
/// A solid color, gradient, or image texture that can be applied as fills or strokes
///
/// An array of stroke paints applied to the node
///
/// Paints applied to characters
@interface FGPaint : NSObject
/// Solid color of the paint
@property (nonatomic, nullable, strong) FGColor *color;
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
@property (nonatomic, nullable, copy) NSArray<FGVector2 *> *gradientHandlePositions;
/// Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly
/// between neighboring gradient stops.
@property (nonatomic, nullable, copy) NSArray<FGColorStop *> *gradientStops;
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
@property (nonatomic, assign) double opacity;
/// Image scaling mode
@property (nonatomic, nullable, copy) NSString *scaleMode;
/// Type of paint as a string enum
@property (nonatomic, assign) FGFillType *type;
/// Is the paint enabled?
@property (nonatomic, assign) BOOL isVisible;
@end

/// Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly
/// between neighboring gradient stops.
///
/// A position color pair representing a gradient stop
@interface FGColorStop : NSObject
/// Color attached to corresponding position
@property (nonatomic, strong) FGColor *color;
/// Value between 0 and 1 representing position along gradient axis
@property (nonatomic, assign) double position;
@end

/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
///
/// Guides to align and place objects within a frame
@interface FGLayoutGrid : NSObject
/// Positioning of grid as a string enum
/// "MIN": Grid starts at the left or top of the frame
/// "MAX": Grid starts at the right or bottom of the frame
/// "CENTER": Grid is center aligned
@property (nonatomic, assign) FGAlignment *alignment;
/// Color of the grid
@property (nonatomic, strong) FGColor *color;
/// Number of columns or rows
@property (nonatomic, assign) double count;
/// Spacing in between columns and rows
@property (nonatomic, assign) double gutterSize;
/// Spacing before the first column or row
@property (nonatomic, assign) double offset;
/// Orientation of the grid as a string enum
/// "COLUMNS": Vertical grid
/// "ROWS": Horizontal grid
/// "GRID": Square grid
@property (nonatomic, assign) FGPattern *pattern;
/// Width of column grid or height of row grid or square grid spacing
@property (nonatomic, assign) double sectionSize;
/// Is the grid currently visible?
@property (nonatomic, assign) BOOL isVisible;
@end

/// Style of text including font family and weight (see type style
/// section for more information)
///
/// Metadata for character formatting
///
/// Map from ID to TypeStyle for looking up style overrides
@interface FGTypeStyle : NSObject
/// Paints applied to characters
@property (nonatomic, copy) NSArray<FGPaint *> *fills;
/// Font family of text (standard name)
@property (nonatomic, copy) NSString *fontFamily;
/// PostScript font name
@property (nonatomic, copy) NSString *fontPostScriptName;
/// Font size in px
@property (nonatomic, assign) double fontSize;
/// Numeric font weight
@property (nonatomic, assign) double fontWeight;
/// Is text italicized?
@property (nonatomic, assign) BOOL isItalic;
/// Space between characters in px
@property (nonatomic, assign) double letterSpacing;
/// Line height as a percentage of normal line height
@property (nonatomic, assign) double lineHeightPercent;
/// Line height in px
@property (nonatomic, assign) double lineHeightPx;
/// Horizontal text alignment as string enum
@property (nonatomic, assign) FGTextAlignHorizontal *textAlignHorizontal;
/// Vertical text alignment as string enum
@property (nonatomic, assign) FGTextAlignVertical *textAlignVertical;
@end

/// Node Properties
/// The root node
///
/// The root node within the document
@interface FGDocumentClass : NSObject
/// An array of canvases attached to the document
@property (nonatomic, copy) NSArray<FGDocument *> *children;
/// a string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// the name given to the node by the user in the tool.
@property (nonatomic, copy) NSString *name;
/// the type of the node, refer to table below for details
@property (nonatomic, assign) FGNodeType *type;
/// whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
@end

/// GET /v1/files/:key/comments
///
/// > Description
/// A list of comments left on the file.
///
/// > Path parameters
/// key String
/// File to get comments from
@interface FGCommentsResponse : NSObject
@property (nonatomic, copy) NSArray<FGComment *> *comments;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A comment or reply left by a user
@interface FGComment : NSObject
@property (nonatomic, strong) FGClientMeta *clientMeta;
/// The time at which the comment was left
@property (nonatomic, copy) NSString *createdAt;
/// The file in which the comment lives
@property (nonatomic, copy) NSString *fileKey;
/// Unique identifier for comment
@property (nonatomic, copy) NSString *identifier;
/// (MISSING IN DOCS)
/// The content of the comment
@property (nonatomic, copy) NSString *message;
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double orderID;
/// If present, the id of the comment to which this is the reply
@property (nonatomic, copy) NSString *parentID;
/// If set, when the comment was resolved
@property (nonatomic, nullable, copy) NSString *resolvedAt;
/// The user who left the comment
@property (nonatomic, strong) FGUser *user;
@end

/// A 2d vector
///
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
///
/// 2d vector offset within the frame.
///
/// A relative offset within a frame
@interface FGClientMeta : NSObject
/// X coordinate of the vector
@property (nonatomic, nullable, strong) NSNumber *x;
/// Y coordinate of the vector
@property (nonatomic, nullable, strong) NSNumber *y;
/// Unique id specifying the frame.
@property (nonatomic, nullable, copy) NSArray<NSString *> *nodeID;
/// 2d vector offset within the frame.
@property (nonatomic, nullable, strong) FGVector2 *nodeOffset;
@end

/// The user who left the comment
///
/// A description of a user
@interface FGUser : NSObject
@property (nonatomic, copy) NSString *handle;
@property (nonatomic, copy) NSString *imgURL;
@end

/// POST /v1/files/:key/comments
///
/// > Description
/// Posts a new comment on the file.
///
/// > Path parameters
/// key String
/// File to get comments from
///
/// > Body parameters
/// message String
/// The text contents of the comment to post
///
/// client_meta Vector2 | FrameOffset
/// The position of where to place the comment. This can either be an absolute canvas
/// position or the relative position within a frame.
///
/// > Return value
/// The Comment that was successfully posted
///
/// > Error codes
/// 404 The specified file was not found
@interface FGCommentRequest : NSObject
@property (nonatomic, strong) FGClientMeta *clientMeta;
@property (nonatomic, copy)   NSString *message;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// GET /v1/teams/:team_id/projects
///
/// > Description
/// Lists the projects for a specified team. Note that this will only return projects visible
/// to the authenticated user or owner of the developer token.
///
/// > Path parameters
/// team_id String
/// Id of the team to list projects from
@interface FGProjectsResponse : NSObject
@property (nonatomic, copy) NSArray<FGProject *> *projects;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

@interface FGProject : NSObject
@property (nonatomic, assign) double identifier;
@property (nonatomic, copy)   NSString *name;
@end

/// GET /v1/projects/:project_id/files
///
/// > Description
/// List the files in a given project.
///
/// > Path parameters
/// project_id String
/// Id of the project to list files from
@interface FGProjectFilesResponse : NSObject
@property (nonatomic, copy) NSArray<FGFile *> *files;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

@interface FGFile : NSObject
@property (nonatomic, copy) NSString *key;
/// utc date in iso8601
@property (nonatomic, copy) NSString *lastModified;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *thumbnailURL;
@end

NS_ASSUME_NONNULL_END
