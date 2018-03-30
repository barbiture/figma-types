// To parse this JSON:
//
//   NSError *error;
//   QTVector *vector = [QTVector fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTColor *color = [QTColor fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTColorStop *colorStop = [QTColorStop fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTLayoutConstraint *layoutConstraint = [QTLayoutConstraint fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTText *text = [QTText fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTFrame *frame = [QTFrame fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTRectangle *rectangle = [QTRectangle fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTLayoutGrid *layoutGrid = [QTLayoutGrid fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTEffect *effect = [QTEffect fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTSlice *slice = [QTSlice fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTStar *star = [QTStar fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTLine *line = [QTLine fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTBlendMode *blendMode = QTBlendModeFromJSON(json, NSUTF8Encoding, &error);
//   QTInstance *instance = [QTInstance fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTVector2D *vector2D = [QTVector2D fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTTypeStyle *typeStyle = [QTTypeStyle fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTBooleanGroup *booleanGroup = [QTBooleanGroup fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTCanvas *canvas = [QTCanvas fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTDocument *document = [QTDocument fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTNodeType *nodeType = QTNodeTypeFromJSON(json, NSUTF8Encoding, &error);
//   QTExportSetting *exportSetting = [QTExportSetting fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTComponent *component = [QTComponent fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTFileResponse *fileResponse = [QTFileResponse fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTConstraint *constraint = [QTConstraint fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTPaint *paint = [QTPaint fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTRegularPolygon *regularPolygon = [QTRegularPolygon fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTEllipse *ellipse = [QTEllipse fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTGroup *group = [QTGroup fromJSON:json encoding:NSUTF8Encoding error:&error];

#import <Foundation/Foundation.h>

@class QTVector;
@class QTAbsoluteBoundingBox;
@class QTBlendMode;
@class QTConstraints;
@class QTHorizontal;
@class QTVertical;
@class QTEffectElement;
@class QTOlor;
@class QTOffset;
@class QTEffectType;
@class QTExportSettingElement;
@class QTExportSettingConstraint;
@class QTConstraintType;
@class QTFormat;
@class QTSuffix;
@class QTPaintElement;
@class QTColorStopElement;
@class QTPaintType;
@class QTStrokeAlign;
@class QTNodeType;
@class QTColor;
@class QTColorStop;
@class QTLayoutConstraint;
@class QTText;
@class QTTyle;
@class QTTextAlignHorizontal;
@class QTTextAlignVertical;
@class QTFrame;
@class QTDocumentElement;
@class QTLayoutGridElement;
@class QTAlignment;
@class QTPattern;
@class QTRectangle;
@class QTLayoutGrid;
@class QTEffect;
@class QTSlice;
@class QTStar;
@class QTLine;
@class QTInstance;
@class QTVector2D;
@class QTTypeStyle;
@class QTBooleanGroup;
@class QTCanvas;
@class QTDocument;
@class QTExportSetting;
@class QTComponent;
@class QTFileResponse;
@class QTComponentValue;
@class QTOcument;
@class QTConstraint;
@class QTPaint;
@class QTRegularPolygon;
@class QTEllipse;
@class QTGroup;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Boxed enums

/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
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

/// Horizontal constraint as an enum
/// "LEFT": Node is laid out relative to left of the containing frame
/// "RIGHT": Node is laid out relative to right of the containing frame
/// "CENTER": Node is horizontally centered relative to containing frame
/// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales horizontally with containing frame
@interface QTHorizontal : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTHorizontal *)center;
+ (QTHorizontal *)left;
+ (QTHorizontal *)leftRight;
+ (QTHorizontal *)right;
+ (QTHorizontal *)scale;
@end

/// Vertical constraint as an enum
/// "TOP": Node is laid out relative to top of the containing frame
/// "BOTTOM": Node is laid out relative to bottom of the containing frame
/// "CENTER": Node is vertically centered relative to containing frame
/// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales vertically with containing frame
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
/// "SCALE": Scale by value
/// "WIDTH": Scale proportionally and set width to value
/// "HEIGHT": Scale proportionally and set height to value
@interface QTConstraintType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTConstraintType *)height;
+ (QTConstraintType *)scale;
+ (QTConstraintType *)width;
@end

