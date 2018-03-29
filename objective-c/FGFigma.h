// To parse this JSON:
//
//   NSError *error;
//   QTComment *comment = [QTComment fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTUser *user = [QTUser fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTColor *color = [QTColor fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTConstraint *constraint = [QTConstraint fromJSON:json encoding:NSUTF8Encoding error:&error];

#import <Foundation/Foundation.h>

@class QTComment;
@class QTCommentUser;
@class QTUser;
@class QTColor;
@class QTConstraint;
@class QTType;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Boxed enums

/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
@interface QTType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (QTType *)height;
+ (QTType *)scale;
+ (QTType *)width;
@end

#pragma mark - Object interfaces

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

/// A description of a user
@interface QTUser : NSObject
@property (nonatomic, copy) NSString *handle;
@property (nonatomic, copy) NSString *imgURL;

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

/// Sizing constraint for exports
@interface QTConstraint : NSObject
/// Type of constraint to apply; string enum with potential values below
///
/// * "SCALE": Scale by value
/// * "WIDTH": Scale proportionally and set width to value
/// * "HEIGHT": Scale proportionally and set height to value
@property (nonatomic, assign) QTType *type;
/// See type property for effect of this field
@property (nonatomic, nullable, strong) NSNumber *value;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

NS_ASSUME_NONNULL_END
