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
@class FGRectangle;
@class FGBlendMode;
@class FGLayoutConstraint;
@class FGHorizontal;
@class FGVertical;
@class FGEffect;
@class FGColor;
@class FGVector2;
@class FGEffectType;
@class FGExportSetting;
@class FGConstraint;
@class FGConstraintType;
@class FGFormat;
@class FGPaint;
@class FGColorStop;
@class FGPaintType;
@class FGStrokeAlign;
@class FGNodeType;
@class FGNode;
@class FGLayoutGrid;
@class FGAlignment;
@class FGPattern;
@class FGTypeStyle;
@class FGTextAlignHorizontal;
@class FGTextAlignVertical;
@class FGDocument;
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

/// Enum describing how layer blends with layers below
/// This type is a string enum with the following possible values
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
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
@interface FGPaintType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (FGPaintType *)emoji;
+ (FGPaintType *)gradientAngular;
+ (FGPaintType *)gradientDiamond;
+ (FGPaintType *)gradientLinear;
+ (FGPaintType *)gradientRadial;
+ (FGPaintType *)image;
+ (FGPaintType *)solid;
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

#pragma mark - Object interfaces

@interface FGFileResponse : NSObject
/// Node Properties
/// The root node
/// The root node within the document
@property (nonatomic, strong) FGDocument *document;
/// A mapping from node IDs to component metadata. This is to help you determine which
/// components each instance comes from. Currently the only piece of metadata available on
/// components is the name of the component, but more properties will be forthcoming.
@property (nonatomic, copy) NSDictionary<NSString *, FGComponent *> *components;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double schemaVersion;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A node that can have instances created of it that share the same properties
@interface FGComponent : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, copy) NSArray<FGEffect *> *effects;
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
@property (nonatomic, copy) NSArray<FGLayoutGrid *> *layoutGrids;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double opacity;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *name;
/// Bounding box of the node in absolute space coordinates
/// A rectangle
@property (nonatomic, strong) FGRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isVisible;
/// Enum describing how layer blends with layers below
/// This type is a string enum with the following possible values
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, assign) FGBlendMode *blendMode;
/// Background color of the node
/// An RGBA color
/// Solid color of the paint
/// Color attached to corresponding position
/// Color of the grid
/// Background color of the canvas
@property (nonatomic, strong) FGColor *backgroundColor;
/// Horizontal and vertical layout constraints for node
/// Layout constraint relative to containing Frame
@property (nonatomic, strong) FGLayoutConstraint *constraints;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isMask;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isClipsContent;
/// An array of export settings representing images to export from node
/// An array of export settings representing images to export from this node
/// An array of export settings representing images to export from the canvas
@property (nonatomic, copy) NSArray<FGExportSetting *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, assign) FGNodeType *type;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *identifier;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isPreserveRatio;
/// An array of nodes that are direct children of this node
/// An array of nodes that are being boolean operated on
/// An array of top level layers on the canvas
/// An array of canvases attached to the document
@property (nonatomic, copy) NSArray<FGNode *> *children;
@end

/// Bounding box of the node in absolute space coordinates
/// A rectangle
@interface FGRectangle : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, copy) NSArray<FGEffect *> *effects;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double cornerRadius;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double opacity;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *name;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, assign) FGStrokeAlign *strokeAlign;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double strokeWeight;
/// An array of fill paints applied to the node
/// An array of stroke paints applied to the node
/// Paints applied to characters
@property (nonatomic, copy) NSArray<FGPaint *> *fills;
/// Bounding box of the node in absolute space coordinates
/// A rectangle
@property (nonatomic, strong) FGRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isVisible;
/// Enum describing how layer blends with layers below
/// This type is a string enum with the following possible values
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, assign) FGBlendMode *blendMode;
/// Horizontal and vertical layout constraints for node
/// Layout constraint relative to containing Frame
@property (nonatomic, strong) FGLayoutConstraint *constraints;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isMask;
/// An array of export settings representing images to export from node
/// An array of export settings representing images to export from this node
/// An array of export settings representing images to export from the canvas
@property (nonatomic, copy) NSArray<FGExportSetting *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, assign) FGNodeType *type;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *identifier;
/// An array of fill paints applied to the node
/// An array of stroke paints applied to the node
/// Paints applied to characters
@property (nonatomic, copy) NSArray<FGPaint *> *strokes;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isPreserveRatio;
@end