/// Image type, string enum
@interface QTFormat : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTFormat *)jpg;
+ (QTFormat *)png;
+ (QTFormat *)svg;
@end

/// File suffix to append to all filenames
@interface QTSuffix : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTSuffix *)string;
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
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@interface QTStrokeAlign : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTStrokeAlign *)center;
+ (QTStrokeAlign *)inside;
+ (QTStrokeAlign *)outside;
@end

/// the type of the node, refer to table below for details
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

/// Positioning of grid as a string enum
/// "MIN": Grid starts at the left or top of the frame
/// "MAX": Grid starts at the right or bottom of the frame
/// "CENTER": Grid is center aligned
@interface QTAlignment : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTAlignment *)center;
+ (QTAlignment *)max;
+ (QTAlignment *)min;
@end

/// Orientation of the grid as a string enum
/// "COLUMNS": Vertical grid
/// "ROWS": Horizontal grid
/// "GRID": Square grid
@interface QTPattern : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTPattern *)columns;
+ (QTPattern *)grid;
+ (QTPattern *)rows;
@end

typedef QTBlendMode QTBlendMode;

typedef QTNodeType QTNodeType;

#pragma mark - Top-level marshaling functions

QTBlendMode *_Nullable QTBlendModeFromData(NSData *data, NSError **error);
QTBlendMode *_Nullable QTBlendModeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error);
NSData      *_Nullable QTBlendModeToData(QTBlendMode *blendMode, NSError **error);
NSString    *_Nullable QTBlendModeToJSON(QTBlendMode *blendMode, NSStringEncoding encoding, NSError **error);

QTNodeType *_Nullable QTNodeTypeFromData(NSData *data, NSError **error);
QTNodeType *_Nullable QTNodeTypeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error);
NSData     *_Nullable QTNodeTypeToData(QTNodeType *nodeType, NSError **error);
NSString   *_Nullable QTNodeTypeToJSON(QTNodeType *nodeType, NSStringEncoding encoding, NSError **error);

#pragma mark - Object interfaces

/// A vector network, consisting of vertices and edges
@interface QTVector : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A rectangle
///
/// Bounding box of the node in absolute space coordinates
///
/// An array of nodes that are being boolean operated on
///
/// An array of nodes that are direct children of this node
///
/// An array of top level layers on the canvas
///
/// An array of canvases attached to the document
@interface QTAbsoluteBoundingBox : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// Radius of each corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *cornerRadius;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
@end

/// Layout constraint relative to containing Frame
///
/// Horizontal and vertical layout constraints for node
@interface QTConstraints : NSObject
/// Horizontal constraint as an enum
/// "LEFT": Node is laid out relative to left of the containing frame
/// "RIGHT": Node is laid out relative to right of the containing frame
/// "CENTER": Node is horizontally centered relative to containing frame
/// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales horizontally with containing frame
@property (nonatomic, nullable, assign) QTHorizontal *horizontal;
/// Vertical constraint as an enum
/// "TOP": Node is laid out relative to top of the containing frame
/// "BOTTOM": Node is laid out relative to bottom of the containing frame
/// "CENTER": Node is vertically centered relative to containing frame
/// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales vertically with containing frame
@property (nonatomic, nullable, assign) QTVertical *vertical;
@end

/// A visual effect such as a shadow or blur
///
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@interface QTEffectElement : NSObject
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
@property (nonatomic, nullable, strong) QTOlor *color;
@property (nonatomic, nullable, strong) QTOffset *offset;
/// Radius of the blur effect (applies to shadows as well)
@property (nonatomic, nullable, strong) NSNumber *radius;
/// Type of effect as a string enum
@property (nonatomic, nullable, assign) QTEffectType *type;
/// Is the effect active?
@property (nonatomic, nullable, strong) NSNumber *visible;
@end

