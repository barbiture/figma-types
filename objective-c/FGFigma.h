// To parse this JSON:
//
//   NSError *error;
//   QTRegularPolygonNode *regularPolygonNode = [QTRegularPolygonNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTEllipseNode *ellipseNode = [QTEllipseNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTGroupNode *groupNode = [QTGroupNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTNode *node = [QTNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTVector *vector = [QTVector fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTColor *color = [QTColor fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTGlobal *global = [QTGlobal fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTColorStop *colorStop = [QTColorStop fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTVectorNode *vectorNode = [QTVectorNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTLayoutConstraint *layoutConstraint = [QTLayoutConstraint fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTBooleanNode *booleanNode = [QTBooleanNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTUser *user = [QTUser fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTTextNode *textNode = [QTTextNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTFrameNode *frameNode = [QTFrameNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTRectangle *rectangle = [QTRectangle fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTLayoutGrid *layoutGrid = [QTLayoutGrid fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTEffect *effect = [QTEffect fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTRectangleNode *rectangleNode = [QTRectangleNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTBlendMode *blendMode = QTBlendModeFromJSON(json, NSUTF8Encoding, &error);
//   QTSliceNode *sliceNode = [QTSliceNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTStarNode *starNode = [QTStarNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTLineNode *lineNode = [QTLineNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTInstanceNode *instanceNode = [QTInstanceNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTTypeStyle *typeStyle = [QTTypeStyle fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTCanvasNode *canvasNode = [QTCanvasNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTExportSetting *exportSetting = [QTExportSetting fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTDocumentNode *documentNode = [QTDocumentNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTConstraint *constraint = [QTConstraint fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTPaint *paint = [QTPaint fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTComponentNode *componentNode = [QTComponentNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTComment *comment = [QTComment fromJSON:json encoding:NSUTF8Encoding error:&error];

#import <Foundation/Foundation.h>

@class QTRegularPolygonNode;
@class QTRegularPolygonNodeRectangle;
@class QTBlendMode;
@class QTRegularPolygonNodeLayoutConstraint;
@class QTHorizontal;
@class QTVertical;
@class QTEffectElement;
@class QTEffectColor;
@class QTEffectVector;
@class QTEffectType;
@class QTExportSettingElement;
@class QTExportSettingConstraint;
@class QTConstraintType;
@class QTFormat;
@class QTPaintElement;
@class QTColorStopElement;
@class QTScaleMode;
@class QTPaintType;
@class QTStrokeAlign;
@class QTRegularPolygonNodeType;
@class QTEllipseNode;
@class QTGroupNode;
@class QTPurpleNode;
@class QTNodeNode;
@class QTLayoutGridElement;
@class QTAlignment;
@class QTPattern;
@class QTNodeTypeStyle;
@class QTTextAlignHorizontal;
@class QTTextAlignVertical;
@class QTNode;
@class QTVector;
@class QTColor;
@class QTGlobal;
@class QTColorStop;
@class QTVectorNode;
@class QTLayoutConstraint;
@class QTBooleanNode;
@class QTFluffyNode;
@class QTUser;
@class QTTextNode;
@class QTFrameNode;
@class QTFrameNodeNode;
@class QTRectangle;
@class QTLayoutGrid;
@class QTEffect;
@class QTRectangleNode;
@class QTSliceNode;
@class QTStarNode;
@class QTLineNode;
@class QTInstanceNode;
@class QTTypeStyle;
@class QTCanvasNode;
@class QTTentacledNode;
@class QTExportSetting;
@class QTDocumentNode;
@class QTStickyNode;
@class QTConstraint;
@class QTPaint;
@class QTComponentNode;
@class QTComment;
@class QTCommentUser;

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