/// Horizontal and vertical layout constraints for node
/// Layout constraint relative to containing Frame
@interface FGLayoutConstraint : NSObject
/// Vertical constraint as an enum
/// "TOP": Node is laid out relative to top of the containing frame
/// "BOTTOM": Node is laid out relative to bottom of the containing frame
/// "CENTER": Node is vertically centered relative to containing frame
/// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales vertically with containing frame
@property (nonatomic, assign) FGVertical *vertical;
/// Horizontal constraint as an enum
/// "LEFT": Node is laid out relative to left of the containing frame
/// "RIGHT": Node is laid out relative to right of the containing frame
/// "CENTER": Node is horizontally centered relative to containing frame
/// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales horizontally with containing frame
@property (nonatomic, assign) FGHorizontal *horizontal;
@end

/// An array of effects attached to this node
/// (see effects sectionfor more details)
/// A visual effect such as a shadow or blur
@interface FGEffect : NSObject
/// Type of effect as a string enum
@property (nonatomic, assign) FGEffectType *type;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isVisible;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double radius;
/// Background color of the node
/// An RGBA color
/// Solid color of the paint
/// Color attached to corresponding position
/// Color of the grid
/// Background color of the canvas
@property (nonatomic, nullable, strong) FGColor *color;
/// Enum describing how layer blends with layers below
/// This type is a string enum with the following possible values
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) FGBlendMode *blendMode;
/// 2d vector offset within the frame.
/// A 2d vector
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
@property (nonatomic, nullable, strong) FGVector2 *offset;
@end

/// Background color of the node
/// An RGBA color
/// Solid color of the paint
/// Color attached to corresponding position
/// Color of the grid
/// Background color of the canvas
@interface FGColor : NSObject
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double r;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double g;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double b;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double a;
@end

/// 2d vector offset within the frame.
/// A 2d vector
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
@interface FGVector2 : NSObject
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double x;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double y;
@end

/// An array of export settings representing images to export from node
/// Format and size to export an asset at
/// An array of export settings representing images to export from the canvas
/// An array of export settings representing images to export from this node
@interface FGExportSetting : NSObject
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *suffix;
/// Image type, string enum
@property (nonatomic, assign) FGFormat *format;
/// Constraint that determines sizing of exported asset
/// Sizing constraint for exports
@property (nonatomic, strong) FGConstraint *constraint;
@end

/// Constraint that determines sizing of exported asset
/// Sizing constraint for exports
@interface FGConstraint : NSObject
/// Type of constraint to apply; string enum with potential values below
/// "SCALE": Scale by value
/// "WIDTH": Scale proportionally and set width to value
/// "HEIGHT": Scale proportionally and set height to value
@property (nonatomic, assign) FGConstraintType *type;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double value;
@end

/// An array of fill paints applied to the node
/// A solid color, gradient, or image texture that can be applied as fills or strokes
/// An array of stroke paints applied to the node
/// Paints applied to characters
@interface FGPaint : NSObject
/// Type of paint as a string enum
@property (nonatomic, assign) FGPaintType *type;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isVisible;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double opacity;
/// Background color of the node
/// An RGBA color
/// Solid color of the paint
/// Color attached to corresponding position
/// Color of the grid
/// Background color of the canvas
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
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, nullable, copy) NSString *scaleMode;
@end

/// Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly
/// between neighboring gradient stops.
/// A position color pair representing a gradient stop
@interface FGColorStop : NSObject
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double position;
/// Background color of the node
/// An RGBA color
/// Solid color of the paint
/// Color attached to corresponding position
/// Color of the grid
/// Background color of the canvas
@property (nonatomic, strong) FGColor *color;
@end

