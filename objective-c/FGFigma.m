#import "FGFigma.h"

#define λ(decl, expr) (^(decl) { return (expr); })

static id NSNullify(id _Nullable x) {
    return (x == nil || x == NSNull.null) ? NSNull.null : x;
}

NS_ASSUME_NONNULL_BEGIN

@interface QTFileResponse (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTComponentNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTRectangle (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTColor (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTPurpleNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTNodeNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTLayoutConstraint (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTEffect (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTVector (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTExportSetting (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTConstraint (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTPaint (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTColorStop (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTLayoutGrid (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTTypeStyle (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTDocumentNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTFluffyNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@implementation QTBlendMode
+ (NSDictionary<NSString *, QTBlendMode *> *)values
{
    static NSDictionary<NSString *, QTBlendMode *> *values;
    return values = values ? values : @{
        @"COLOR": [[QTBlendMode alloc] initWithValue:@"COLOR"],
        @"COLOR_BURN": [[QTBlendMode alloc] initWithValue:@"COLOR_BURN"],
        @"COLOR_DODGE": [[QTBlendMode alloc] initWithValue:@"COLOR_DODGE"],
        @"DARKEN": [[QTBlendMode alloc] initWithValue:@"DARKEN"],
        @"DIFFERENCE": [[QTBlendMode alloc] initWithValue:@"DIFFERENCE"],
        @"EXCLUSION": [[QTBlendMode alloc] initWithValue:@"EXCLUSION"],
        @"HARD_LIGHT": [[QTBlendMode alloc] initWithValue:@"HARD_LIGHT"],
        @"HUE": [[QTBlendMode alloc] initWithValue:@"HUE"],
        @"LIGHTEN": [[QTBlendMode alloc] initWithValue:@"LIGHTEN"],
        @"LINEAR_BURN": [[QTBlendMode alloc] initWithValue:@"LINEAR_BURN"],
        @"LINEAR_DODGE": [[QTBlendMode alloc] initWithValue:@"LINEAR_DODGE"],
        @"LUMINOSITY": [[QTBlendMode alloc] initWithValue:@"LUMINOSITY"],
        @"MULTIPLY": [[QTBlendMode alloc] initWithValue:@"MULTIPLY"],
        @"NORMAL": [[QTBlendMode alloc] initWithValue:@"NORMAL"],
        @"OVERLAY": [[QTBlendMode alloc] initWithValue:@"OVERLAY"],
        @"PASS_THROUGH": [[QTBlendMode alloc] initWithValue:@"PASS_THROUGH"],
        @"SATURATION": [[QTBlendMode alloc] initWithValue:@"SATURATION"],
        @"SCREEN": [[QTBlendMode alloc] initWithValue:@"SCREEN"],
        @"SOFT_LIGHT": [[QTBlendMode alloc] initWithValue:@"SOFT_LIGHT"],
    };
}

+ (QTBlendMode *)color { return QTBlendMode.values[@"COLOR"]; }
+ (QTBlendMode *)colorBurn { return QTBlendMode.values[@"COLOR_BURN"]; }
+ (QTBlendMode *)colorDodge { return QTBlendMode.values[@"COLOR_DODGE"]; }
+ (QTBlendMode *)darken { return QTBlendMode.values[@"DARKEN"]; }
+ (QTBlendMode *)difference { return QTBlendMode.values[@"DIFFERENCE"]; }
+ (QTBlendMode *)exclusion { return QTBlendMode.values[@"EXCLUSION"]; }
+ (QTBlendMode *)hardLight { return QTBlendMode.values[@"HARD_LIGHT"]; }
+ (QTBlendMode *)hue { return QTBlendMode.values[@"HUE"]; }
+ (QTBlendMode *)lighten { return QTBlendMode.values[@"LIGHTEN"]; }
+ (QTBlendMode *)linearBurn { return QTBlendMode.values[@"LINEAR_BURN"]; }
+ (QTBlendMode *)linearDodge { return QTBlendMode.values[@"LINEAR_DODGE"]; }
+ (QTBlendMode *)luminosity { return QTBlendMode.values[@"LUMINOSITY"]; }
+ (QTBlendMode *)multiply { return QTBlendMode.values[@"MULTIPLY"]; }
+ (QTBlendMode *)normal { return QTBlendMode.values[@"NORMAL"]; }
+ (QTBlendMode *)overlay { return QTBlendMode.values[@"OVERLAY"]; }
+ (QTBlendMode *)passThrough { return QTBlendMode.values[@"PASS_THROUGH"]; }
+ (QTBlendMode *)saturation { return QTBlendMode.values[@"SATURATION"]; }
+ (QTBlendMode *)screen { return QTBlendMode.values[@"SCREEN"]; }
+ (QTBlendMode *)softLight { return QTBlendMode.values[@"SOFT_LIGHT"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTBlendMode.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTHorizontal
+ (NSDictionary<NSString *, QTHorizontal *> *)values
{
    static NSDictionary<NSString *, QTHorizontal *> *values;
    return values = values ? values : @{
        @"CENTER": [[QTHorizontal alloc] initWithValue:@"CENTER"],
        @"LEFT": [[QTHorizontal alloc] initWithValue:@"LEFT"],
        @"LEFT_RIGHT": [[QTHorizontal alloc] initWithValue:@"LEFT_RIGHT"],
        @"RIGHT": [[QTHorizontal alloc] initWithValue:@"RIGHT"],
        @"SCALE": [[QTHorizontal alloc] initWithValue:@"SCALE"],
    };
}

+ (QTHorizontal *)center { return QTHorizontal.values[@"CENTER"]; }
+ (QTHorizontal *)left { return QTHorizontal.values[@"LEFT"]; }
+ (QTHorizontal *)leftRight { return QTHorizontal.values[@"LEFT_RIGHT"]; }
+ (QTHorizontal *)right { return QTHorizontal.values[@"RIGHT"]; }
+ (QTHorizontal *)scale { return QTHorizontal.values[@"SCALE"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTHorizontal.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTVertical
+ (NSDictionary<NSString *, QTVertical *> *)values
{
    static NSDictionary<NSString *, QTVertical *> *values;
    return values = values ? values : @{
        @"BOTTOM": [[QTVertical alloc] initWithValue:@"BOTTOM"],
        @"CENTER": [[QTVertical alloc] initWithValue:@"CENTER"],
        @"SCALE": [[QTVertical alloc] initWithValue:@"SCALE"],
        @"TOP": [[QTVertical alloc] initWithValue:@"TOP"],
        @"TOP_BOTTOM": [[QTVertical alloc] initWithValue:@"TOP_BOTTOM"],
    };
}

+ (QTVertical *)bottom { return QTVertical.values[@"BOTTOM"]; }
+ (QTVertical *)center { return QTVertical.values[@"CENTER"]; }
+ (QTVertical *)scale { return QTVertical.values[@"SCALE"]; }
+ (QTVertical *)top { return QTVertical.values[@"TOP"]; }
+ (QTVertical *)topBottom { return QTVertical.values[@"TOP_BOTTOM"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTVertical.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTEffectType
+ (NSDictionary<NSString *, QTEffectType *> *)values
{
    static NSDictionary<NSString *, QTEffectType *> *values;
    return values = values ? values : @{
        @"BACKGROUND_BLUR": [[QTEffectType alloc] initWithValue:@"BACKGROUND_BLUR"],
        @"DROP_SHADOW": [[QTEffectType alloc] initWithValue:@"DROP_SHADOW"],
        @"INNER_SHADOW": [[QTEffectType alloc] initWithValue:@"INNER_SHADOW"],
        @"LAYER_BLUR": [[QTEffectType alloc] initWithValue:@"LAYER_BLUR"],
    };
}

+ (QTEffectType *)backgroundBlur { return QTEffectType.values[@"BACKGROUND_BLUR"]; }
+ (QTEffectType *)dropShadow { return QTEffectType.values[@"DROP_SHADOW"]; }
+ (QTEffectType *)innerShadow { return QTEffectType.values[@"INNER_SHADOW"]; }
+ (QTEffectType *)layerBlur { return QTEffectType.values[@"LAYER_BLUR"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTEffectType.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTConstraintType
+ (NSDictionary<NSString *, QTConstraintType *> *)values
{
    static NSDictionary<NSString *, QTConstraintType *> *values;
    return values = values ? values : @{
        @"HEIGHT": [[QTConstraintType alloc] initWithValue:@"HEIGHT"],
        @"SCALE": [[QTConstraintType alloc] initWithValue:@"SCALE"],
        @"WIDTH": [[QTConstraintType alloc] initWithValue:@"WIDTH"],
    };
}

+ (QTConstraintType *)height { return QTConstraintType.values[@"HEIGHT"]; }
+ (QTConstraintType *)scale { return QTConstraintType.values[@"SCALE"]; }
+ (QTConstraintType *)width { return QTConstraintType.values[@"WIDTH"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTConstraintType.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTFormat
+ (NSDictionary<NSString *, QTFormat *> *)values
{
    static NSDictionary<NSString *, QTFormat *> *values;
    return values = values ? values : @{
        @"JPG": [[QTFormat alloc] initWithValue:@"JPG"],
        @"PNG": [[QTFormat alloc] initWithValue:@"PNG"],
        @"SVG": [[QTFormat alloc] initWithValue:@"SVG"],
    };
}

+ (QTFormat *)jpg { return QTFormat.values[@"JPG"]; }
+ (QTFormat *)png { return QTFormat.values[@"PNG"]; }
+ (QTFormat *)svg { return QTFormat.values[@"SVG"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTFormat.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTScaleMode
+ (NSDictionary<NSString *, QTScaleMode *> *)values
{
    static NSDictionary<NSString *, QTScaleMode *> *values;
    return values = values ? values : @{
        @"FILL": [[QTScaleMode alloc] initWithValue:@"FILL"],
        @"FIT": [[QTScaleMode alloc] initWithValue:@"FIT"],
        @"STRETCH": [[QTScaleMode alloc] initWithValue:@"STRETCH"],
        @"TILE": [[QTScaleMode alloc] initWithValue:@"TILE"],
    };
}

+ (QTScaleMode *)fill { return QTScaleMode.values[@"FILL"]; }
+ (QTScaleMode *)fit { return QTScaleMode.values[@"FIT"]; }
+ (QTScaleMode *)stretch { return QTScaleMode.values[@"STRETCH"]; }
+ (QTScaleMode *)tile { return QTScaleMode.values[@"TILE"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTScaleMode.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTPaintType
+ (NSDictionary<NSString *, QTPaintType *> *)values
{
    static NSDictionary<NSString *, QTPaintType *> *values;
    return values = values ? values : @{
        @"EMOJI": [[QTPaintType alloc] initWithValue:@"EMOJI"],
        @"GRADIENT_ANGULAR": [[QTPaintType alloc] initWithValue:@"GRADIENT_ANGULAR"],
        @"GRADIENT_DIAMOND": [[QTPaintType alloc] initWithValue:@"GRADIENT_DIAMOND"],
        @"GRADIENT_LINEAR": [[QTPaintType alloc] initWithValue:@"GRADIENT_LINEAR"],
        @"GRADIENT_RADIAL": [[QTPaintType alloc] initWithValue:@"GRADIENT_RADIAL"],
        @"IMAGE": [[QTPaintType alloc] initWithValue:@"IMAGE"],
        @"SOLID": [[QTPaintType alloc] initWithValue:@"SOLID"],
    };
}

+ (QTPaintType *)emoji { return QTPaintType.values[@"EMOJI"]; }
+ (QTPaintType *)gradientAngular { return QTPaintType.values[@"GRADIENT_ANGULAR"]; }
+ (QTPaintType *)gradientDiamond { return QTPaintType.values[@"GRADIENT_DIAMOND"]; }
+ (QTPaintType *)gradientLinear { return QTPaintType.values[@"GRADIENT_LINEAR"]; }
+ (QTPaintType *)gradientRadial { return QTPaintType.values[@"GRADIENT_RADIAL"]; }
+ (QTPaintType *)image { return QTPaintType.values[@"IMAGE"]; }
+ (QTPaintType *)solid { return QTPaintType.values[@"SOLID"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTPaintType.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTAlignment
+ (NSDictionary<NSString *, QTAlignment *> *)values
{
    static NSDictionary<NSString *, QTAlignment *> *values;
    return values = values ? values : @{
        @"CENTER": [[QTAlignment alloc] initWithValue:@"CENTER"],
        @"MAX": [[QTAlignment alloc] initWithValue:@"MAX"],
        @"MIN": [[QTAlignment alloc] initWithValue:@"MIN"],
    };
}

+ (QTAlignment *)center { return QTAlignment.values[@"CENTER"]; }
+ (QTAlignment *)max { return QTAlignment.values[@"MAX"]; }
+ (QTAlignment *)min { return QTAlignment.values[@"MIN"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTAlignment.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTPattern
+ (NSDictionary<NSString *, QTPattern *> *)values
{
    static NSDictionary<NSString *, QTPattern *> *values;
    return values = values ? values : @{
        @"COLUMNS": [[QTPattern alloc] initWithValue:@"COLUMNS"],
        @"GRID": [[QTPattern alloc] initWithValue:@"GRID"],
        @"ROWS": [[QTPattern alloc] initWithValue:@"ROWS"],
    };
}

+ (QTPattern *)columns { return QTPattern.values[@"COLUMNS"]; }
+ (QTPattern *)grid { return QTPattern.values[@"GRID"]; }
+ (QTPattern *)rows { return QTPattern.values[@"ROWS"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTPattern.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTStrokeAlign
+ (NSDictionary<NSString *, QTStrokeAlign *> *)values
{
    static NSDictionary<NSString *, QTStrokeAlign *> *values;
    return values = values ? values : @{
        @"CENTER": [[QTStrokeAlign alloc] initWithValue:@"CENTER"],
        @"INSIDE": [[QTStrokeAlign alloc] initWithValue:@"INSIDE"],
        @"OUTSIDE": [[QTStrokeAlign alloc] initWithValue:@"OUTSIDE"],
    };
}

+ (QTStrokeAlign *)center { return QTStrokeAlign.values[@"CENTER"]; }
+ (QTStrokeAlign *)inside { return QTStrokeAlign.values[@"INSIDE"]; }
+ (QTStrokeAlign *)outside { return QTStrokeAlign.values[@"OUTSIDE"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTStrokeAlign.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTTextAlignHorizontal
+ (NSDictionary<NSString *, QTTextAlignHorizontal *> *)values
{
    static NSDictionary<NSString *, QTTextAlignHorizontal *> *values;
    return values = values ? values : @{
        @"CENTER": [[QTTextAlignHorizontal alloc] initWithValue:@"CENTER"],
        @"JUSTIFIED": [[QTTextAlignHorizontal alloc] initWithValue:@"JUSTIFIED"],
        @"LEFT": [[QTTextAlignHorizontal alloc] initWithValue:@"LEFT"],
        @"RIGHT": [[QTTextAlignHorizontal alloc] initWithValue:@"RIGHT"],
    };
}

+ (QTTextAlignHorizontal *)center { return QTTextAlignHorizontal.values[@"CENTER"]; }
+ (QTTextAlignHorizontal *)justified { return QTTextAlignHorizontal.values[@"JUSTIFIED"]; }
+ (QTTextAlignHorizontal *)left { return QTTextAlignHorizontal.values[@"LEFT"]; }
+ (QTTextAlignHorizontal *)right { return QTTextAlignHorizontal.values[@"RIGHT"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTTextAlignHorizontal.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTTextAlignVertical
+ (NSDictionary<NSString *, QTTextAlignVertical *> *)values
{
    static NSDictionary<NSString *, QTTextAlignVertical *> *values;
    return values = values ? values : @{
        @"BOTTOM": [[QTTextAlignVertical alloc] initWithValue:@"BOTTOM"],
        @"CENTER": [[QTTextAlignVertical alloc] initWithValue:@"CENTER"],
        @"TOP": [[QTTextAlignVertical alloc] initWithValue:@"TOP"],
    };
}

+ (QTTextAlignVertical *)bottom { return QTTextAlignVertical.values[@"BOTTOM"]; }
+ (QTTextAlignVertical *)center { return QTTextAlignVertical.values[@"CENTER"]; }
+ (QTTextAlignVertical *)top { return QTTextAlignVertical.values[@"TOP"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTTextAlignVertical.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation QTNodeType
+ (NSDictionary<NSString *, QTNodeType *> *)values
{
    static NSDictionary<NSString *, QTNodeType *> *values;
    return values = values ? values : @{
        @"BOOLEAN": [[QTNodeType alloc] initWithValue:@"BOOLEAN"],
        @"CANVAS": [[QTNodeType alloc] initWithValue:@"CANVAS"],
        @"COMPONENT": [[QTNodeType alloc] initWithValue:@"COMPONENT"],
        @"DOCUMENT": [[QTNodeType alloc] initWithValue:@"DOCUMENT"],
        @"ELLIPSE": [[QTNodeType alloc] initWithValue:@"ELLIPSE"],
        @"FRAME": [[QTNodeType alloc] initWithValue:@"FRAME"],
        @"GROUP": [[QTNodeType alloc] initWithValue:@"GROUP"],
        @"INSTANCE": [[QTNodeType alloc] initWithValue:@"INSTANCE"],
        @"LINE": [[QTNodeType alloc] initWithValue:@"LINE"],
        @"RECTANGLE": [[QTNodeType alloc] initWithValue:@"RECTANGLE"],
        @"REGULAR_POLYGON": [[QTNodeType alloc] initWithValue:@"REGULAR_POLYGON"],
        @"SLICE": [[QTNodeType alloc] initWithValue:@"SLICE"],
        @"STAR": [[QTNodeType alloc] initWithValue:@"STAR"],
        @"TEXT": [[QTNodeType alloc] initWithValue:@"TEXT"],
        @"VECTOR": [[QTNodeType alloc] initWithValue:@"VECTOR"],
    };
}

+ (QTNodeType *)boolean { return QTNodeType.values[@"BOOLEAN"]; }
+ (QTNodeType *)canvas { return QTNodeType.values[@"CANVAS"]; }
+ (QTNodeType *)component { return QTNodeType.values[@"COMPONENT"]; }
+ (QTNodeType *)document { return QTNodeType.values[@"DOCUMENT"]; }
+ (QTNodeType *)ellipse { return QTNodeType.values[@"ELLIPSE"]; }
+ (QTNodeType *)frame { return QTNodeType.values[@"FRAME"]; }
+ (QTNodeType *)group { return QTNodeType.values[@"GROUP"]; }
+ (QTNodeType *)instance { return QTNodeType.values[@"INSTANCE"]; }
+ (QTNodeType *)line { return QTNodeType.values[@"LINE"]; }
+ (QTNodeType *)rectangle { return QTNodeType.values[@"RECTANGLE"]; }
+ (QTNodeType *)regularPolygon { return QTNodeType.values[@"REGULAR_POLYGON"]; }
+ (QTNodeType *)slice { return QTNodeType.values[@"SLICE"]; }
+ (QTNodeType *)star { return QTNodeType.values[@"STAR"]; }
+ (QTNodeType *)text { return QTNodeType.values[@"TEXT"]; }
+ (QTNodeType *)vector { return QTNodeType.values[@"VECTOR"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTNodeType.values[value];
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

QTFileResponse *_Nullable QTFileResponseFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTFileResponse fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTFileResponse *_Nullable QTFileResponseFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTFileResponseFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTFileResponseToData(QTFileResponse *fileResponse, NSError **error)
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

NSString *_Nullable QTFileResponseToJSON(QTFileResponse *fileResponse, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTFileResponseToData(fileResponse, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

@implementation QTFileResponse
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"document": @"document",
        @"components": @"components",
        @"schemaVersion": @"schemaVersion",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTFileResponseFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTFileResponseFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTFileResponse alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _document = [QTDocumentNode fromJSONDictionary:(id)_document];
        _components = map(_components, λ(id x, [QTComponentNode fromJSONDictionary:x]));
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTFileResponse.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"document": [_document JSONDictionary],
        @"components": map(_components, λ(id x, [x JSONDictionary])),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTFileResponseToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTFileResponseToJSON(self, encoding, error);
}
@end

@implementation QTComponentNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"effects": @"effects",
        @"layoutGrids": @"layoutGrids",
        @"opacity": @"opacity",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"backgroundColor": @"backgroundColor",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"clipsContent": @"isClipsContent",
        @"exportSettings": @"exportSettings",
        @"preserveRatio": @"isPreserveRatio",
        @"children": @"children",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTComponentNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffect fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGrid fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _backgroundColor = [QTColor fromJSONDictionary:(id)_backgroundColor];
        _constraints = [QTLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSetting fromJSONDictionary:x]));
        _children = map(_children, λ(id x, [QTPurpleNode fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTComponentNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTComponentNode.properties.allValues] mutableCopy];

    for (id jsonName in QTComponentNode.properties) {
        id propertyName = QTComponentNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"layoutGrids": map(_layoutGrids, λ(id x, [x JSONDictionary])),
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"backgroundColor": [_backgroundColor JSONDictionary],
        @"constraints": [_constraints JSONDictionary],
        @"isMask": _isMask ? @YES : @NO,
        @"clipsContent": _isClipsContent ? @YES : @NO,
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"children": map(_children, λ(id x, [x JSONDictionary])),
    }];

    return dict;
}
@end

@implementation QTRectangle
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"x": @"x",
        @"y": @"y",
        @"width": @"width",
        @"height": @"height",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTRectangle alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:QTRectangle.properties.allValues];
}
@end

@implementation QTColor
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"r": @"r",
        @"g": @"g",
        @"b": @"b",
        @"a": @"a",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTColor alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:QTColor.properties.allValues];
}
@end

@implementation QTPurpleNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"children": @"children",
        @"backgroundColor": @"backgroundColor",
        @"exportSettings": @"exportSettings",
        @"effects": @"effects",
        @"layoutGrids": @"layoutGrids",
        @"opacity": @"opacity",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"clipsContent": @"clipsContent",
        @"preserveRatio": @"preserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"strokes": @"strokes",
        @"cornerRadius": @"cornerRadius",
        @"characters": @"characters",
        @"style": @"style",
        @"characterStyleOverrides": @"characterStyleOverrides",
        @"styleOverrideTable": @"styleOverrideTable",
        @"componentId": @"componentID",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTPurpleNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTNodeNode fromJSONDictionary:x]));
        _backgroundColor = [QTColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSetting fromJSONDictionary:x]));
        _effects = map(_effects, λ(id x, [QTEffect fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGrid fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTLayoutConstraint fromJSONDictionary:(id)_constraints];
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaint fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaint fromJSONDictionary:x]));
        _style = [QTTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTTypeStyle fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTPurpleNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTPurpleNode.properties.allValues] mutableCopy];

    for (id jsonName in QTPurpleNode.properties) {
        id propertyName = QTPurpleNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"layoutGrids": NSNullify(map(_layoutGrids, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
        @"style": NSNullify([_style JSONDictionary]),
        @"styleOverrideTable": NSNullify(map(_styleOverrideTable, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}
@end

@implementation QTNodeNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"children": @"children",
        @"backgroundColor": @"backgroundColor",
        @"exportSettings": @"exportSettings",
        @"effects": @"effects",
        @"layoutGrids": @"layoutGrids",
        @"opacity": @"opacity",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"clipsContent": @"clipsContent",
        @"preserveRatio": @"preserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"strokes": @"strokes",
        @"cornerRadius": @"cornerRadius",
        @"characters": @"characters",
        @"style": @"style",
        @"characterStyleOverrides": @"characterStyleOverrides",
        @"styleOverrideTable": @"styleOverrideTable",
        @"componentId": @"componentID",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTNodeNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTNodeNode fromJSONDictionary:x]));
        _backgroundColor = [QTColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSetting fromJSONDictionary:x]));
        _effects = map(_effects, λ(id x, [QTEffect fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGrid fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTLayoutConstraint fromJSONDictionary:(id)_constraints];
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaint fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaint fromJSONDictionary:x]));
        _style = [QTTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTTypeStyle fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTNodeNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTNodeNode.properties.allValues] mutableCopy];

    for (id jsonName in QTNodeNode.properties) {
        id propertyName = QTNodeNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"layoutGrids": NSNullify(map(_layoutGrids, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
        @"style": NSNullify([_style JSONDictionary]),
        @"styleOverrideTable": NSNullify(map(_styleOverrideTable, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}
@end

@implementation QTLayoutConstraint
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"vertical": @"vertical",
        @"horizontal": @"horizontal",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTLayoutConstraint alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _vertical = [QTVertical withValue:(id)_vertical];
        _horizontal = [QTHorizontal withValue:(id)_horizontal];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTLayoutConstraint.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"vertical": [_vertical value],
        @"horizontal": [_horizontal value],
    }];

    return dict;
}
@end

@implementation QTEffect
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"type": @"type",
        @"radius": @"radius",
        @"visible": @"isVisible",
        @"color": @"color",
        @"blendMode": @"blendMode",
        @"offset": @"offset",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTEffect alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTEffectType withValue:(id)_type];
        _color = [QTColor fromJSONDictionary:(id)_color];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _offset = [QTVector fromJSONDictionary:(id)_offset];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTEffect.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTEffect.properties.allValues] mutableCopy];

    for (id jsonName in QTEffect.properties) {
        id propertyName = QTEffect.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
        @"color": [_color JSONDictionary],
        @"blendMode": [_blendMode value],
        @"offset": [_offset JSONDictionary],
    }];

    return dict;
}
@end

@implementation QTVector
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
    return dict ? [[QTVector alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:QTVector.properties.allValues];
}
@end

@implementation QTExportSetting
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"suffix": @"suffix",
        @"format": @"format",
        @"constraint": @"constraint",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTExportSetting alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _format = [QTFormat withValue:(id)_format];
        _constraint = [QTConstraint fromJSONDictionary:(id)_constraint];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTExportSetting.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"format": [_format value],
        @"constraint": [_constraint JSONDictionary],
    }];

    return dict;
}
@end

@implementation QTConstraint
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
    return dict ? [[QTConstraint alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTConstraintType withValue:(id)_type];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTConstraint.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"type": [_type value],
    }];

    return dict;
}
@end

@implementation QTPaint
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"type": @"type",
        @"visible": @"isVisible",
        @"opacity": @"opacity",
        @"color": @"color",
        @"gradientHandlePositions": @"gradientHandlePositions",
        @"gradientStops": @"gradientStops",
        @"scaleMode": @"scaleMode",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTPaint alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTPaintType withValue:(id)_type];
        _color = [QTColor fromJSONDictionary:(id)_color];
        _gradientHandlePositions = map(_gradientHandlePositions, λ(id x, [QTVector fromJSONDictionary:x]));
        _gradientStops = map(_gradientStops, λ(id x, [QTColorStop fromJSONDictionary:x]));
        _scaleMode = [QTScaleMode withValue:(id)_scaleMode];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTPaint.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTPaint.properties.allValues] mutableCopy];

    for (id jsonName in QTPaint.properties) {
        id propertyName = QTPaint.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
        @"color": NSNullify([_color JSONDictionary]),
        @"gradientHandlePositions": NSNullify(map(_gradientHandlePositions, λ(id x, [x JSONDictionary]))),
        @"gradientStops": NSNullify(map(_gradientStops, λ(id x, [x JSONDictionary]))),
        @"scaleMode": NSNullify([_scaleMode value]),
    }];

    return dict;
}
@end

@implementation QTColorStop
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
    return dict ? [[QTColorStop alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _color = [QTColor fromJSONDictionary:(id)_color];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTColorStop.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"color": [_color JSONDictionary],
    }];

    return dict;
}
@end

@implementation QTLayoutGrid
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"pattern": @"pattern",
        @"sectionSize": @"sectionSize",
        @"visible": @"isVisible",
        @"color": @"color",
        @"alignment": @"alignment",
        @"gutterSize": @"gutterSize",
        @"offset": @"offset",
        @"count": @"count",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTLayoutGrid alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _pattern = [QTPattern withValue:(id)_pattern];
        _color = [QTColor fromJSONDictionary:(id)_color];
        _alignment = [QTAlignment withValue:(id)_alignment];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTLayoutGrid.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTLayoutGrid.properties.allValues] mutableCopy];

    for (id jsonName in QTLayoutGrid.properties) {
        id propertyName = QTLayoutGrid.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"pattern": [_pattern value],
        @"visible": _isVisible ? @YES : @NO,
        @"color": [_color JSONDictionary],
        @"alignment": [_alignment value],
    }];

    return dict;
}
@end

@implementation QTTypeStyle
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"lineHeightPx": @"lineHeightPx",
        @"fontPostScriptName": @"fontPostScriptName",
        @"fontWeight": @"fontWeight",
        @"lineHeightPercent": @"lineHeightPercent",
        @"textAlignVertical": @"textAlignVertical",
        @"fontSize": @"fontSize",
        @"italic": @"isItalic",
        @"fills": @"fills",
        @"fontFamily": @"fontFamily",
        @"textAlignHorizontal": @"textAlignHorizontal",
        @"letterSpacing": @"letterSpacing",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTTypeStyle alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _textAlignVertical = [QTTextAlignVertical withValue:(id)_textAlignVertical];
        _fills = map(_fills, λ(id x, [QTPaint fromJSONDictionary:x]));
        _textAlignHorizontal = [QTTextAlignHorizontal withValue:(id)_textAlignHorizontal];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTTypeStyle.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTTypeStyle.properties.allValues] mutableCopy];

    for (id jsonName in QTTypeStyle.properties) {
        id propertyName = QTTypeStyle.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"textAlignVertical": [_textAlignVertical value],
        @"italic": _isItalic ? @YES : @NO,
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"textAlignHorizontal": [_textAlignHorizontal value],
    }];

    return dict;
}
@end

@implementation QTDocumentNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"children": @"children",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTDocumentNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTFluffyNode fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTDocumentNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTDocumentNode.properties.allValues] mutableCopy];

    for (id jsonName in QTDocumentNode.properties) {
        id propertyName = QTDocumentNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"children": map(_children, λ(id x, [x JSONDictionary])),
    }];

    return dict;
}
@end