/// The type of the node
@interface QTRegularPolygonNodeType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTRegularPolygonNodeType *)boolean;
+ (QTRegularPolygonNodeType *)canvas;
+ (QTRegularPolygonNodeType *)component;
+ (QTRegularPolygonNodeType *)document;
+ (QTRegularPolygonNodeType *)ellipse;
+ (QTRegularPolygonNodeType *)frame;
+ (QTRegularPolygonNodeType *)group;
+ (QTRegularPolygonNodeType *)instance;
+ (QTRegularPolygonNodeType *)line;
+ (QTRegularPolygonNodeType *)rectangle;
+ (QTRegularPolygonNodeType *)regularPolygon;
+ (QTRegularPolygonNodeType *)slice;
+ (QTRegularPolygonNodeType *)star;
+ (QTRegularPolygonNodeType *)text;
+ (QTRegularPolygonNodeType *)vector;
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

typedef QTBlendMode QTBlendMode;

#pragma mark - Top-level marshaling functions

QTBlendMode *_Nullable QTBlendModeFromData(NSData *data, NSError **error);
QTBlendMode *_Nullable QTBlendModeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error);
NSData      *_Nullable QTBlendModeToData(QTBlendMode *blendMode, NSError **error);
NSString    *_Nullable QTBlendModeToJSON(QTBlendMode *blendMode, NSStringEncoding encoding, NSError **error);

#pragma mark - Object interfaces

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTRegularPolygonNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@property (nonatomic, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, assign) double strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of stroke paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *strokes;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A rectangle that expresses a bounding box in absolute coordinates
///
/// Bounding box of the node in absolute space coordinates
@interface QTRegularPolygonNodeRectangle : NSObject
/// X coordinate of top left corner of the rectangle
@property (nonatomic, assign) double x;
/// Y coordinate of top left corner of the rectangle
@property (nonatomic, assign) double y;
/// Width of the rectangle
@property (nonatomic, assign) double width;
/// Height of the rectangle
@property (nonatomic, assign) double height;
@end

/// Layout constraint relative to containing Frame
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@interface QTRegularPolygonNodeLayoutConstraint : NSObject
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
@interface QTEffectElement : NSObject
/// Type of effect as a string enum
@property (nonatomic, assign) QTEffectType *type;
/// See type property for effect of this field
@property (nonatomic, assign) double radius;
/// See type property for effect of this field
@property (nonatomic, assign) BOOL isVisible;
/// See type property for effect of this field
@property (nonatomic, strong) QTEffectColor *color;
/// See type property for effect of this field
@property (nonatomic, assign) QTBlendMode *blendMode;
/// See type property for effect of this field
@property (nonatomic, strong) QTEffectVector *offset;
@end

/// An RGBA color
///
/// See type property for effect of this field
///
/// (For solid paints) Solid color of the paint
///
/// Color attached to corresponding position
///
/// Color of the grid
///
/// Background color of the node
///
/// Background color of the canvas
@interface QTEffectColor : NSObject
/// Red channel value, between 0 and 1
@property (nonatomic, assign) double r;
/// Green channel value, between 0 and 1
@property (nonatomic, assign) double g;
/// Blue channel value, between 0 and 1
@property (nonatomic, assign) double b;
/// Alpha channel value, between 0 and 1
@property (nonatomic, assign) double a;
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
@interface QTEffectVector : NSObject
/// X coordinate of the vector
@property (nonatomic, assign) double x;
/// Y coordinate of the vector
@property (nonatomic, assign) double y;
@end

/// Format and size to export an asset at
///
/// An array of export settings representing images to export from node
///
/// An array of export settings representing images to export from the canvas
///
/// A rectangular region of the canvas that can be exported
@interface QTExportSettingElement : NSObject
/// File suffix to append to all filenames
@property (nonatomic, copy) NSString *suffix;
/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
@property (nonatomic, assign) QTFormat *format;
/// Constraint that determines sizing of exported asset
@property (nonatomic, strong) QTExportSettingConstraint *constraint;
@end

/// Sizing constraint for exports
///
/// Constraint that determines sizing of exported asset
@interface QTExportSettingConstraint : NSObject
/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
@property (nonatomic, assign) QTConstraintType *type;
/// See type property for effect of this field
@property (nonatomic, nullable, strong) NSNumber *value;
@end