/// An array of nodes that are direct children of this node
/// An array of nodes that are being boolean operated on
/// An array of top level layers on the canvas
/// An array of canvases attached to the document
/// Node Properties
/// The root node
/// The root node within the document
/// Represents a single page
/// A node of fixed size containing other nodes
/// A logical grouping of nodes
/// A vector network, consisting of vertices and edges
/// A group that has a boolean operation applied to it
/// A regular star shape
/// A straight line
/// An ellipse
/// A regular n-sided polygon
/// Bounding box of the node in absolute space coordinates
/// A rectangle
/// A text box
/// A rectangular region of the canvas that can be exported
/// A node that can have instances created of it that share the same properties
/// An instance of a component, changes to the component result in the same
/// changes applied to the instance
@interface FGNode : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<FGEffect *> *effects;
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<FGLayoutGrid *> *layoutGrids;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, nullable, strong) NSNumber *cornerRadius;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, nullable, copy) NSString *characters;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *name;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) FGStrokeAlign *strokeAlign;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
/// An array of stroke paints applied to the node
/// Paints applied to characters
@property (nonatomic, nullable, copy) NSArray<FGPaint *> *fills;
/// Bounding box of the node in absolute space coordinates
/// A rectangle
@property (nonatomic, nullable, strong) FGRectangle *absoluteBoundingBox;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSArray<FGTypeStyle *> *styleOverrideTable;
/// Map from ID to TypeStyle for looking up style overrides
/// Metadata for character formatting
/// Style of text including font family and weight (see type style
/// section for more information)
@property (nonatomic, nullable, strong) FGTypeStyle *style;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isVisible;
/// Enum describing how layer blends with layers below
/// This type is a string enum with the following possible values
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) FGBlendMode *blendMode;
/// Background color of the node
/// An RGBA color
/// Solid color of the paint
/// Color attached to corresponding position
/// Color of the grid
/// Background color of the canvas
@property (nonatomic, nullable, strong) FGColor *backgroundColor;
/// Horizontal and vertical layout constraints for node
/// Layout constraint relative to containing Frame
@property (nonatomic, nullable, strong) FGLayoutConstraint *constraints;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, nullable, strong) NSNumber *clipsContent;
/// An array of export settings representing images to export from node
/// An array of export settings representing images to export from this node
/// An array of export settings representing images to export from the canvas
@property (nonatomic, nullable, copy) NSArray<FGExportSetting *> *exportSettings;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, nullable, copy) NSString *componentID;
/// the type of the node, refer to table below for details
@property (nonatomic, assign) FGNodeType *type;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *identifier;
/// An array of fill paints applied to the node
/// An array of stroke paints applied to the node
/// Paints applied to characters
@property (nonatomic, nullable, copy) NSArray<FGPaint *> *strokes;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// An array of nodes that are direct children of this node
/// An array of nodes that are being boolean operated on
/// An array of top level layers on the canvas
/// An array of canvases attached to the document
@property (nonatomic, nullable, copy) NSArray<FGNode *> *children;
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
@end

/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
/// Guides to align and place objects within a frame
@interface FGLayoutGrid : NSObject
/// Orientation of the grid as a string enum
/// "COLUMNS": Vertical grid
/// "ROWS": Horizontal grid
/// "GRID": Square grid
@property (nonatomic, assign) FGPattern *pattern;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double sectionSize;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isVisible;
/// Background color of the node
/// An RGBA color
/// Solid color of the paint
/// Color attached to corresponding position
/// Color of the grid
/// Background color of the canvas
@property (nonatomic, strong) FGColor *color;
/// Positioning of grid as a string enum
/// "MIN": Grid starts at the left or top of the frame
/// "MAX": Grid starts at the right or bottom of the frame
/// "CENTER": Grid is center aligned
@property (nonatomic, assign) FGAlignment *alignment;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double gutterSize;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double offset;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double count;
@end

/// Map from ID to TypeStyle for looking up style overrides
/// Metadata for character formatting
/// Style of text including font family and weight (see type style
/// section for more information)
@interface FGTypeStyle : NSObject
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double lineHeightPx;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *fontPostScriptName;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double fontWeight;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double lineHeightPercent;
/// Vertical text alignment as string enum
@property (nonatomic, assign) FGTextAlignVertical *textAlignVertical;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double fontSize;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isItalic;
/// An array of fill paints applied to the node
/// An array of stroke paints applied to the node
/// Paints applied to characters
@property (nonatomic, copy) NSArray<FGPaint *> *fills;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *fontFamily;
/// Horizontal text alignment as string enum
@property (nonatomic, assign) FGTextAlignHorizontal *textAlignHorizontal;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double letterSpacing;
@end