/// An RGBA color
///
/// Solid color of the paint
///
/// Color attached to corresponding position
///
/// Color of the grid
///
/// Background color of the node
///
/// Background color of the canvas
@interface QTOlor : NSObject
/// Alpha channel value, between 0 and 1
@property (nonatomic, nullable, strong) NSNumber *a;
/// Blue channel value, between 0 and 1
@property (nonatomic, nullable, strong) NSNumber *b;
/// Green channel value, between 0 and 1
@property (nonatomic, nullable, strong) NSNumber *g;
/// Red channel value, between 0 and 1
@property (nonatomic, nullable, strong) NSNumber *r;
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
@interface QTOffset : NSObject
/// X coordinate of the vector
@property (nonatomic, nullable, strong) NSNumber *x;
/// Y coordinate of the vector
@property (nonatomic, nullable, strong) NSNumber *y;
@end

/// Format and size to export an asset at
///
/// An array of export settings representing images to export from node
///
/// An array of export settings representing images to export from this node
///
/// An array of export settings representing images to export from the canvas
@interface QTExportSettingElement : NSObject
/// Constraint that determines sizing of exported asset
@property (nonatomic, nullable, strong) QTExportSettingConstraint *constraint;
/// Image type, string enum
@property (nonatomic, nullable, assign) QTFormat *format;
/// File suffix to append to all filenames
@property (nonatomic, nullable, assign) QTSuffix *suffix;
@end

/// Sizing constraint for exports
///
/// Constraint that determines sizing of exported asset
@interface QTExportSettingConstraint : NSObject
/// Type of constraint to apply; string enum with potential values below
/// "SCALE": Scale by value
/// "WIDTH": Scale proportionally and set width to value
/// "HEIGHT": Scale proportionally and set height to value
@property (nonatomic, nullable, assign) QTConstraintType *type;
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
/// Solid color of the paint
@property (nonatomic, nullable, strong) QTOlor *color;
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
@property (nonatomic, nullable, copy) NSArray<QTOffset *> *gradientHandlePositions;
/// Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly
/// between neighboring gradient stops.
@property (nonatomic, nullable, copy) NSArray<QTColorStopElement *> *gradientStops;
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Image scaling mode
@property (nonatomic, nullable, copy) NSString *scaleMode;
/// Type of paint as a string enum
@property (nonatomic, nullable, assign) QTPaintType *type;
/// Is the paint enabled?
@property (nonatomic, nullable, strong) NSNumber *visible;
@end

/// A position color pair representing a gradient stop
///
/// Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly
/// between neighboring gradient stops.
@interface QTColorStopElement : NSObject
/// Color attached to corresponding position
@property (nonatomic, nullable, strong) QTOlor *color;
/// Value between 0 and 1 representing position along gradient axis
@property (nonatomic, nullable, strong) NSNumber *position;
@end

/// An RGBA color
@interface QTColor : NSObject
/// Alpha channel value, between 0 and 1
@property (nonatomic, nullable, strong) NSNumber *a;
/// Blue channel value, between 0 and 1
@property (nonatomic, nullable, strong) NSNumber *b;
/// Green channel value, between 0 and 1
@property (nonatomic, nullable, strong) NSNumber *g;
/// Red channel value, between 0 and 1
@property (nonatomic, nullable, strong) NSNumber *r;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A position color pair representing a gradient stop
@interface QTColorStop : NSObject
/// Color attached to corresponding position
@property (nonatomic, nullable, strong) QTOlor *color;
/// Value between 0 and 1 representing position along gradient axis
@property (nonatomic, nullable, strong) NSNumber *position;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// Layout constraint relative to containing Frame
@interface QTLayoutConstraint : NSObject
/// Horizontal constraint as an enum
/// "LEFT": Node is laid out relative to left of the containing frame
/// "RIGHT": Node is laid out relative to right of the containing frame
/// "CENTER": Node is horizontally centered relative to containing frame
/// "LEFT_RIGHT": Both left and right of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales horizontally with containing frame
@property (nonatomic, nullable, assign) QTHorizontal *horizontal;
/// Vertical constraint as an enum
/// "TOP": Node is laid out relative to top of the containing frame
/// "BOTTOM": Node is laid out relative to bottom of the containing frame
/// "CENTER": Node is vertically centered relative to containing frame
/// "TOP_BOTTOM": Both top and bottom of node are constrained relative to containing frame
/// (node stretches with frame)
/// "SCALE": Node scales vertically with containing frame
@property (nonatomic, nullable, assign) QTVertical *vertical;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A text box
@interface QTText : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// Text contained within text box
@property (nonatomic, nullable, copy) NSString *characters;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSArray<QTTyle *> *styleOverrideTable;
/// Style of text including font family and weight (see type style
/// section for more information)
@property (nonatomic, nullable, strong) QTTyle *style;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// Metadata for character formatting
///
/// Map from ID to TypeStyle for looking up style overrides
///
/// Style of text including font family and weight (see type style
/// section for more information)
@interface QTTyle : NSObject
/// Line height in px
@property (nonatomic, nullable, strong) NSNumber *lineHeightPx;
/// PostScript font name
@property (nonatomic, nullable, copy) NSString *fontPostScriptName;
/// Numeric font weight
@property (nonatomic, nullable, strong) NSNumber *fontWeight;
/// Line height as a percentage of normal line height
@property (nonatomic, nullable, strong) NSNumber *lineHeightPercent;
/// Vertical text alignment as string enum
@property (nonatomic, nullable, assign) QTTextAlignVertical *textAlignVertical;
/// Font size in px
@property (nonatomic, nullable, strong) NSNumber *fontSize;
/// Is text italicized?
@property (nonatomic, nullable, strong) NSNumber *italic;
/// Paints applied to characters
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// Font family of text (standard name)
@property (nonatomic, nullable, copy) NSString *fontFamily;
/// Horizontal text alignment as string enum
@property (nonatomic, nullable, assign) QTTextAlignHorizontal *textAlignHorizontal;
/// Space between characters in px
@property (nonatomic, nullable, strong) NSNumber *letterSpacing;
@end