/// A solid color, gradient, or image texture that can be applied as fills or strokes
///
/// An array of fill paints applied to the node
///
/// An array of stroke paints applied to the node
///
/// Paints applied to characters
@interface QTPaintElement : NSObject
/// Type of paint as a string enum
@property (nonatomic, assign) QTPaintType *type;
/// Is the paint enabled?
@property (nonatomic, assign) BOOL isVisible;
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
@property (nonatomic, assign) double opacity;
/// (For solid paints) Solid color of the paint
@property (nonatomic, nullable, strong) QTEffectColor *color;
/// (For gradient paints) This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left corner of the
/// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
/// corresponds to the start of the gradient (value 0 for the purposes of calculating
/// gradient stops), the second position is the end of the gradient (value 1), and the third
/// handle position determines the width of the gradient (only relevant for non-linear
/// gradients).
@property (nonatomic, nullable, copy) NSArray<QTEffectVector *> *gradientHandlePositions;
/// (For gradient paints) Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly between neighboring
/// gradient stops.
@property (nonatomic, nullable, copy) NSArray<QTColorStopElement *> *gradientStops;
/// (For image paints) Image scaling mode
@property (nonatomic, nullable, assign) QTScaleMode *scaleMode;
@end

/// A position color pair representing a gradient stop
///
/// (For gradient paints) Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly between neighboring
/// gradient stops.
@interface QTColorStopElement : NSObject
/// Color attached to corresponding position
@property (nonatomic, strong) QTEffectColor *color;
/// Value between 0 and 1 representing position along gradient axis
@property (nonatomic, assign) double position;
@end

