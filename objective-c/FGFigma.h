// To parse this JSON:
//
//   NSError *error;
//   QTComment *comment = [QTComment fromJSON:json encoding:NSUTF8Encoding error:&error];
//   QTUser *user = [QTUser fromJSON:json encoding:NSUTF8Encoding error:&error];

#import <Foundation/Foundation.h>

@class QTComment;
@class QTUser;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Object interfaces

/// A comment or reply left by a user
@interface QTComment : NSObject
/// Unique identifier for comment
@property (nonatomic, copy) NSString *identifier;

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

NS_ASSUME_NONNULL_END