/// A node of fixed size containing other nodes
@interface QTFrame : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Background color of the node
@property (nonatomic, nullable, strong) QTOlor *backgroundColor;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, nullable, strong) NSNumber *clipsContent;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// An array of nodes that are direct children of this node
@property (nonatomic, nullable, copy) NSArray<QTDocumentElement *> *children;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An array of nodes that are direct children of this node
///
/// An array of nodes that are being boolean operated on
///
/// An array of top level layers on the canvas
///
/// An array of canvases attached to the document
///
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
/// Bounding box of the node in absolute space coordinates
///
/// A text box
///
/// A rectangular region of the canvas that can be exported
///
/// A node that can have instances created of it that share the same properties
///
/// A mapping from node IDs to component metadata. This is to help you determine which
/// components each instance comes from. Currently the only piece of metadata available on
/// components is the name of the component, but more properties will be forthcoming.
///
/// An instance of a component, changes to the component result in the same
/// changes applied to the instance
@interface QTDocumentElement : NSObject
/// An array of canvases attached to the document
///
/// An array of top level layers on the canvas
///
/// An array of nodes that are direct children of this node
///
/// An array of nodes that are being boolean operated on
@property (nonatomic, nullable, copy) NSArray<QTDocumentElement *> *children;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// Background color of the canvas
///
/// Background color of the node
@property (nonatomic, nullable, strong) QTOlor *backgroundColor;
/// An array of export settings representing images to export from the canvas
///
/// An array of export settings representing images to export from node
///
/// An array of export settings representing images to export from this node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, nullable, strong) NSNumber *clipsContent;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
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
/// Map from ID to TypeStyle for looking up style overrides
@property (nonatomic, nullable, copy) NSArray<QTTyle *> *styleOverrideTable;
/// Style of text including font family and weight (see type style
/// section for more information)
@property (nonatomic, nullable, strong) QTTyle *style;
/// Array with same number of elements as characeters in text box,
/// each element is a reference to the styleOverrideTable defined
/// below and maps to the corresponding character in the characters
/// field. Elements with value 0 have the default type style
@property (nonatomic, nullable, copy) NSArray<NSNumber *> *characterStyleOverrides;
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
@property (nonatomic, nullable, copy) NSString *componentID;
@end