@implementation QTFluffyNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"children": @"children",
        @"backgroundColor": @"backgroundColor",
        @"exportSettings": @"exportSettings",
        @"effects": @"effects",
        @"layoutGrids": @"layoutGrids",
        @"opacity": @"opacity",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"clipsContent": @"clipsContent",
        @"preserveRatio": @"preserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"strokes": @"strokes",
        @"cornerRadius": @"cornerRadius",
        @"characters": @"characters",
        @"style": @"style",
        @"characterStyleOverrides": @"characterStyleOverrides",
        @"styleOverrideTable": @"styleOverrideTable",
        @"componentId": @"componentID",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTFluffyNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTNodeNode fromJSONDictionary:x]));
        _backgroundColor = [QTColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSetting fromJSONDictionary:x]));
        _effects = map(_effects, λ(id x, [QTEffect fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGrid fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTLayoutConstraint fromJSONDictionary:(id)_constraints];
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaint fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaint fromJSONDictionary:x]));
        _style = [QTTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTTypeStyle fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTFluffyNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTFluffyNode.properties.allValues] mutableCopy];

    for (id jsonName in QTFluffyNode.properties) {
        id propertyName = QTFluffyNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"layoutGrids": NSNullify(map(_layoutGrids, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
        @"style": NSNullify([_style JSONDictionary]),
        @"styleOverrideTable": NSNullify(map(_styleOverrideTable, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}
@end

NS_ASSUME_NONNULL_END