/// An ellipse
///
/// A regular n-sided polygon
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTEllipseNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@property (nonatomic, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, assign) double strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of stroke paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *strokes;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A logical grouping of nodes
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTGroupNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// Background color of the node
@property (nonatomic, strong) QTEffectColor *backgroundColor;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, assign) BOOL isClipsContent;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;
/// An array of nodes that are direct children of this node
@property (nonatomic, copy) NSArray<QTPurpleNode *> *children;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTPurpleNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
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
@property (nonatomic, nullable, strong) QTEffectColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
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
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Radius of each corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *cornerRadius;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Style of text including font family and weight (see type style section for more
/// information)
@property (nonatomic, nullable, strong) QTNodeTypeStyle *style;
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSDictionary<NSString *, QTNodeTypeStyle *> *styleOverrideTable;
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@property (nonatomic, nullable, copy) NSString *componentID;
@end

/// An array of canvases attached to the document
///
/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
///
/// An array of top level layers on the canvas
///
/// An array of nodes that are being boolean operated on
@interface QTNodeNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
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
@property (nonatomic, nullable, strong) QTEffectColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
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
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Radius of each corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *cornerRadius;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Style of text including font family and weight (see type style section for more
/// information)
@property (nonatomic, nullable, strong) QTNodeTypeStyle *style;
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSDictionary<NSString *, QTNodeTypeStyle *> *styleOverrideTable;
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@property (nonatomic, nullable, copy) NSString *componentID;
@end

/// Guides to align and place objects within a frame
///
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@interface QTLayoutGridElement : NSObject
/// * COLUMNS: Vertical grid
/// * ROWS: Horizontal grid
/// * GRID: Square grid
@property (nonatomic, assign) QTPattern *pattern;
/// Width of column grid or height of row grid or square grid spacing
@property (nonatomic, assign) double sectionSize;
/// Is the grid currently visible?
@property (nonatomic, assign) BOOL isVisible;
/// Color of the grid
@property (nonatomic, strong) QTEffectColor *color;
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
@interface QTNodeTypeStyle : NSObject
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
@property (nonatomic, copy) NSArray<QTPaintElement *> *fills;
/// Font family of text (standard name)
@property (nonatomic, copy) NSString *fontFamily;
/// Horizontal text alignment as string enum
@property (nonatomic, assign) QTTextAlignHorizontal *textAlignHorizontal;
/// Space between characters in px
@property (nonatomic, assign) double letterSpacing;
@end

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
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
@property (nonatomic, nullable, strong) QTEffectColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
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
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Radius of each corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *cornerRadius;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Style of text including font family and weight (see type style section for more
/// information)
@property (nonatomic, nullable, strong) QTNodeTypeStyle *style;
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSDictionary<NSString *, QTNodeTypeStyle *> *styleOverrideTable;
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@property (nonatomic, nullable, copy) NSString *componentID;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A 2d vector
@interface QTVector : NSObject
/// X coordinate of the vector
@property (nonatomic, assign) double x;
/// Y coordinate of the vector
@property (nonatomic, assign) double y;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An RGBA color
@interface QTColor : NSObject
/// Red channel value, between 0 and 1
@property (nonatomic, assign) double r;
/// Green channel value, between 0 and 1
@property (nonatomic, assign) double g;
/// Blue channel value, between 0 and 1
@property (nonatomic, assign) double b;
/// Alpha channel value, between 0 and 1
@property (nonatomic, assign) double a;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// Properties are shared across all nodes
@interface QTGlobal : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A position color pair representing a gradient stop
@interface QTColorStop : NSObject
/// Color attached to corresponding position
@property (nonatomic, strong) QTEffectColor *color;
/// Value between 0 and 1 representing position along gradient axis
@property (nonatomic, assign) double position;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTVectorNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@property (nonatomic, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, assign) double strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of stroke paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *strokes;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// Layout constraint relative to containing Frame
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

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A group that has a boolean operation applied to it
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTBooleanNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@property (nonatomic, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, assign) double strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of stroke paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *strokes;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;
/// An array of nodes that are being boolean operated on
@property (nonatomic, copy) NSArray<QTFluffyNode *> *children;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An array of nodes that are being boolean operated on
///
/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTFluffyNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
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
@property (nonatomic, nullable, strong) QTEffectColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
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
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Radius of each corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *cornerRadius;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Style of text including font family and weight (see type style section for more
/// information)
@property (nonatomic, nullable, strong) QTNodeTypeStyle *style;
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSDictionary<NSString *, QTNodeTypeStyle *> *styleOverrideTable;
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@property (nonatomic, nullable, copy) NSString *componentID;
@end

/// A description of a user
@interface QTUser : NSObject
@property (nonatomic, copy) NSString *handle;
@property (nonatomic, copy) NSString *imgURL;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A text box
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTTextNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@property (nonatomic, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, assign) double strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of stroke paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *strokes;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;
/// Text contained within text box
@property (nonatomic, copy) NSString *characters;
/// Style of text including font family and weight (see type style section for more
/// information)
@property (nonatomic, strong) QTNodeTypeStyle *style;
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
@property (nonatomic, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, copy) NSDictionary<NSString *, QTNodeTypeStyle *> *styleOverrideTable;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTFrameNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// Background color of the node
@property (nonatomic, strong) QTEffectColor *backgroundColor;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, assign) BOOL isClipsContent;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;
/// An array of nodes that are direct children of this node
@property (nonatomic, copy) NSArray<QTFrameNodeNode *> *children;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTFrameNodeNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
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
@property (nonatomic, nullable, strong) QTEffectColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
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
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Radius of each corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *cornerRadius;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Style of text including font family and weight (see type style section for more
/// information)
@property (nonatomic, nullable, strong) QTNodeTypeStyle *style;
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSDictionary<NSString *, QTNodeTypeStyle *> *styleOverrideTable;
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@property (nonatomic, nullable, copy) NSString *componentID;
@end

/// A rectangle that expresses a bounding box in absolute coordinates
@interface QTRectangle : NSObject
/// X coordinate of top left corner of the rectangle
@property (nonatomic, assign) double x;
/// Y coordinate of top left corner of the rectangle
@property (nonatomic, assign) double y;
/// Width of the rectangle
@property (nonatomic, assign) double width;
/// Height of the rectangle
@property (nonatomic, assign) double height;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// Guides to align and place objects within a frame
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
@property (nonatomic, strong) QTEffectColor *color;
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

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A visual effect such as a shadow or blur
@interface QTEffect : NSObject
/// Type of effect as a string enum
@property (nonatomic, assign) QTEffectType *type;
/// See type property for effect of this field
@property (nonatomic, assign) double radius;
/// See type property for effect of this field
@property (nonatomic, assign) BOOL isVisible;
/// See type property for effect of this field
@property (nonatomic, strong) QTEffectColor *color;
/// See type property for effect of this field
@property (nonatomic, assign) QTBlendMode *blendMode;
/// See type property for effect of this field
@property (nonatomic, strong) QTEffectVector *offset;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTRectangleNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@property (nonatomic, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, assign) double strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of stroke paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *strokes;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;
/// Radius of each corner of the rectangle
@property (nonatomic, assign) double cornerRadius;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A rectangular region of the canvas that can be exported
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTSliceNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// A rectangular region of the canvas that can be exported
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A regular star shape
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTStarNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@property (nonatomic, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, assign) double strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of stroke paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *strokes;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A straight line
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTLineNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Where stroke is drawn relative to the vector outline as a string enum
///
/// * INSIDE: draw stroke inside the shape boundary
/// * OUTSIDE: draw stroke outside the shape boundary
/// * CENTER: draw stroke centered along the shape boundary
@property (nonatomic, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, assign) double strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of stroke paints applied to the node
@property (nonatomic, copy) NSArray<QTPaintElement *> *strokes;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// A logical grouping of nodes
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTInstanceNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// Background color of the node
@property (nonatomic, strong) QTEffectColor *backgroundColor;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, assign) BOOL isClipsContent;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;
/// An array of nodes that are direct children of this node
@property (nonatomic, copy) NSArray<QTPurpleNode *> *children;
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@property (nonatomic, copy) NSString *componentID;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// Metadata for character formatting
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
@property (nonatomic, copy) NSArray<QTPaintElement *> *fills;
/// Font family of text (standard name)
@property (nonatomic, copy) NSString *fontFamily;
/// Horizontal text alignment as string enum
@property (nonatomic, assign) QTTextAlignHorizontal *textAlignHorizontal;
/// Space between characters in px
@property (nonatomic, assign) double letterSpacing;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTCanvasNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of top level layers on the canvas
@property (nonatomic, copy) NSArray<QTTentacledNode *> *children;
/// Background color of the canvas
@property (nonatomic, strong) QTEffectColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An array of top level layers on the canvas
///
/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTTentacledNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
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
@property (nonatomic, nullable, strong) QTEffectColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
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
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Radius of each corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *cornerRadius;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Style of text including font family and weight (see type style section for more
/// information)
@property (nonatomic, nullable, strong) QTNodeTypeStyle *style;
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSDictionary<NSString *, QTNodeTypeStyle *> *styleOverrideTable;
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@property (nonatomic, nullable, copy) NSString *componentID;
@end

/// Format and size to export an asset at
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
@property (nonatomic, strong) QTExportSettingConstraint *constraint;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTDocumentNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of canvases attached to the document
@property (nonatomic, copy) NSArray<QTStickyNode *> *children;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An array of canvases attached to the document
///
/// An array of nodes that are direct children of this node
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// A logical grouping of nodes
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTStickyNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
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
@property (nonatomic, nullable, strong) QTEffectColor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// A rectangular region of the canvas that can be exported
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, nullable, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
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
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Radius of each corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *cornerRadius;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Style of text including font family and weight (see type style section for more
/// information)
@property (nonatomic, nullable, strong) QTNodeTypeStyle *style;
/// Array with same number of elements as characeters in text box, each element is a
/// reference to the styleOverrideTable defined below and maps to the corresponding character
/// in the characters field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSDictionary<NSString *, QTNodeTypeStyle *> *styleOverrideTable;
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
@property (nonatomic, nullable, copy) NSString *componentID;
@end

/// Sizing constraint for exports
@interface QTConstraint : NSObject
/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
@property (nonatomic, assign) QTConstraintType *type;
/// See type property for effect of this field
@property (nonatomic, nullable, strong) NSNumber *value;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A solid color, gradient, or image texture that can be applied as fills or strokes
@interface QTPaint : NSObject
/// Type of paint as a string enum
@property (nonatomic, assign) QTPaintType *type;
/// Is the paint enabled?
@property (nonatomic, assign) BOOL isVisible;
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
@property (nonatomic, assign) double opacity;
/// (For solid paints) Solid color of the paint
@property (nonatomic, nullable, strong) QTEffectColor *color;
/// (For gradient paints) This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left corner of the
/// bounding box of the object is (0, 0) and the bottom right is (1,1)). The first position
/// corresponds to the start of the gradient (value 0 for the purposes of calculating
/// gradient stops), the second position is the end of the gradient (value 1), and the third
/// handle position determines the width of the gradient (only relevant for non-linear
/// gradients).
@property (nonatomic, nullable, copy) NSArray<QTEffectVector *> *gradientHandlePositions;
/// (For gradient paints) Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly between neighboring
/// gradient stops.
@property (nonatomic, nullable, copy) NSArray<QTColorStopElement *> *gradientStops;
/// (For image paints) Image scaling mode
@property (nonatomic, nullable, assign) QTScaleMode *scaleMode;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A node that can have instances created of it that share the same properties
///
/// A logical grouping of nodes
///
/// A regular n-sided polygon
///
/// An ellipse
///
/// An array of nodes that are direct children of this node
///
/// A group that has a boolean operation applied to it
///
/// A regular star shape
///
/// A straight line
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// An instance of a component, changes to the component result in the same changes applied
/// to the instance
///
/// Properties are shared across all nodes
///
/// See type property for effect of this field
///
/// Red channel value, between 0 and 1
///
/// Green channel value, between 0 and 1
///
/// Blue channel value, between 0 and 1
///
/// Alpha channel value, between 0 and 1
///
/// X coordinate of the vector
///
/// Y coordinate of the vector
///
/// Opacity of the node
///
/// The weight of strokes on the node
///
/// Overall opacity of paint (colors within the paint can also have opacity values which
/// would blend with this)
///
/// Value between 0 and 1 representing position along gradient axis
///
/// X coordinate of top left corner of the rectangle
///
/// Y coordinate of top left corner of the rectangle
///
/// Width of the rectangle
///
/// Height of the rectangle
///
/// Width of column grid or height of row grid or square grid spacing
///
/// Spacing in between columns and rows
///
/// Spacing before the first column or row
///
/// Number of columns or rows
///
/// Radius of each corner of the rectangle
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
/// Is the paint enabled?
///
/// Does this node mask sibling nodes in front of it?
///
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
///
/// Is the grid currently visible?
///
/// Does this node clip content outside of its bounds?
///
/// Is text italicized?
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Node ID of node to transition to in prototyping
///
/// File suffix to append to all filenames
///
/// Text contained within text box
///
/// PostScript font name
///
/// Font family of text (standard name)
///
/// ID of component that this instance came from, refers to components table (see endpoints
/// section below)
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTComponentNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTRegularPolygonNodeType *type;
/// An array of effects attached to this node (see effects section for more details)
@property (nonatomic, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section for more
/// details). GROUP nodes do not have this attribute
@property (nonatomic, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, assign) double opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, strong) QTRegularPolygonNodeRectangle *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) QTBlendMode *blendMode;
/// Background color of the node
@property (nonatomic, strong) QTEffectColor *backgroundColor;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, strong) QTRegularPolygonNodeLayoutConstraint *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, assign) BOOL isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, assign) BOOL isClipsContent;
/// An array of export settings representing images to export from node
@property (nonatomic, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// How this node blends with nodes behind it in the scene (see blend mode section for more
/// details)
@property (nonatomic, assign) BOOL isPreserveRatio;
/// An array of nodes that are direct children of this node
@property (nonatomic, copy) NSArray<QTPurpleNode *> *children;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A comment or reply left by a user
@interface QTComment : NSObject
/// Unique identifier for comment
@property (nonatomic, copy) NSString *identifier;
/// The file in which the comment lives
@property (nonatomic, copy) NSString *fileKey;
/// If present, the id of the comment to which this is the reply
@property (nonatomic, nullable, copy) NSString *parentID;
/// The user who left the comment
@property (nonatomic, strong) QTCommentUser *user;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A description of a user
///
/// The user who left the comment
@interface QTCommentUser : NSObject
@property (nonatomic, copy) NSString *handle;
@property (nonatomic, copy) NSString *imgURL;
@end

NS_ASSUME_NONNULL_END
