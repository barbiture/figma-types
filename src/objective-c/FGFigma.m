#import "FGFigma.h"

#define λ(decl, expr) (^(decl) { return (expr); })

static id NSNullify(id _Nullable x) {
    return (x == nil || x == NSNull.null) ? NSNull.null : x;
}

NS_ASSUME_NONNULL_BEGIN

@interface FGFigma (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

#pragma mark - JSON serialization

FGFigma *_Nullable FGFigmaFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGFigma fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGFigma *_Nullable FGFigmaFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGFigmaFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGFigmaToData(FGFigma *figma, NSError **error)
{
    @try {
        id json = [figma JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGFigmaToJSON(FGFigma *figma, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGFigmaToData(figma, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

@implementation FGFigma
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"latitude": @"latitude",
        @"longitude": @"longitude",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGFigmaFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGFigmaFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGFigma alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    return [self dictionaryWithValuesForKeys:FGFigma.properties.allValues];
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGFigmaToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGFigmaToJSON(self, encoding, error);
}
@end

NS_ASSUME_NONNULL_END
