// To parse this JSON:
//
//   NSError *error;
//   QTNode *node = [QTNode fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTColor *color = [QTColor fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTGlobal *global = [QTGlobal fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTUser *user = [QTUser fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTBlendMode *blendMode = QTBlendModeFromJSON(json, NSUTF8Encoding, &error);
//   QTCanvas *canvas = [QTCanvas fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTDocument *document = [QTDocument fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTConstraint *constraint = [QTConstraint fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTComment *comment = [QTComment fromJSON:json encoding:NSUTF8Encoding error:&error];

#import <Foundation/Foundation.h>

@class QTNode;
@class QTNodeColor;
@class QTNodeNode;
@class QTNodeType;
@class QTColor;
@class QTGlobal;
@class QTUser;
@class QTBlendMode;
@class QTCanvas;
@class QTPurpleNode;
@class QTDocument;
@class QTFluffyNode;
@class QTConstraint;
@class QTConstraintType;
@class QTComment;
@class QTCommentUser;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Boxed enums

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

/// Enum describing how layer blends with layers below
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

typedef QTBlendMode QTBlendMode;

#pragma mark - Top-level marshaling functions

QTBlendMode *_Nullable QTBlendModeFromData(NSData *data, NSError **error);
QTBlendMode *_Nullable QTBlendModeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error);
NSData      *_Nullable QTBlendModeToData(QTBlendMode *blendMode, NSError **error);
NSString    *_Nullable QTBlendModeToJSON(QTBlendMode *blendMode, NSStringEncoding encoding, NSError **error);

#pragma mark - Object interfaces

/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
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
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
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
@property (nonatomic, assign) QTNodeType *type;
/// An array of canvases attached to the document
///
/// An array of top level layers on the canvas
@property (nonatomic, nullable, copy) NSArray<QTNodeNode *> *children;
/// Background color of the canvas
@property (nonatomic, nullable, strong) QTNodeColor *backgroundColor;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An RGBA color
///
/// Background color of the canvas
@interface QTNodeColor : NSObject
/// Red channel value, between 0 and 1
@property (nonatomic, assign) double r;
/// Green channel value, between 0 and 1
@property (nonatomic, assign) double g;
/// Blue channel value, between 0 and 1
@property (nonatomic, assign) double b;
/// Alpha channel value, between 0 and 1
@property (nonatomic, assign) double a;
@end

/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
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
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
///
/// An array of top level layers on the canvas
@interface QTNodeNode : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTNodeType *type;
/// An array of canvases attached to the document
///
/// An array of top level layers on the canvas
@property (nonatomic, nullable, copy) NSArray<QTNodeNode *> *children;
/// Background color of the canvas
@property (nonatomic, nullable, strong) QTNodeColor *backgroundColor;
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
@property (nonatomic, assign) QTNodeType *type;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
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

/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
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
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
@interface QTCanvas : NSObject
/// A string uniquely identifying this node within the document
@property (nonatomic, copy) NSString *identifier;
/// The name given to the node by the user in the tool
@property (nonatomic, copy) NSString *name;
/// Whether or not the node is visible on the canvas
@property (nonatomic, assign) BOOL isVisible;
/// The type of the node
@property (nonatomic, assign) QTNodeType *type;
/// An array of top level layers on the canvas
@property (nonatomic, nullable, copy) NSArray<QTPurpleNode *> *children;
/// Background color of the canvas
@property (nonatomic, nullable, strong) QTNodeColor *backgroundColor;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An array of top level layers on the canvas
///
/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
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
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
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
@property (nonatomic, assign) QTNodeType *type;
/// An array of canvases attached to the document
///
/// An array of top level layers on the canvas
@property (nonatomic, nullable, copy) NSArray<QTNodeNode *> *children;
/// Background color of the canvas
@property (nonatomic, nullable, strong) QTNodeColor *backgroundColor;
@end

/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
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
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
///
/// Unique identifier for comment
///
/// The file in which the comment lives
///
/// If present, the id of the comment to which this is the reply
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
@property (nonatomic, nullable, copy) NSArray<QTFluffyNode *> *children;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

/// An array of canvases attached to the document
///
/// Properties are shared across all nodes
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
/// Whether or not the node is visible on the canvas
///
/// A string uniquely identifying this node within the document
///
/// The name given to the node by the user in the tool
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
@property (nonatomic, assign) QTNodeType *type;
/// An array of canvases attached to the document
///
/// An array of top level layers on the canvas
@property (nonatomic, nullable, copy) NSArray<QTNodeNode *> *children;
/// Background color of the canvas
@property (nonatomic, nullable, strong) QTNodeColor *backgroundColor;
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
