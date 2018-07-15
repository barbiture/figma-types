#import "FGFigma.h"

#define λ(decl, expr) (^(decl) { return (expr); })

static id NSNullify(id _Nullable x) {
    return (x == nil || x == NSNull.null) ? NSNull.null : x;
}

NS_ASSUME_NONNULL_BEGIN

@interface FGFileResponse (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGComponent (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGRect (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGColor (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGDocument (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGLayoutConstraint (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGEffect (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGVector2 (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGExportSetting (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGConstraint (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGPaint (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGColorStop (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGLayoutGrid (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGTypeStyle (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGDocumentClass (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGCommentsResponse (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGComment (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGClientMeta (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGUser (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGCommentRequest (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGProjectsResponse (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGProject (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGProjectFilesResponse (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGFile (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@implementation FGBlendMode
+ (NSDictionary<NSString *, FGBlendMode *> *)values
{
    static NSDictionary<NSString *, FGBlendMode *> *values;
    return values = values ? values : @{
        @"COLOR": [[FGBlendMode alloc] initWithValue:@"COLOR"],
        @"COLOR_BURN": [[FGBlendMode alloc] initWithValue:@"COLOR_BURN"],
        @"COLOR_DODGE": [[FGBlendMode alloc] initWithValue:@"COLOR_DODGE"],
        @"DARKEN": [[FGBlendMode alloc] initWithValue:@"DARKEN"],
        @"DIFFERENCE": [[FGBlendMode alloc] initWithValue:@"DIFFERENCE"],
        @"EXCLUSION": [[FGBlendMode alloc] initWithValue:@"EXCLUSION"],
        @"HARD_LIGHT": [[FGBlendMode alloc] initWithValue:@"HARD_LIGHT"],
        @"HUE": [[FGBlendMode alloc] initWithValue:@"HUE"],
        @"LIGHTEN": [[FGBlendMode alloc] initWithValue:@"LIGHTEN"],
        @"LINEAR_BURN": [[FGBlendMode alloc] initWithValue:@"LINEAR_BURN"],
        @"LINEAR_DODGE": [[FGBlendMode alloc] initWithValue:@"LINEAR_DODGE"],
        @"LUMINOSITY": [[FGBlendMode alloc] initWithValue:@"LUMINOSITY"],
        @"MULTIPLY": [[FGBlendMode alloc] initWithValue:@"MULTIPLY"],
        @"NORMAL": [[FGBlendMode alloc] initWithValue:@"NORMAL"],
        @"OVERLAY": [[FGBlendMode alloc] initWithValue:@"OVERLAY"],
        @"PASS_THROUGH": [[FGBlendMode alloc] initWithValue:@"PASS_THROUGH"],
        @"SATURATION": [[FGBlendMode alloc] initWithValue:@"SATURATION"],
        @"SCREEN": [[FGBlendMode alloc] initWithValue:@"SCREEN"],
        @"SOFT_LIGHT": [[FGBlendMode alloc] initWithValue:@"SOFT_LIGHT"],
    };
}

+ (FGBlendMode *)color { return FGBlendMode.values[@"COLOR"]; }
+ (FGBlendMode *)colorBurn { return FGBlendMode.values[@"COLOR_BURN"]; }
+ (FGBlendMode *)colorDodge { return FGBlendMode.values[@"COLOR_DODGE"]; }
+ (FGBlendMode *)darken { return FGBlendMode.values[@"DARKEN"]; }
+ (FGBlendMode *)difference { return FGBlendMode.values[@"DIFFERENCE"]; }
+ (FGBlendMode *)exclusion { return FGBlendMode.values[@"EXCLUSION"]; }
+ (FGBlendMode *)hardLight { return FGBlendMode.values[@"HARD_LIGHT"]; }
+ (FGBlendMode *)hue { return FGBlendMode.values[@"HUE"]; }
+ (FGBlendMode *)lighten { return FGBlendMode.values[@"LIGHTEN"]; }
+ (FGBlendMode *)linearBurn { return FGBlendMode.values[@"LINEAR_BURN"]; }
+ (FGBlendMode *)linearDodge { return FGBlendMode.values[@"LINEAR_DODGE"]; }
+ (FGBlendMode *)luminosity { return FGBlendMode.values[@"LUMINOSITY"]; }
+ (FGBlendMode *)multiply { return FGBlendMode.values[@"MULTIPLY"]; }
+ (FGBlendMode *)normal { return FGBlendMode.values[@"NORMAL"]; }
+ (FGBlendMode *)overlay { return FGBlendMode.values[@"OVERLAY"]; }
+ (FGBlendMode *)passThrough { return FGBlendMode.values[@"PASS_THROUGH"]; }
+ (FGBlendMode *)saturation { return FGBlendMode.values[@"SATURATION"]; }
+ (FGBlendMode *)screen { return FGBlendMode.values[@"SCREEN"]; }
+ (FGBlendMode *)softLight { return FGBlendMode.values[@"SOFT_LIGHT"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGBlendMode.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGHorizontal
+ (NSDictionary<NSString *, FGHorizontal *> *)values
{
    static NSDictionary<NSString *, FGHorizontal *> *values;
    return values = values ? values : @{
        @"CENTER": [[FGHorizontal alloc] initWithValue:@"CENTER"],
        @"LEFT": [[FGHorizontal alloc] initWithValue:@"LEFT"],
        @"LEFT_RIGHT": [[FGHorizontal alloc] initWithValue:@"LEFT_RIGHT"],
        @"RIGHT": [[FGHorizontal alloc] initWithValue:@"RIGHT"],
        @"SCALE": [[FGHorizontal alloc] initWithValue:@"SCALE"],
    };
}

+ (FGHorizontal *)center { return FGHorizontal.values[@"CENTER"]; }
+ (FGHorizontal *)left { return FGHorizontal.values[@"LEFT"]; }
+ (FGHorizontal *)leftRight { return FGHorizontal.values[@"LEFT_RIGHT"]; }
+ (FGHorizontal *)right { return FGHorizontal.values[@"RIGHT"]; }
+ (FGHorizontal *)scale { return FGHorizontal.values[@"SCALE"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGHorizontal.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGVertical
+ (NSDictionary<NSString *, FGVertical *> *)values
{
    static NSDictionary<NSString *, FGVertical *> *values;
    return values = values ? values : @{
        @"BOTTOM": [[FGVertical alloc] initWithValue:@"BOTTOM"],
        @"CENTER": [[FGVertical alloc] initWithValue:@"CENTER"],
        @"SCALE": [[FGVertical alloc] initWithValue:@"SCALE"],
        @"TOP": [[FGVertical alloc] initWithValue:@"TOP"],
        @"TOP_BOTTOM": [[FGVertical alloc] initWithValue:@"TOP_BOTTOM"],
    };
}

+ (FGVertical *)bottom { return FGVertical.values[@"BOTTOM"]; }
+ (FGVertical *)center { return FGVertical.values[@"CENTER"]; }
+ (FGVertical *)scale { return FGVertical.values[@"SCALE"]; }
+ (FGVertical *)top { return FGVertical.values[@"TOP"]; }
+ (FGVertical *)topBottom { return FGVertical.values[@"TOP_BOTTOM"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGVertical.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGEffectType
+ (NSDictionary<NSString *, FGEffectType *> *)values
{
    static NSDictionary<NSString *, FGEffectType *> *values;
    return values = values ? values : @{
        @"BACKGROUND_BLUR": [[FGEffectType alloc] initWithValue:@"BACKGROUND_BLUR"],
        @"DROP_SHADOW": [[FGEffectType alloc] initWithValue:@"DROP_SHADOW"],
        @"INNER_SHADOW": [[FGEffectType alloc] initWithValue:@"INNER_SHADOW"],
        @"LAYER_BLUR": [[FGEffectType alloc] initWithValue:@"LAYER_BLUR"],
    };
}

+ (FGEffectType *)backgroundBlur { return FGEffectType.values[@"BACKGROUND_BLUR"]; }
+ (FGEffectType *)dropShadow { return FGEffectType.values[@"DROP_SHADOW"]; }
+ (FGEffectType *)innerShadow { return FGEffectType.values[@"INNER_SHADOW"]; }
+ (FGEffectType *)layerBlur { return FGEffectType.values[@"LAYER_BLUR"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGEffectType.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGConstraintType
+ (NSDictionary<NSString *, FGConstraintType *> *)values
{
    static NSDictionary<NSString *, FGConstraintType *> *values;
    return values = values ? values : @{
        @"HEIGHT": [[FGConstraintType alloc] initWithValue:@"HEIGHT"],
        @"SCALE": [[FGConstraintType alloc] initWithValue:@"SCALE"],
        @"WIDTH": [[FGConstraintType alloc] initWithValue:@"WIDTH"],
    };
}

+ (FGConstraintType *)height { return FGConstraintType.values[@"HEIGHT"]; }
+ (FGConstraintType *)scale { return FGConstraintType.values[@"SCALE"]; }
+ (FGConstraintType *)width { return FGConstraintType.values[@"WIDTH"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGConstraintType.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGFormat
+ (NSDictionary<NSString *, FGFormat *> *)values
{
    static NSDictionary<NSString *, FGFormat *> *values;
    return values = values ? values : @{
        @"JPG": [[FGFormat alloc] initWithValue:@"JPG"],
        @"PNG": [[FGFormat alloc] initWithValue:@"PNG"],
        @"SVG": [[FGFormat alloc] initWithValue:@"SVG"],
    };
}

+ (FGFormat *)jpg { return FGFormat.values[@"JPG"]; }
+ (FGFormat *)png { return FGFormat.values[@"PNG"]; }
+ (FGFormat *)svg { return FGFormat.values[@"SVG"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGFormat.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGFillType
+ (NSDictionary<NSString *, FGFillType *> *)values
{
    static NSDictionary<NSString *, FGFillType *> *values;
    return values = values ? values : @{
        @"EMOJI": [[FGFillType alloc] initWithValue:@"EMOJI"],
        @"GRADIENT_ANGULAR": [[FGFillType alloc] initWithValue:@"GRADIENT_ANGULAR"],
        @"GRADIENT_DIAMOND": [[FGFillType alloc] initWithValue:@"GRADIENT_DIAMOND"],
        @"GRADIENT_LINEAR": [[FGFillType alloc] initWithValue:@"GRADIENT_LINEAR"],
        @"GRADIENT_RADIAL": [[FGFillType alloc] initWithValue:@"GRADIENT_RADIAL"],
        @"IMAGE": [[FGFillType alloc] initWithValue:@"IMAGE"],
        @"SOLID": [[FGFillType alloc] initWithValue:@"SOLID"],
    };
}

+ (FGFillType *)emoji { return FGFillType.values[@"EMOJI"]; }
+ (FGFillType *)gradientAngular { return FGFillType.values[@"GRADIENT_ANGULAR"]; }
+ (FGFillType *)gradientDiamond { return FGFillType.values[@"GRADIENT_DIAMOND"]; }
+ (FGFillType *)gradientLinear { return FGFillType.values[@"GRADIENT_LINEAR"]; }
+ (FGFillType *)gradientRadial { return FGFillType.values[@"GRADIENT_RADIAL"]; }
+ (FGFillType *)image { return FGFillType.values[@"IMAGE"]; }
+ (FGFillType *)solid { return FGFillType.values[@"SOLID"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGFillType.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGAlignment
+ (NSDictionary<NSString *, FGAlignment *> *)values
{
    static NSDictionary<NSString *, FGAlignment *> *values;
    return values = values ? values : @{
        @"CENTER": [[FGAlignment alloc] initWithValue:@"CENTER"],
        @"MAX": [[FGAlignment alloc] initWithValue:@"MAX"],
        @"MIN": [[FGAlignment alloc] initWithValue:@"MIN"],
    };
}

+ (FGAlignment *)center { return FGAlignment.values[@"CENTER"]; }
+ (FGAlignment *)max { return FGAlignment.values[@"MAX"]; }
+ (FGAlignment *)min { return FGAlignment.values[@"MIN"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGAlignment.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGPattern
+ (NSDictionary<NSString *, FGPattern *> *)values
{
    static NSDictionary<NSString *, FGPattern *> *values;
    return values = values ? values : @{
        @"COLUMNS": [[FGPattern alloc] initWithValue:@"COLUMNS"],
        @"GRID": [[FGPattern alloc] initWithValue:@"GRID"],
        @"ROWS": [[FGPattern alloc] initWithValue:@"ROWS"],
    };
}

+ (FGPattern *)columns { return FGPattern.values[@"COLUMNS"]; }
+ (FGPattern *)grid { return FGPattern.values[@"GRID"]; }
+ (FGPattern *)rows { return FGPattern.values[@"ROWS"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGPattern.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGStrokeAlign
+ (NSDictionary<NSString *, FGStrokeAlign *> *)values
{
    static NSDictionary<NSString *, FGStrokeAlign *> *values;
    return values = values ? values : @{
        @"CENTER": [[FGStrokeAlign alloc] initWithValue:@"CENTER"],
        @"INSIDE": [[FGStrokeAlign alloc] initWithValue:@"INSIDE"],
        @"OUTSIDE": [[FGStrokeAlign alloc] initWithValue:@"OUTSIDE"],
    };
}

+ (FGStrokeAlign *)center { return FGStrokeAlign.values[@"CENTER"]; }
+ (FGStrokeAlign *)inside { return FGStrokeAlign.values[@"INSIDE"]; }
+ (FGStrokeAlign *)outside { return FGStrokeAlign.values[@"OUTSIDE"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGStrokeAlign.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGTextAlignHorizontal
+ (NSDictionary<NSString *, FGTextAlignHorizontal *> *)values
{
    static NSDictionary<NSString *, FGTextAlignHorizontal *> *values;
    return values = values ? values : @{
        @"CENTER": [[FGTextAlignHorizontal alloc] initWithValue:@"CENTER"],
        @"JUSTIFIED": [[FGTextAlignHorizontal alloc] initWithValue:@"JUSTIFIED"],
        @"LEFT": [[FGTextAlignHorizontal alloc] initWithValue:@"LEFT"],
        @"RIGHT": [[FGTextAlignHorizontal alloc] initWithValue:@"RIGHT"],
    };
}

+ (FGTextAlignHorizontal *)center { return FGTextAlignHorizontal.values[@"CENTER"]; }
+ (FGTextAlignHorizontal *)justified { return FGTextAlignHorizontal.values[@"JUSTIFIED"]; }
+ (FGTextAlignHorizontal *)left { return FGTextAlignHorizontal.values[@"LEFT"]; }
+ (FGTextAlignHorizontal *)right { return FGTextAlignHorizontal.values[@"RIGHT"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGTextAlignHorizontal.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGTextAlignVertical
+ (NSDictionary<NSString *, FGTextAlignVertical *> *)values
{
    static NSDictionary<NSString *, FGTextAlignVertical *> *values;
    return values = values ? values : @{
        @"BOTTOM": [[FGTextAlignVertical alloc] initWithValue:@"BOTTOM"],
        @"CENTER": [[FGTextAlignVertical alloc] initWithValue:@"CENTER"],
        @"TOP": [[FGTextAlignVertical alloc] initWithValue:@"TOP"],
    };
}

+ (FGTextAlignVertical *)bottom { return FGTextAlignVertical.values[@"BOTTOM"]; }
+ (FGTextAlignVertical *)center { return FGTextAlignVertical.values[@"CENTER"]; }
+ (FGTextAlignVertical *)top { return FGTextAlignVertical.values[@"TOP"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGTextAlignVertical.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation FGNodeType
+ (NSDictionary<NSString *, FGNodeType *> *)values
{
    static NSDictionary<NSString *, FGNodeType *> *values;
    return values = values ? values : @{
        @"BOOLEAN": [[FGNodeType alloc] initWithValue:@"BOOLEAN"],
        @"CANVAS": [[FGNodeType alloc] initWithValue:@"CANVAS"],
        @"COMPONENT": [[FGNodeType alloc] initWithValue:@"COMPONENT"],
        @"DOCUMENT": [[FGNodeType alloc] initWithValue:@"DOCUMENT"],
        @"ELLIPSE": [[FGNodeType alloc] initWithValue:@"ELLIPSE"],
        @"FRAME": [[FGNodeType alloc] initWithValue:@"FRAME"],
        @"GROUP": [[FGNodeType alloc] initWithValue:@"GROUP"],
        @"INSTANCE": [[FGNodeType alloc] initWithValue:@"INSTANCE"],
        @"LINE": [[FGNodeType alloc] initWithValue:@"LINE"],
        @"RECTANGLE": [[FGNodeType alloc] initWithValue:@"RECTANGLE"],
        @"REGULAR_POLYGON": [[FGNodeType alloc] initWithValue:@"REGULAR_POLYGON"],
        @"SLICE": [[FGNodeType alloc] initWithValue:@"SLICE"],
        @"STAR": [[FGNodeType alloc] initWithValue:@"STAR"],
        @"TEXT": [[FGNodeType alloc] initWithValue:@"TEXT"],
        @"VECTOR": [[FGNodeType alloc] initWithValue:@"VECTOR"],
    };
}

+ (FGNodeType *)boolean { return FGNodeType.values[@"BOOLEAN"]; }
+ (FGNodeType *)canvas { return FGNodeType.values[@"CANVAS"]; }
+ (FGNodeType *)component { return FGNodeType.values[@"COMPONENT"]; }
+ (FGNodeType *)document { return FGNodeType.values[@"DOCUMENT"]; }
+ (FGNodeType *)ellipse { return FGNodeType.values[@"ELLIPSE"]; }
+ (FGNodeType *)frame { return FGNodeType.values[@"FRAME"]; }
+ (FGNodeType *)group { return FGNodeType.values[@"GROUP"]; }
+ (FGNodeType *)instance { return FGNodeType.values[@"INSTANCE"]; }
+ (FGNodeType *)line { return FGNodeType.values[@"LINE"]; }
+ (FGNodeType *)rectangle { return FGNodeType.values[@"RECTANGLE"]; }
+ (FGNodeType *)regularPolygon { return FGNodeType.values[@"REGULAR_POLYGON"]; }
+ (FGNodeType *)slice { return FGNodeType.values[@"SLICE"]; }
+ (FGNodeType *)star { return FGNodeType.values[@"STAR"]; }
+ (FGNodeType *)text { return FGNodeType.values[@"TEXT"]; }
+ (FGNodeType *)vector { return FGNodeType.values[@"VECTOR"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGNodeType.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

static id map(id collection, id (^f)(id value)) {
    id result = nil;
    if ([collection isKindOfClass:NSArray.class]) {
        result = [NSMutableArray arrayWithCapacity:[collection count]];
        for (id x in collection) [result addObject:f(x)];
    } else if ([collection isKindOfClass:NSDictionary.class]) {
        result = [NSMutableDictionary dictionaryWithCapacity:[collection count]];
        for (id key in collection) [result setObject:f([collection objectForKey:key]) forKey:key];
    }
    return result;
}

#pragma mark - JSON serialization

FGFileResponse *_Nullable FGFileResponseFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGFileResponse fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGFileResponse *_Nullable FGFileResponseFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGFileResponseFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGFileResponseToData(FGFileResponse *fileResponse, NSError **error)
{
    @try {
        id json = [fileResponse JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGFileResponseToJSON(FGFileResponse *fileResponse, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGFileResponseToData(fileResponse, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGCommentsResponse *_Nullable FGCommentsResponseFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGCommentsResponse fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGCommentsResponse *_Nullable FGCommentsResponseFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGCommentsResponseFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGCommentsResponseToData(FGCommentsResponse *commentsResponse, NSError **error)
{
    @try {
        id json = [commentsResponse JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGCommentsResponseToJSON(FGCommentsResponse *commentsResponse, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGCommentsResponseToData(commentsResponse, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGCommentRequest *_Nullable FGCommentRequestFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGCommentRequest fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGCommentRequest *_Nullable FGCommentRequestFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGCommentRequestFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGCommentRequestToData(FGCommentRequest *commentRequest, NSError **error)
{
    @try {
        id json = [commentRequest JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGCommentRequestToJSON(FGCommentRequest *commentRequest, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGCommentRequestToData(commentRequest, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGProjectsResponse *_Nullable FGProjectsResponseFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGProjectsResponse fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGProjectsResponse *_Nullable FGProjectsResponseFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGProjectsResponseFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGProjectsResponseToData(FGProjectsResponse *projectsResponse, NSError **error)
{
    @try {
        id json = [projectsResponse JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGProjectsResponseToJSON(FGProjectsResponse *projectsResponse, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGProjectsResponseToData(projectsResponse, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGProjectFilesResponse *_Nullable FGProjectFilesResponseFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGProjectFilesResponse fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGProjectFilesResponse *_Nullable FGProjectFilesResponseFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGProjectFilesResponseFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGProjectFilesResponseToData(FGProjectFilesResponse *projectFilesResponse, NSError **error)
{
    @try {
        id json = [projectFilesResponse JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGProjectFilesResponseToJSON(FGProjectFilesResponse *projectFilesResponse, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGProjectFilesResponseToData(projectFilesResponse, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

@implementation FGFileResponse
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"components": @"components",
        @"document": @"document",
        @"schemaVersion": @"schemaVersion",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGFileResponseFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGFileResponseFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGFileResponse alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _components = map(_components, λ(id x, [FGComponent fromJSONDictionary:x]));
        _document = [FGDocumentClass fromJSONDictionary:(id)_document];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGFileResponse.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"components": map(_components, λ(id x, [x JSONDictionary])),
        @"document": [_document JSONDictionary],
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGFileResponseToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGFileResponseToJSON(self, encoding, error);
}
@end

@implementation FGComponent
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"backgroundColor": @"backgroundColor",
        @"blendMode": @"blendMode",
        @"children": @"children",
        @"clipsContent": @"isClipsContent",
        @"constraints": @"constraints",
        @"description": @"theDescription",
        @"effects": @"effects",
        @"exportSettings": @"exportSettings",
        @"id": @"identifier",
        @"isMask": @"isMask",
        @"layoutGrids": @"layoutGrids",
        @"name": @"name",
        @"opacity": @"opacity",
        @"preserveRatio": @"isPreserveRatio",
        @"transitionNodeID": @"transitionNodeID",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGComponent alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRect fromJSONDictionary:(id)_absoluteBoundingBox];
        _backgroundColor = [FGColor fromJSONDictionary:(id)_backgroundColor];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _children = map(_children, λ(id x, [FGDocument fromJSONDictionary:x]));
        _constraints = [FGLayoutConstraint fromJSONDictionary:(id)_constraints];
        _effects = map(_effects, λ(id x, [FGEffect fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [FGLayoutGrid fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGComponent.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGComponent.properties.allValues] mutableCopy];

    for (id jsonName in FGComponent.properties) {
        id propertyName = FGComponent.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"backgroundColor": [_backgroundColor JSONDictionary],
        @"blendMode": [_blendMode value],
        @"children": map(_children, λ(id x, [x JSONDictionary])),
        @"clipsContent": _isClipsContent ? @YES : @NO,
        @"constraints": [_constraints JSONDictionary],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"isMask": _isMask ? @YES : @NO,
        @"layoutGrids": map(_layoutGrids, λ(id x, [x JSONDictionary])),
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}
@end

@implementation FGRect
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"height": @"height",
        @"width": @"width",
        @"x": @"x",
        @"y": @"y",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGRect alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:FGRect.properties.allValues];
}
@end

@implementation FGColor
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"a": @"a",
        @"b": @"b",
        @"g": @"g",
        @"r": @"r",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGColor alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:FGColor.properties.allValues];
}
@end

@implementation FGDocument
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"children": @"children",
        @"id": @"identifier",
        @"name": @"name",
        @"type": @"type",
        @"visible": @"isVisible",
        @"backgroundColor": @"backgroundColor",
        @"exportSettings": @"exportSettings",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"blendMode": @"blendMode",
        @"clipsContent": @"clipsContent",
        @"constraints": @"constraints",
        @"effects": @"effects",
        @"isMask": @"isMask",
        @"layoutGrids": @"layoutGrids",
        @"opacity": @"opacity",
        @"preserveRatio": @"preserveRatio",
        @"transitionNodeID": @"transitionNodeID",
        @"fills": @"fills",
        @"strokeAlign": @"strokeAlign",
        @"strokes": @"strokes",
        @"strokeWeight": @"strokeWeight",
        @"cornerRadius": @"cornerRadius",
        @"characters": @"characters",
        @"characterStyleOverrides": @"characterStyleOverrides",
        @"style": @"style",
        @"styleOverrideTable": @"styleOverrideTable",
        @"description": @"theDescription",
        @"componentId": @"componentID",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGDocument alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _children = map(_children, λ(id x, [FGDocument fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
        _backgroundColor = [FGColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _absoluteBoundingBox = [FGRect fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _constraints = [FGLayoutConstraint fromJSONDictionary:(id)_constraints];
        _effects = map(_effects, λ(id x, [FGEffect fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [FGLayoutGrid fromJSONDictionary:x]));
        _fills = map(_fills, λ(id x, [FGPaint fromJSONDictionary:x]));
        _strokeAlign = [FGStrokeAlign withValue:(id)_strokeAlign];
        _strokes = map(_strokes, λ(id x, [FGPaint fromJSONDictionary:x]));
        _style = [FGTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [FGTypeStyle fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGDocument.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGDocument.properties.allValues] mutableCopy];

    for (id jsonName in FGDocument.properties) {
        id propertyName = FGDocument.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"layoutGrids": NSNullify(map(_layoutGrids, λ(id x, [x JSONDictionary]))),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
        @"style": NSNullify([_style JSONDictionary]),
        @"styleOverrideTable": NSNullify(map(_styleOverrideTable, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}
@end

@implementation FGLayoutConstraint
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"horizontal": @"horizontal",
        @"vertical": @"vertical",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGLayoutConstraint alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _horizontal = [FGHorizontal withValue:(id)_horizontal];
        _vertical = [FGVertical withValue:(id)_vertical];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGLayoutConstraint.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"horizontal": [_horizontal value],
        @"vertical": [_vertical value],
    }];

    return dict;
}
@end

@implementation FGEffect
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"blendMode": @"blendMode",
        @"color": @"color",
        @"offset": @"offset",
        @"radius": @"radius",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGEffect alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _color = [FGColor fromJSONDictionary:(id)_color];
        _offset = [FGVector2 fromJSONDictionary:(id)_offset];
        _type = [FGEffectType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGEffect.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGEffect.properties.allValues] mutableCopy];

    for (id jsonName in FGEffect.properties) {
        id propertyName = FGEffect.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"blendMode": NSNullify([_blendMode value]),
        @"color": NSNullify([_color JSONDictionary]),
        @"offset": NSNullify([_offset JSONDictionary]),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}
@end

@implementation FGVector2
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"x": @"x",
        @"y": @"y",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGVector2 alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:FGVector2.properties.allValues];
}
@end

@implementation FGExportSetting
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"constraint": @"constraint",
        @"format": @"format",
        @"suffix": @"suffix",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGExportSetting alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _constraint = [FGConstraint fromJSONDictionary:(id)_constraint];
        _format = [FGFormat withValue:(id)_format];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGExportSetting.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"constraint": [_constraint JSONDictionary],
        @"format": [_format value],
    }];

    return dict;
}
@end

@implementation FGConstraint
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"type": @"type",
        @"value": @"value",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGConstraint alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [FGConstraintType withValue:(id)_type];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGConstraint.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"type": [_type value],
    }];

    return dict;
}
@end

@implementation FGPaint
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"color": @"color",
        @"gradientHandlePositions": @"gradientHandlePositions",
        @"gradientStops": @"gradientStops",
        @"opacity": @"opacity",
        @"scaleMode": @"scaleMode",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGPaint alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _color = [FGColor fromJSONDictionary:(id)_color];
        _gradientHandlePositions = map(_gradientHandlePositions, λ(id x, [FGVector2 fromJSONDictionary:x]));
        _gradientStops = map(_gradientStops, λ(id x, [FGColorStop fromJSONDictionary:x]));
        _type = [FGFillType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGPaint.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGPaint.properties.allValues] mutableCopy];

    for (id jsonName in FGPaint.properties) {
        id propertyName = FGPaint.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"color": NSNullify([_color JSONDictionary]),
        @"gradientHandlePositions": NSNullify(map(_gradientHandlePositions, λ(id x, [x JSONDictionary]))),
        @"gradientStops": NSNullify(map(_gradientStops, λ(id x, [x JSONDictionary]))),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}
@end

@implementation FGColorStop
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"color": @"color",
        @"position": @"position",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGColorStop alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _color = [FGColor fromJSONDictionary:(id)_color];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGColorStop.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"color": [_color JSONDictionary],
    }];

    return dict;
}
@end

@implementation FGLayoutGrid
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"alignment": @"alignment",
        @"color": @"color",
        @"count": @"count",
        @"gutterSize": @"gutterSize",
        @"offset": @"offset",
        @"pattern": @"pattern",
        @"sectionSize": @"sectionSize",
        @"visible": @"isVisible",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGLayoutGrid alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _alignment = [FGAlignment withValue:(id)_alignment];
        _color = [FGColor fromJSONDictionary:(id)_color];
        _pattern = [FGPattern withValue:(id)_pattern];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGLayoutGrid.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGLayoutGrid.properties.allValues] mutableCopy];

    for (id jsonName in FGLayoutGrid.properties) {
        id propertyName = FGLayoutGrid.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"alignment": [_alignment value],
        @"color": [_color JSONDictionary],
        @"pattern": [_pattern value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}
@end

@implementation FGTypeStyle
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"fills": @"fills",
        @"fontFamily": @"fontFamily",
        @"fontPostScriptName": @"fontPostScriptName",
        @"fontSize": @"fontSize",
        @"fontWeight": @"fontWeight",
        @"italic": @"isItalic",
        @"letterSpacing": @"letterSpacing",
        @"lineHeightPercent": @"lineHeightPercent",
        @"lineHeightPx": @"lineHeightPx",
        @"textAlignHorizontal": @"textAlignHorizontal",
        @"textAlignVertical": @"textAlignVertical",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGTypeStyle alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _fills = map(_fills, λ(id x, [FGPaint fromJSONDictionary:x]));
        _textAlignHorizontal = [FGTextAlignHorizontal withValue:(id)_textAlignHorizontal];
        _textAlignVertical = [FGTextAlignVertical withValue:(id)_textAlignVertical];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGTypeStyle.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGTypeStyle.properties.allValues] mutableCopy];

    for (id jsonName in FGTypeStyle.properties) {
        id propertyName = FGTypeStyle.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"italic": _isItalic ? @YES : @NO,
        @"textAlignHorizontal": [_textAlignHorizontal value],
        @"textAlignVertical": [_textAlignVertical value],
    }];

    return dict;
}
@end

@implementation FGDocumentClass
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"children": @"children",
        @"id": @"identifier",
        @"name": @"name",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGDocumentClass alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _children = map(_children, λ(id x, [FGDocument fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGDocumentClass.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGDocumentClass.properties.allValues] mutableCopy];

    for (id jsonName in FGDocumentClass.properties) {
        id propertyName = FGDocumentClass.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"children": map(_children, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}
@end

@implementation FGCommentsResponse
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"comments": @"comments",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGCommentsResponseFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGCommentsResponseFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGCommentsResponse alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _comments = map(_comments, λ(id x, [FGComment fromJSONDictionary:x]));
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGCommentsResponse.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"comments": map(_comments, λ(id x, [x JSONDictionary])),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGCommentsResponseToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGCommentsResponseToJSON(self, encoding, error);
}
@end

@implementation FGComment
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"client_meta": @"clientMeta",
        @"created_at": @"createdAt",
        @"file_key": @"fileKey",
        @"id": @"identifier",
        @"message": @"message",
        @"order_id": @"orderID",
        @"parent_id": @"parentID",
        @"resolved_at": @"resolvedAt",
        @"user": @"user",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGComment alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _clientMeta = [FGClientMeta fromJSONDictionary:(id)_clientMeta];
        _user = [FGUser fromJSONDictionary:(id)_user];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGComment.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGComment.properties.allValues] mutableCopy];

    for (id jsonName in FGComment.properties) {
        id propertyName = FGComment.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"client_meta": [_clientMeta JSONDictionary],
        @"user": [_user JSONDictionary],
    }];

    return dict;
}
@end

@implementation FGClientMeta
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"x": @"x",
        @"y": @"y",
        @"node_id": @"nodeID",
        @"node_offset": @"nodeOffset",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGClientMeta alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _nodeOffset = [FGVector2 fromJSONDictionary:(id)_nodeOffset];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGClientMeta.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGClientMeta.properties.allValues] mutableCopy];

    for (id jsonName in FGClientMeta.properties) {
        id propertyName = FGClientMeta.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"node_offset": NSNullify([_nodeOffset JSONDictionary]),
    }];

    return dict;
}
@end

@implementation FGUser
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"handle": @"handle",
        @"img_url": @"imgURL",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGUser alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGUser.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGUser.properties.allValues] mutableCopy];

    for (id jsonName in FGUser.properties) {
        id propertyName = FGUser.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}
@end

@implementation FGCommentRequest
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"client_meta": @"clientMeta",
        @"message": @"message",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGCommentRequestFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGCommentRequestFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGCommentRequest alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _clientMeta = [FGClientMeta fromJSONDictionary:(id)_clientMeta];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGCommentRequest.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGCommentRequest.properties.allValues] mutableCopy];

    for (id jsonName in FGCommentRequest.properties) {
        id propertyName = FGCommentRequest.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"client_meta": [_clientMeta JSONDictionary],
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGCommentRequestToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGCommentRequestToJSON(self, encoding, error);
}
@end

@implementation FGProjectsResponse
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"projects": @"projects",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGProjectsResponseFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGProjectsResponseFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGProjectsResponse alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _projects = map(_projects, λ(id x, [FGProject fromJSONDictionary:x]));
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGProjectsResponse.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"projects": map(_projects, λ(id x, [x JSONDictionary])),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGProjectsResponseToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGProjectsResponseToJSON(self, encoding, error);
}
@end

@implementation FGProject
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGProject alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGProject.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGProject.properties.allValues] mutableCopy];

    for (id jsonName in FGProject.properties) {
        id propertyName = FGProject.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}
@end

@implementation FGProjectFilesResponse
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"files": @"files",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGProjectFilesResponseFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGProjectFilesResponseFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGProjectFilesResponse alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _files = map(_files, λ(id x, [FGFile fromJSONDictionary:x]));
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGProjectFilesResponse.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"files": map(_files, λ(id x, [x JSONDictionary])),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGProjectFilesResponseToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGProjectFilesResponseToJSON(self, encoding, error);
}
@end

@implementation FGFile
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"key": @"key",
        @"last_modified": @"lastModified",
        @"name": @"name",
        @"thumbnail_url": @"thumbnailURL",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGFile alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = FGFile.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGFile.properties.allValues] mutableCopy];

    for (id jsonName in FGFile.properties) {
        id propertyName = FGFile.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}
@end

NS_ASSUME_NONNULL_END