/// Guides to align and place objects within a frame
///
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
@interface QTLayoutGridElement : NSObject
/// Positioning of grid as a string enum
/// "MIN": Grid starts at the left or top of the frame
/// "MAX": Grid starts at the right or bottom of the frame
/// "CENTER": Grid is center aligned
@property (nonatomic, nullable, assign) QTAlignment *alignment;
/// Color of the grid
@property (nonatomic, nullable, strong) QTOlor *color;
/// Number of columns or rows
@property (nonatomic, nullable, strong) NSNumber *count;
/// Spacing in between columns and rows
@property (nonatomic, nullable, strong) NSNumber *gutterSize;
/// Spacing before the first column or row
@property (nonatomic, nullable, strong) NSNumber *offset;
/// Orientation of the grid as a string enum
/// "COLUMNS": Vertical grid
/// "ROWS": Horizontal grid
/// "GRID": Square grid
@property (nonatomic, nullable, assign) QTPattern *pattern;
/// Width of column grid or height of row grid or square grid spacing
@property (nonatomic, nullable, strong) NSNumber *sectionSize;
/// Is the grid currently visible?
@property (nonatomic, nullable, strong) NSNumber *visible;
@end

/// A rectangle
@interface QTRectangle : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// Radius of each corner of the rectangle
@property (nonatomic, nullable, strong) NSNumber *cornerRadius;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// Guides to align and place objects within a frame
@interface QTLayoutGrid : NSObject
/// Positioning of grid as a string enum
/// "MIN": Grid starts at the left or top of the frame
/// "MAX": Grid starts at the right or bottom of the frame
/// "CENTER": Grid is center aligned
@property (nonatomic, nullable, assign) QTAlignment *alignment;
/// Color of the grid
@property (nonatomic, nullable, strong) QTOlor *color;
/// Number of columns or rows
@property (nonatomic, nullable, strong) NSNumber *count;
/// Spacing in between columns and rows
@property (nonatomic, nullable, strong) NSNumber *gutterSize;
/// Spacing before the first column or row
@property (nonatomic, nullable, strong) NSNumber *offset;
/// Orientation of the grid as a string enum
/// "COLUMNS": Vertical grid
/// "ROWS": Horizontal grid
/// "GRID": Square grid
@property (nonatomic, nullable, assign) QTPattern *pattern;
/// Width of column grid or height of row grid or square grid spacing
@property (nonatomic, nullable, strong) NSNumber *sectionSize;
/// Is the grid currently visible?
@property (nonatomic, nullable, strong) NSNumber *visible;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A visual effect such as a shadow or blur
@interface QTEffect : NSObject
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
@property (nonatomic, nullable, strong) QTOlor *color;
@property (nonatomic, nullable, strong) QTOffset *offset;
/// Radius of the blur effect (applies to shadows as well)
@property (nonatomic, nullable, strong) NSNumber *radius;
/// Type of effect as a string enum
@property (nonatomic, nullable, assign) QTEffectType *type;
/// Is the effect active?
@property (nonatomic, nullable, strong) NSNumber *visible;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A rectangular region of the canvas that can be exported
@interface QTSlice : NSObject
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// An array of export settings representing images to export from this node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A regular star shape
@interface QTStar : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A straight line
@interface QTLine : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An instance of a component, changes to the component result in the same
/// changes applied to the instance
@interface QTInstance : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Background color of the node
@property (nonatomic, nullable, strong) QTOlor *backgroundColor;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, nullable, strong) NSNumber *clipsContent;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// ID of component that this instance came from, refers to components
/// table (see endpoints section below)
@property (nonatomic, nullable, copy) NSString *componentID;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// An array of nodes that are direct children of this node
@property (nonatomic, nullable, copy) NSArray<QTDocumentElement *> *children;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A 2d vector
@interface QTVector2D : NSObject
/// X coordinate of the vector
@property (nonatomic, nullable, strong) NSNumber *x;
/// Y coordinate of the vector
@property (nonatomic, nullable, strong) NSNumber *y;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// Metadata for character formatting
@interface QTTypeStyle : NSObject
/// Line height in px
@property (nonatomic, nullable, strong) NSNumber *lineHeightPx;
/// PostScript font name
@property (nonatomic, nullable, copy) NSString *fontPostScriptName;
/// Numeric font weight
@property (nonatomic, nullable, strong) NSNumber *fontWeight;
/// Line height as a percentage of normal line height
@property (nonatomic, nullable, strong) NSNumber *lineHeightPercent;
/// Vertical text alignment as string enum
@property (nonatomic, nullable, assign) QTTextAlignVertical *textAlignVertical;
/// Font size in px
@property (nonatomic, nullable, strong) NSNumber *fontSize;
/// Is text italicized?
@property (nonatomic, nullable, strong) NSNumber *italic;
/// Paints applied to characters
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// Font family of text (standard name)
@property (nonatomic, nullable, copy) NSString *fontFamily;
/// Horizontal text alignment as string enum
@property (nonatomic, nullable, assign) QTTextAlignHorizontal *textAlignHorizontal;
/// Space between characters in px
@property (nonatomic, nullable, strong) NSNumber *letterSpacing;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A group that has a boolean operation applied to it
@interface QTBooleanGroup : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// An array of nodes that are being boolean operated on
@property (nonatomic, nullable, copy) NSArray<QTDocumentElement *> *children;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// Represents a single page
@interface QTCanvas : NSObject
/// Background color of the canvas
@property (nonatomic, nullable, strong) QTOlor *backgroundColor;
/// An array of top level layers on the canvas
@property (nonatomic, nullable, copy) NSArray<QTDocumentElement *> *children;
/// An array of export settings representing images to export from the canvas
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// Node Properties
/// The root node
@interface QTDocument : NSObject
/// An array of canvases attached to the document
@property (nonatomic, nullable, copy) NSArray<QTDocumentElement *> *children;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// Format and size to export an asset at
@interface QTExportSetting : NSObject
/// Constraint that determines sizing of exported asset
@property (nonatomic, nullable, strong) QTExportSettingConstraint *constraint;
/// Image type, string enum
@property (nonatomic, nullable, assign) QTFormat *format;
/// File suffix to append to all filenames
@property (nonatomic, nullable, assign) QTSuffix *suffix;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A node that can have instances created of it that share the same properties
@interface QTComponent : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Background color of the node
@property (nonatomic, nullable, strong) QTOlor *backgroundColor;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, nullable, strong) NSNumber *clipsContent;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// An array of nodes that are direct children of this node
@property (nonatomic, nullable, copy) NSArray<QTDocumentElement *> *children;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

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
@interface QTFileResponse : NSObject
/// A mapping from node IDs to component metadata. This is to help you determine which
/// components each instance comes from. Currently the only piece of metadata available on
/// components is the name of the component, but more properties will be forthcoming.
@property (nonatomic, nullable, copy) NSDictionary<NSString *, QTComponentValue *> *components;
/// The root node within the document
@property (nonatomic, nullable, strong) QTOcument *document;
@property (nonatomic, nullable, strong) NSNumber *schemaVersion;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A node that can have instances created of it that share the same properties
///
/// An array of nodes that are direct children of this node
///
/// An array of nodes that are being boolean operated on
///
/// An array of top level layers on the canvas
///
/// An array of canvases attached to the document
///
/// A mapping from node IDs to component metadata. This is to help you determine which
/// components each instance comes from. Currently the only piece of metadata available on
/// components is the name of the component, but more properties will be forthcoming.
@interface QTComponentValue : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Background color of the node
@property (nonatomic, nullable, strong) QTOlor *backgroundColor;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, nullable, strong) NSNumber *clipsContent;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// An array of nodes that are direct children of this node
@property (nonatomic, nullable, copy) NSArray<QTDocumentElement *> *children;
@end