/// Node Properties
/// The root node
/// The root node within the document
@interface FGDocument : NSObject
/// An array of nodes that are direct children of this node
/// An array of nodes that are being boolean operated on
/// An array of top level layers on the canvas
/// An array of canvases attached to the document
@property (nonatomic, copy) NSArray<FGNode *> *children;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *identifier;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *name;
/// Is the effect active?
/// Is the grid currently visible?
/// Is the paint enabled?
/// whether or not the node is visible on the canvas
/// Does this node mask sibling nodes in front of it?
/// Keep height and width constrained to same ratio
/// Does this node clip content outside of its bounds?
/// Is text italicized?
@property (nonatomic, assign) BOOL isVisible;
/// the type of the node, refer to table below for details
@property (nonatomic, assign) FGNodeType *type;
@end

@interface FGCommentsResponse : NSObject
@property (nonatomic, copy) NSArray<FGComment *> *comments;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A comment or reply left by a user
@interface FGComment : NSObject
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *message;
/// Enables basic storage and retrieval of dates and times.
@property (nonatomic, copy) NSString *createdAt;
/// A description of a user
/// The user who left the comment
@property (nonatomic, strong) FGUser *user;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double orderID;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *parentID;
/// 2d vector offset within the frame.
/// A 2d vector
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
/// A relative offset within a frame
@property (nonatomic, strong) FGClientMeta *clientMeta;
/// If set, when the comment was resolved
@property (nonatomic, nullable, copy) NSString *resolvedAt;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *identifier;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *fileKey;
@end

/// 2d vector offset within the frame.
/// A 2d vector
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
/// A relative offset within a frame
@interface FGClientMeta : NSObject
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, nullable, strong) NSNumber *x;
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, nullable, strong) NSNumber *y;
/// Unique id specifying the frame.
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
@property (nonatomic, nullable, copy) NSArray<NSString *> *nodeID;
/// 2d vector offset within the frame.
/// A 2d vector
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
@property (nonatomic, nullable, strong) FGVector2 *nodeOffset;
@end

/// A description of a user
/// The user who left the comment
@interface FGUser : NSObject
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *handle;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *imgURL;
@end

@interface FGCommentRequest : NSObject
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *message;
/// 2d vector offset within the frame.
/// A 2d vector
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
/// A relative offset within a frame
@property (nonatomic, strong) FGClientMeta *clientMeta;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

@interface FGProjectsResponse : NSObject
@property (nonatomic, copy) NSArray<FGProject *> *projects;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

@interface FGProject : NSObject
/// X coordinate of the vector
/// Y coordinate of the vector
/// Radius of the blur effect (applies to shadows as well)
/// Red channel value, between 0 and 1
/// Green channel value, between 0 and 1
/// Blue channel value, between 0 and 1
/// Alpha channel value, between 0 and 1
/// Width of column grid or height of row grid or square grid spacing
/// Spacing in between columns and rows
/// Spacing before the first column or row
/// Number of columns or rows
/// Opacity of the node
/// Radius of each corner of the rectangle
/// The weight of strokes on the node
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
/// Value between 0 and 1 representing position along gradient axis
/// See type property for effect of this field
/// Line height in px
/// Numeric font weight
/// Line height as a percentage of normal line height
/// Font size in px
/// Space between characters in px
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
/// Only set for top level comments. The number displayed with the
/// comment in the UI
@property (nonatomic, assign) double identifier;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *name;
@end

@interface FGProjectFilesResponse : NSObject
@property (nonatomic, copy) NSArray<FGFile *> *files;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

@interface FGFile : NSObject
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *key;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *name;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *thumbnailURL;
/// Allows manipulation and formatting of text strings and determination and location of
/// substrings within strings.
/// the name given to the node by the user in the tool.
/// Image scaling mode
/// File suffix to append to all filenames
/// a string uniquely identifying this node within the document
/// Text contained within text box
/// PostScript font name
/// Font family of text (standard name)
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
/// (MISSING IN DOCS)
/// The content of the comment
/// If present, the id of the comment to which this is the reply
/// Unique identifier for comment
/// The file in which the comment lives
/// utc date in iso8601
@property (nonatomic, copy) NSString *lastModified;
@end

NS_ASSUME_NONNULL_END