/// Node Properties
/// The root node
///
/// An array of nodes that are direct children of this node
///
/// An array of canvases attached to the document
///
/// An array of top level layers on the canvas
///
/// An array of nodes that are being boolean operated on
///
/// The root node within the document
@interface QTOcument : NSObject
/// An array of canvases attached to the document
@property (nonatomic, nullable, copy) NSArray<QTDocumentElement *> *children;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
@end

/// Sizing constraint for exports
@interface QTConstraint : NSObject
/// Type of constraint to apply; string enum with potential values below
/// "SCALE": Scale by value
/// "WIDTH": Scale proportionally and set width to value
/// "HEIGHT": Scale proportionally and set height to value
@property (nonatomic, nullable, assign) QTConstraintType *type;
/// See type property for effect of this field
@property (nonatomic, nullable, strong) NSNumber *value;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A solid color, gradient, or image texture that can be applied as fills or strokes
@interface QTPaint : NSObject
/// Solid color of the paint
@property (nonatomic, nullable, strong) QTOlor *color;
/// This field contains three vectors, each of which are a position in
/// normalized object space (normalized object space is if the top left
/// corner of the bounding box of the object is (0, 0) and the bottom
/// right is (1,1)). The first position corresponds to the start of the
/// gradient (value 0 for the purposes of calculating gradient stops),
/// the second position is the end of the gradient (value 1), and the
/// third handle position determines the width of the gradient (only
/// relevant for non-linear gradients).
@property (nonatomic, nullable, copy) NSArray<QTOffset *> *gradientHandlePositions;
/// Positions of key points along the gradient axis with the colors
/// anchored there. Colors along the gradient are interpolated smoothly
/// between neighboring gradient stops.
@property (nonatomic, nullable, copy) NSArray<QTColorStopElement *> *gradientStops;
/// Overall opacity of paint (colors within the paint can also have opacity
/// values which would blend with this)
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// Image scaling mode
@property (nonatomic, nullable, copy) NSString *scaleMode;
/// Type of paint as a string enum
@property (nonatomic, nullable, assign) QTPaintType *type;
/// Is the paint enabled?
@property (nonatomic, nullable, strong) NSNumber *visible;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A regular n-sided polygon
@interface QTRegularPolygon : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An ellipse
@interface QTEllipse : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Where stroke is drawn relative to the vector outline as a string enum
/// "INSIDE": draw stroke inside the shape boundary
/// "OUTSIDE": draw stroke outside the shape boundary
/// "CENTER": draw stroke centered along the shape boundary
@property (nonatomic, nullable, assign) QTStrokeAlign *strokeAlign;
/// The weight of strokes on the node
@property (nonatomic, nullable, strong) NSNumber *strokeWeight;
/// An array of fill paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *fills;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// An array of stroke paints applied to the node
@property (nonatomic, nullable, copy) NSArray<QTPaintElement *> *strokes;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// A logical grouping of nodes
@interface QTGroup : NSObject
/// An array of effects attached to this node
/// (see effects sectionfor more details)
@property (nonatomic, nullable, copy) NSArray<QTEffectElement *> *effects;
/// An array of layout grids attached to this node (see layout grids section
/// for more details). GROUP nodes do not have this attribute
@property (nonatomic, nullable, copy) NSArray<QTLayoutGridElement *> *layoutGrids;
/// Opacity of the node
@property (nonatomic, nullable, strong) NSNumber *opacity;
/// the name given to the node by the user in the tool.
@property (nonatomic, nullable, copy) NSString *name;
/// Bounding box of the node in absolute space coordinates
@property (nonatomic, nullable, strong) QTAbsoluteBoundingBox *absoluteBoundingBox;
/// Node ID of node to transition to in prototyping
@property (nonatomic, nullable, copy) NSString *transitionNodeID;
/// whether or not the node is visible on the canvas
@property (nonatomic, nullable, strong) NSNumber *visible;
/// How this node blends with nodes behind it in the scene
/// (see blend mode section for more details)
@property (nonatomic, nullable, assign) QTBlendMode *blendMode;
/// Background color of the node
@property (nonatomic, nullable, strong) QTOlor *backgroundColor;
/// Horizontal and vertical layout constraints for node
@property (nonatomic, nullable, strong) QTConstraints *constraints;
/// Does this node mask sibling nodes in front of it?
@property (nonatomic, nullable, strong) NSNumber *isMask;
/// Does this node clip content outside of its bounds?
@property (nonatomic, nullable, strong) NSNumber *clipsContent;
/// An array of export settings representing images to export from node
@property (nonatomic, nullable, copy) NSArray<QTExportSettingElement *> *exportSettings;
/// the type of the node, refer to table below for details
@property (nonatomic, nullable, assign) QTNodeType *type;
/// a string uniquely identifying this node within the document
@property (nonatomic, nullable, copy) NSString *identifier;
/// Keep height and width constrained to same ratio
@property (nonatomic, nullable, strong) NSNumber *preserveRatio;
/// An array of nodes that are direct children of this node
@property (nonatomic, nullable, copy) NSArray<QTDocumentElement *> *children;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

NS_ASSUME_NONNULL_END
