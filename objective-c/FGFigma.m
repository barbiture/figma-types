#import "FGFigma.h"

#define λ(decl, expr) (^(decl) { return (expr); })

static id NSNullify(id _Nullable x) {
    return (x == nil || x == NSNull.null) ? NSNull.null : x;
}

NS_ASSUME_NONNULL_BEGIN

@interface QTVector (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTAbsoluteBoundingBox (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTConstraints (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTEffectElement (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTOlor (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTOffset (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTExportSettingElement (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTExportSettingConstraint (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTPaintElement (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTColorStopElement (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTColor (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTColorStop (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTLayoutConstraint (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTText (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTTyle (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTFrame (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTDocumentElement (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTLayoutGridElement (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTRectangle (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTLayoutGrid (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTEffect (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTSlice (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTStar (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTLine (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTInstance (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTVector2D (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTTypeStyle (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTBooleanGroup (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTCanvas (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTDocument (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTExportSetting (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTComponent (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTFileResponse (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTComponentValue (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTOcument (JSONConversion)
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

@interface QTRegularPolygon (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTEllipse (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTGroup (JSONConversion)
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

@implementation QTSuffix
+ (NSDictionary<NSString *, QTSuffix *> *)values
{
    static NSDictionary<NSString *, QTSuffix *> *values;
    return values = values ? values : @{
        @"string": [[QTSuffix alloc] initWithValue:@"string"],
    };
}

+ (QTSuffix *)string { return QTSuffix.values[@"string"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTSuffix.values[value];
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

QTVector *_Nullable QTVectorFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTVector fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTVector *_Nullable QTVectorFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTVectorFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTVectorToData(QTVector *vector, NSError **error)
{
    @try {
        id json = [vector JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTVectorToJSON(QTVector *vector, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTVectorToData(vector, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTColor *_Nullable QTColorFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTColor fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTColor *_Nullable QTColorFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTColorFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTColorToData(QTColor *color, NSError **error)
{
    @try {
        id json = [color JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTColorToJSON(QTColor *color, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTColorToData(color, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTColorStop *_Nullable QTColorStopFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTColorStop fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTColorStop *_Nullable QTColorStopFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTColorStopFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTColorStopToData(QTColorStop *colorStop, NSError **error)
{
    @try {
        id json = [colorStop JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTColorStopToJSON(QTColorStop *colorStop, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTColorStopToData(colorStop, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTLayoutConstraint *_Nullable QTLayoutConstraintFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTLayoutConstraint fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTLayoutConstraint *_Nullable QTLayoutConstraintFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTLayoutConstraintFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTLayoutConstraintToData(QTLayoutConstraint *layoutConstraint, NSError **error)
{
    @try {
        id json = [layoutConstraint JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTLayoutConstraintToJSON(QTLayoutConstraint *layoutConstraint, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTLayoutConstraintToData(layoutConstraint, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTText *_Nullable QTTextFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTText fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTText *_Nullable QTTextFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTTextFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTTextToData(QTText *text, NSError **error)
{
    @try {
        id json = [text JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTTextToJSON(QTText *text, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTTextToData(text, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTFrame *_Nullable QTFrameFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTFrame fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTFrame *_Nullable QTFrameFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTFrameFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTFrameToData(QTFrame *frame, NSError **error)
{
    @try {
        id json = [frame JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTFrameToJSON(QTFrame *frame, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTFrameToData(frame, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTRectangle *_Nullable QTRectangleFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTRectangle fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTRectangle *_Nullable QTRectangleFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTRectangleFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTRectangleToData(QTRectangle *rectangle, NSError **error)
{
    @try {
        id json = [rectangle JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTRectangleToJSON(QTRectangle *rectangle, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTRectangleToData(rectangle, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTLayoutGrid *_Nullable QTLayoutGridFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTLayoutGrid fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTLayoutGrid *_Nullable QTLayoutGridFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTLayoutGridFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTLayoutGridToData(QTLayoutGrid *layoutGrid, NSError **error)
{
    @try {
        id json = [layoutGrid JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTLayoutGridToJSON(QTLayoutGrid *layoutGrid, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTLayoutGridToData(layoutGrid, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTEffect *_Nullable QTEffectFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTEffect fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTEffect *_Nullable QTEffectFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTEffectFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTEffectToData(QTEffect *effect, NSError **error)
{
    @try {
        id json = [effect JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTEffectToJSON(QTEffect *effect, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTEffectToData(effect, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTSlice *_Nullable QTSliceFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTSlice fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTSlice *_Nullable QTSliceFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTSliceFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTSliceToData(QTSlice *slice, NSError **error)
{
    @try {
        id json = [slice JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTSliceToJSON(QTSlice *slice, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTSliceToData(slice, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTStar *_Nullable QTStarFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTStar fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTStar *_Nullable QTStarFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTStarFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTStarToData(QTStar *star, NSError **error)
{
    @try {
        id json = [star JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTStarToJSON(QTStar *star, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTStarToData(star, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTLine *_Nullable QTLineFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTLine fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTLine *_Nullable QTLineFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTLineFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTLineToData(QTLine *line, NSError **error)
{
    @try {
        id json = [line JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTLineToJSON(QTLine *line, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTLineToData(line, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTBlendMode *_Nullable QTBlendModeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTBlendMode withValue:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTBlendMode *_Nullable QTBlendModeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTBlendModeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTBlendModeToData(QTBlendMode *blendMode, NSError **error)
{
    @try {
        id json = [blendMode value];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTBlendModeToJSON(QTBlendMode *blendMode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTBlendModeToData(blendMode, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTInstance *_Nullable QTInstanceFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTInstance fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTInstance *_Nullable QTInstanceFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTInstanceFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTInstanceToData(QTInstance *instance, NSError **error)
{
    @try {
        id json = [instance JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTInstanceToJSON(QTInstance *instance, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTInstanceToData(instance, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTVector2D *_Nullable QTVector2DFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTVector2D fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTVector2D *_Nullable QTVector2DFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTVector2DFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTVector2DToData(QTVector2D *vector2D, NSError **error)
{
    @try {
        id json = [vector2D JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTVector2DToJSON(QTVector2D *vector2D, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTVector2DToData(vector2D, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTTypeStyle *_Nullable QTTypeStyleFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTTypeStyle fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTTypeStyle *_Nullable QTTypeStyleFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTTypeStyleFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTTypeStyleToData(QTTypeStyle *typeStyle, NSError **error)
{
    @try {
        id json = [typeStyle JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTTypeStyleToJSON(QTTypeStyle *typeStyle, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTTypeStyleToData(typeStyle, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTBooleanGroup *_Nullable QTBooleanGroupFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTBooleanGroup fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTBooleanGroup *_Nullable QTBooleanGroupFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTBooleanGroupFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTBooleanGroupToData(QTBooleanGroup *booleanGroup, NSError **error)
{
    @try {
        id json = [booleanGroup JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTBooleanGroupToJSON(QTBooleanGroup *booleanGroup, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTBooleanGroupToData(booleanGroup, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTCanvas *_Nullable QTCanvasFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTCanvas fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTCanvas *_Nullable QTCanvasFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTCanvasFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTCanvasToData(QTCanvas *canvas, NSError **error)
{
    @try {
        id json = [canvas JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTCanvasToJSON(QTCanvas *canvas, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTCanvasToData(canvas, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTDocument *_Nullable QTDocumentFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTDocument fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTDocument *_Nullable QTDocumentFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTDocumentFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTDocumentToData(QTDocument *document, NSError **error)
{
    @try {
        id json = [document JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTDocumentToJSON(QTDocument *document, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTDocumentToData(document, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTNodeType *_Nullable QTNodeTypeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTNodeType withValue:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTNodeType *_Nullable QTNodeTypeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTNodeTypeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTNodeTypeToData(QTNodeType *nodeType, NSError **error)
{
    @try {
        id json = [nodeType value];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTNodeTypeToJSON(QTNodeType *nodeType, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTNodeTypeToData(nodeType, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTExportSetting *_Nullable QTExportSettingFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTExportSetting fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTExportSetting *_Nullable QTExportSettingFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTExportSettingFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTExportSettingToData(QTExportSetting *exportSetting, NSError **error)
{
    @try {
        id json = [exportSetting JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTExportSettingToJSON(QTExportSetting *exportSetting, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTExportSettingToData(exportSetting, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTComponent *_Nullable QTComponentFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTComponent fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTComponent *_Nullable QTComponentFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTComponentFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTComponentToData(QTComponent *component, NSError **error)
{
    @try {
        id json = [component JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTComponentToJSON(QTComponent *component, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTComponentToData(component, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

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

QTConstraint *_Nullable QTConstraintFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTConstraint fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTConstraint *_Nullable QTConstraintFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTConstraintFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTConstraintToData(QTConstraint *constraint, NSError **error)
{
    @try {
        id json = [constraint JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTConstraintToJSON(QTConstraint *constraint, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTConstraintToData(constraint, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTPaint *_Nullable QTPaintFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTPaint fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTPaint *_Nullable QTPaintFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTPaintFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTPaintToData(QTPaint *paint, NSError **error)
{
    @try {
        id json = [paint JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTPaintToJSON(QTPaint *paint, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTPaintToData(paint, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTRegularPolygon *_Nullable QTRegularPolygonFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTRegularPolygon fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTRegularPolygon *_Nullable QTRegularPolygonFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTRegularPolygonFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTRegularPolygonToData(QTRegularPolygon *regularPolygon, NSError **error)
{
    @try {
        id json = [regularPolygon JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTRegularPolygonToJSON(QTRegularPolygon *regularPolygon, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTRegularPolygonToData(regularPolygon, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTEllipse *_Nullable QTEllipseFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTEllipse fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTEllipse *_Nullable QTEllipseFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTEllipseFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTEllipseToData(QTEllipse *ellipse, NSError **error)
{
    @try {
        id json = [ellipse JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTEllipseToJSON(QTEllipse *ellipse, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTEllipseToData(ellipse, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTGroup *_Nullable QTGroupFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTGroup fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTGroup *_Nullable QTGroupFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTGroupFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTGroupToData(QTGroup *group, NSError **error)
{
    @try {
        id json = [group JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTGroupToJSON(QTGroup *group, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTGroupToData(group, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

@implementation QTVector
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"name": @"name",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"strokes": @"strokes",
        @"preserveRatio": @"preserveRatio",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTVectorFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTVectorFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTVector alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTVector.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTVector.properties.allValues] mutableCopy];

    for (id jsonName in QTVector.properties) {
        id propertyName = QTVector.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTVectorToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTVectorToJSON(self, encoding, error);
}
@end

@implementation QTAbsoluteBoundingBox
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"cornerRadius": @"cornerRadius",
        @"opacity": @"opacity",
        @"name": @"name",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"strokes": @"strokes",
        @"preserveRatio": @"preserveRatio",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTAbsoluteBoundingBox alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTAbsoluteBoundingBox.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTAbsoluteBoundingBox.properties.allValues] mutableCopy];

    for (id jsonName in QTAbsoluteBoundingBox.properties) {
        id propertyName = QTAbsoluteBoundingBox.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}
@end

@implementation QTConstraints
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
    return dict ? [[QTConstraints alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _horizontal = [QTHorizontal withValue:(id)_horizontal];
        _vertical = [QTVertical withValue:(id)_vertical];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTConstraints.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"horizontal": NSNullify([_horizontal value]),
        @"vertical": NSNullify([_vertical value]),
    }];

    return dict;
}
@end

@implementation QTEffectElement
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"blendMode": @"blendMode",
        @"color": @"color",
        @"offset": @"offset",
        @"radius": @"radius",
        @"type": @"type",
        @"visible": @"visible",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTEffectElement alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _color = [QTOlor fromJSONDictionary:(id)_color];
        _offset = [QTOffset fromJSONDictionary:(id)_offset];
        _type = [QTEffectType withValue:(id)_type];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTEffectElement.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"blendMode": NSNullify([_blendMode value]),
        @"color": NSNullify([_color JSONDictionary]),
        @"offset": NSNullify([_offset JSONDictionary]),
        @"type": NSNullify([_type value]),
    }];

    return dict;
}
@end

@implementation QTOlor
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
    return dict ? [[QTOlor alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:QTOlor.properties.allValues];
}
@end

@implementation QTOffset
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
    return dict ? [[QTOffset alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:QTOffset.properties.allValues];
}
@end

@implementation QTExportSettingElement
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
    return dict ? [[QTExportSettingElement alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _constraint = [QTExportSettingConstraint fromJSONDictionary:(id)_constraint];
        _format = [QTFormat withValue:(id)_format];
        _suffix = [QTSuffix withValue:(id)_suffix];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTExportSettingElement.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"constraint": NSNullify([_constraint JSONDictionary]),
        @"format": NSNullify([_format value]),
        @"suffix": NSNullify([_suffix value]),
    }];

    return dict;
}
@end

@implementation QTExportSettingConstraint
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
    return dict ? [[QTExportSettingConstraint alloc] initWithJSONDictionary:dict] : nil;
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
    id dict = [[self dictionaryWithValuesForKeys:QTExportSettingConstraint.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"type": NSNullify([_type value]),
    }];

    return dict;
}
@end

@implementation QTPaintElement
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
        @"visible": @"visible",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTPaintElement alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _color = [QTOlor fromJSONDictionary:(id)_color];
        _gradientHandlePositions = map(_gradientHandlePositions, λ(id x, [QTOffset fromJSONDictionary:x]));
        _gradientStops = map(_gradientStops, λ(id x, [QTColorStopElement fromJSONDictionary:x]));
        _type = [QTPaintType withValue:(id)_type];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTPaintElement.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"color": NSNullify([_color JSONDictionary]),
        @"gradientHandlePositions": NSNullify(map(_gradientHandlePositions, λ(id x, [x JSONDictionary]))),
        @"gradientStops": NSNullify(map(_gradientStops, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
    }];

    return dict;
}
@end

@implementation QTColorStopElement
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
    return dict ? [[QTColorStopElement alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _color = [QTOlor fromJSONDictionary:(id)_color];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTColorStopElement.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"color": NSNullify([_color JSONDictionary]),
    }];

    return dict;
}
@end

@implementation QTColor
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTColorFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTColorFromJSON(json, encoding, error);
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTColorToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTColorToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTColorStopFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTColorStopFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTColorStop alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _color = [QTOlor fromJSONDictionary:(id)_color];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTColorStop.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"color": NSNullify([_color JSONDictionary]),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTColorStopToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTColorStopToJSON(self, encoding, error);
}
@end

@implementation QTLayoutConstraint
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"horizontal": @"horizontal",
        @"vertical": @"vertical",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTLayoutConstraintFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTLayoutConstraintFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTLayoutConstraint alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _horizontal = [QTHorizontal withValue:(id)_horizontal];
        _vertical = [QTVertical withValue:(id)_vertical];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTLayoutConstraint.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"horizontal": NSNullify([_horizontal value]),
        @"vertical": NSNullify([_vertical value]),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTLayoutConstraintToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTLayoutConstraintToJSON(self, encoding, error);
}
@end

@implementation QTText
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"characters": @"characters",
        @"opacity": @"opacity",
        @"name": @"name",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"styleOverrideTable": @"styleOverrideTable",
        @"style": @"style",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"strokes": @"strokes",
        @"preserveRatio": @"preserveRatio",
        @"characterStyleOverrides": @"characterStyleOverrides",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTTextFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTTextFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTText alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTTyle fromJSONDictionary:x]));
        _style = [QTTyle fromJSONDictionary:(id)_style];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTText.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTText.properties.allValues] mutableCopy];

    for (id jsonName in QTText.properties) {
        id propertyName = QTText.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"styleOverrideTable": NSNullify(map(_styleOverrideTable, λ(id x, [x JSONDictionary]))),
        @"style": NSNullify([_style JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTTextToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTTextToJSON(self, encoding, error);
}
@end

@implementation QTTyle
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
        @"italic": @"italic",
        @"fills": @"fills",
        @"fontFamily": @"fontFamily",
        @"textAlignHorizontal": @"textAlignHorizontal",
        @"letterSpacing": @"letterSpacing",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTTyle alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _textAlignVertical = [QTTextAlignVertical withValue:(id)_textAlignVertical];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _textAlignHorizontal = [QTTextAlignHorizontal withValue:(id)_textAlignHorizontal];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTTyle.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"textAlignVertical": NSNullify([_textAlignVertical value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"textAlignHorizontal": NSNullify([_textAlignHorizontal value]),
    }];

    return dict;
}
@end

@implementation QTFrame
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"layoutGrids": @"layoutGrids",
        @"opacity": @"opacity",
        @"name": @"name",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"backgroundColor": @"backgroundColor",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"clipsContent": @"clipsContent",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"preserveRatio": @"preserveRatio",
        @"children": @"children",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTFrameFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTFrameFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTFrame alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _backgroundColor = [QTOlor fromJSONDictionary:(id)_backgroundColor];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTDocumentElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTFrame.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTFrame.properties.allValues] mutableCopy];

    for (id jsonName in QTFrame.properties) {
        id propertyName = QTFrame.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"layoutGrids": NSNullify(map(_layoutGrids, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTFrameToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTFrameToJSON(self, encoding, error);
}
@end

@implementation QTDocumentElement
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"children": @"children",
        @"id": @"identifier",
        @"name": @"name",
        @"type": @"type",
        @"visible": @"visible",
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
        @"styleOverrideTable": @"styleOverrideTable",
        @"style": @"style",
        @"characterStyleOverrides": @"characterStyleOverrides",
        @"componentId": @"componentID",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTDocumentElement alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _children = map(_children, λ(id x, [QTDocumentElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _backgroundColor = [QTOlor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTTyle fromJSONDictionary:x]));
        _style = [QTTyle fromJSONDictionary:(id)_style];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTDocumentElement.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTDocumentElement.properties.allValues] mutableCopy];

    for (id jsonName in QTDocumentElement.properties) {
        id propertyName = QTDocumentElement.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
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
        @"styleOverrideTable": NSNullify(map(_styleOverrideTable, λ(id x, [x JSONDictionary]))),
        @"style": NSNullify([_style JSONDictionary]),
    }];

    return dict;
}
@end

@implementation QTLayoutGridElement
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
        @"visible": @"visible",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTLayoutGridElement alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _alignment = [QTAlignment withValue:(id)_alignment];
        _color = [QTOlor fromJSONDictionary:(id)_color];
        _pattern = [QTPattern withValue:(id)_pattern];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTLayoutGridElement.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"alignment": NSNullify([_alignment value]),
        @"color": NSNullify([_color JSONDictionary]),
        @"pattern": NSNullify([_pattern value]),
    }];

    return dict;
}
@end

@implementation QTRectangle
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"cornerRadius": @"cornerRadius",
        @"opacity": @"opacity",
        @"name": @"name",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"strokes": @"strokes",
        @"preserveRatio": @"preserveRatio",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTRectangleFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTRectangleFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTRectangle alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTRectangle.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTRectangle.properties.allValues] mutableCopy];

    for (id jsonName in QTRectangle.properties) {
        id propertyName = QTRectangle.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTRectangleToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTRectangleToJSON(self, encoding, error);
}
@end

@implementation QTLayoutGrid
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
        @"visible": @"visible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTLayoutGridFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTLayoutGridFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTLayoutGrid alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _alignment = [QTAlignment withValue:(id)_alignment];
        _color = [QTOlor fromJSONDictionary:(id)_color];
        _pattern = [QTPattern withValue:(id)_pattern];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTLayoutGrid.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"alignment": NSNullify([_alignment value]),
        @"color": NSNullify([_color JSONDictionary]),
        @"pattern": NSNullify([_pattern value]),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTLayoutGridToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTLayoutGridToJSON(self, encoding, error);
}
@end

@implementation QTEffect
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"blendMode": @"blendMode",
        @"color": @"color",
        @"offset": @"offset",
        @"radius": @"radius",
        @"type": @"type",
        @"visible": @"visible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTEffectFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTEffectFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTEffect alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _color = [QTOlor fromJSONDictionary:(id)_color];
        _offset = [QTOffset fromJSONDictionary:(id)_offset];
        _type = [QTEffectType withValue:(id)_type];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTEffect.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"blendMode": NSNullify([_blendMode value]),
        @"color": NSNullify([_color JSONDictionary]),
        @"offset": NSNullify([_offset JSONDictionary]),
        @"type": NSNullify([_type value]),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTEffectToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTEffectToJSON(self, encoding, error);
}
@end

@implementation QTSlice
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"exportSettings": @"exportSettings",
        @"id": @"identifier",
        @"name": @"name",
        @"type": @"type",
        @"visible": @"visible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTSliceFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTSliceFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTSlice alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTSlice.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTSlice.properties.allValues] mutableCopy];

    for (id jsonName in QTSlice.properties) {
        id propertyName = QTSlice.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTSliceToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTSliceToJSON(self, encoding, error);
}
@end

@implementation QTStar
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"name": @"name",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"strokes": @"strokes",
        @"preserveRatio": @"preserveRatio",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTStarFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTStarFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTStar alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTStar.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTStar.properties.allValues] mutableCopy];

    for (id jsonName in QTStar.properties) {
        id propertyName = QTStar.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTStarToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTStarToJSON(self, encoding, error);
}
@end

@implementation QTLine
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"name": @"name",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"strokes": @"strokes",
        @"preserveRatio": @"preserveRatio",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTLineFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTLineFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTLine alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTLine.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTLine.properties.allValues] mutableCopy];

    for (id jsonName in QTLine.properties) {
        id propertyName = QTLine.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTLineToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTLineToJSON(self, encoding, error);
}
@end

@implementation QTInstance
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"layoutGrids": @"layoutGrids",
        @"opacity": @"opacity",
        @"name": @"name",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"backgroundColor": @"backgroundColor",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"clipsContent": @"clipsContent",
        @"exportSettings": @"exportSettings",
        @"componentId": @"componentID",
        @"type": @"type",
        @"id": @"identifier",
        @"preserveRatio": @"preserveRatio",
        @"children": @"children",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTInstanceFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTInstanceFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTInstance alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _backgroundColor = [QTOlor fromJSONDictionary:(id)_backgroundColor];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTDocumentElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTInstance.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTInstance.properties.allValues] mutableCopy];

    for (id jsonName in QTInstance.properties) {
        id propertyName = QTInstance.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"layoutGrids": NSNullify(map(_layoutGrids, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTInstanceToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTInstanceToJSON(self, encoding, error);
}
@end

@implementation QTVector2D
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"x": @"x",
        @"y": @"y",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTVector2DFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTVector2DFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTVector2D alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:QTVector2D.properties.allValues];
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTVector2DToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTVector2DToJSON(self, encoding, error);
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
        @"italic": @"italic",
        @"fills": @"fills",
        @"fontFamily": @"fontFamily",
        @"textAlignHorizontal": @"textAlignHorizontal",
        @"letterSpacing": @"letterSpacing",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTTypeStyleFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTTypeStyleFromJSON(json, encoding, error);
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
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _textAlignHorizontal = [QTTextAlignHorizontal withValue:(id)_textAlignHorizontal];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTTypeStyle.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"textAlignVertical": NSNullify([_textAlignVertical value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"textAlignHorizontal": NSNullify([_textAlignHorizontal value]),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTTypeStyleToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTTypeStyleToJSON(self, encoding, error);
}
@end

@implementation QTBooleanGroup
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"name": @"name",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"strokes": @"strokes",
        @"preserveRatio": @"preserveRatio",
        @"children": @"children",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTBooleanGroupFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTBooleanGroupFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTBooleanGroup alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _children = map(_children, λ(id x, [QTDocumentElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTBooleanGroup.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTBooleanGroup.properties.allValues] mutableCopy];

    for (id jsonName in QTBooleanGroup.properties) {
        id propertyName = QTBooleanGroup.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTBooleanGroupToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTBooleanGroupToJSON(self, encoding, error);
}
@end

@implementation QTCanvas
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"backgroundColor": @"backgroundColor",
        @"children": @"children",
        @"exportSettings": @"exportSettings",
        @"id": @"identifier",
        @"name": @"name",
        @"type": @"type",
        @"visible": @"visible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTCanvasFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTCanvasFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTCanvas alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _backgroundColor = [QTOlor fromJSONDictionary:(id)_backgroundColor];
        _children = map(_children, λ(id x, [QTDocumentElement fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTCanvas.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTCanvas.properties.allValues] mutableCopy];

    for (id jsonName in QTCanvas.properties) {
        id propertyName = QTCanvas.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTCanvasToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTCanvasToJSON(self, encoding, error);
}
@end

@implementation QTDocument
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"children": @"children",
        @"id": @"identifier",
        @"name": @"name",
        @"type": @"type",
        @"visible": @"visible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTDocumentFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTDocumentFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTDocument alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _children = map(_children, λ(id x, [QTDocumentElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTDocument.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTDocument.properties.allValues] mutableCopy];

    for (id jsonName in QTDocument.properties) {
        id propertyName = QTDocument.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTDocumentToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTDocumentToJSON(self, encoding, error);
}
@end

@implementation QTExportSetting
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"constraint": @"constraint",
        @"format": @"format",
        @"suffix": @"suffix",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTExportSettingFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTExportSettingFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTExportSetting alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _constraint = [QTExportSettingConstraint fromJSONDictionary:(id)_constraint];
        _format = [QTFormat withValue:(id)_format];
        _suffix = [QTSuffix withValue:(id)_suffix];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTExportSetting.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"constraint": NSNullify([_constraint JSONDictionary]),
        @"format": NSNullify([_format value]),
        @"suffix": NSNullify([_suffix value]),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTExportSettingToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTExportSettingToJSON(self, encoding, error);
}
@end

@implementation QTComponent
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"layoutGrids": @"layoutGrids",
        @"opacity": @"opacity",
        @"name": @"name",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"backgroundColor": @"backgroundColor",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"clipsContent": @"clipsContent",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"preserveRatio": @"preserveRatio",
        @"children": @"children",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTComponentFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTComponentFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTComponent alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _backgroundColor = [QTOlor fromJSONDictionary:(id)_backgroundColor];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTDocumentElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTComponent.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTComponent.properties.allValues] mutableCopy];

    for (id jsonName in QTComponent.properties) {
        id propertyName = QTComponent.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"layoutGrids": NSNullify(map(_layoutGrids, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTComponentToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTComponentToJSON(self, encoding, error);
}
@end

@implementation QTFileResponse
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
        _components = map(_components, λ(id x, [QTComponentValue fromJSONDictionary:x]));
        _document = [QTOcument fromJSONDictionary:(id)_document];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTFileResponse.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"components": NSNullify(map(_components, λ(id x, [x JSONDictionary]))),
        @"document": NSNullify([_document JSONDictionary]),
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

@implementation QTComponentValue
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"layoutGrids": @"layoutGrids",
        @"opacity": @"opacity",
        @"name": @"name",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"backgroundColor": @"backgroundColor",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"clipsContent": @"clipsContent",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"preserveRatio": @"preserveRatio",
        @"children": @"children",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTComponentValue alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _backgroundColor = [QTOlor fromJSONDictionary:(id)_backgroundColor];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTDocumentElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTComponentValue.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTComponentValue.properties.allValues] mutableCopy];

    for (id jsonName in QTComponentValue.properties) {
        id propertyName = QTComponentValue.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"layoutGrids": NSNullify(map(_layoutGrids, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}
@end

@implementation QTOcument
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"children": @"children",
        @"id": @"identifier",
        @"name": @"name",
        @"type": @"type",
        @"visible": @"visible",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTOcument alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _children = map(_children, λ(id x, [QTDocumentElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTOcument.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTOcument.properties.allValues] mutableCopy];

    for (id jsonName in QTOcument.properties) {
        id propertyName = QTOcument.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTConstraintFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTConstraintFromJSON(json, encoding, error);
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
        @"type": NSNullify([_type value]),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTConstraintToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTConstraintToJSON(self, encoding, error);
}
@end

@implementation QTPaint
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
        @"visible": @"visible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTPaintFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTPaintFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTPaint alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _color = [QTOlor fromJSONDictionary:(id)_color];
        _gradientHandlePositions = map(_gradientHandlePositions, λ(id x, [QTOffset fromJSONDictionary:x]));
        _gradientStops = map(_gradientStops, λ(id x, [QTColorStopElement fromJSONDictionary:x]));
        _type = [QTPaintType withValue:(id)_type];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTPaint.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"color": NSNullify([_color JSONDictionary]),
        @"gradientHandlePositions": NSNullify(map(_gradientHandlePositions, λ(id x, [x JSONDictionary]))),
        @"gradientStops": NSNullify(map(_gradientStops, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTPaintToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTPaintToJSON(self, encoding, error);
}
@end

@implementation QTRegularPolygon
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"name": @"name",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"strokes": @"strokes",
        @"preserveRatio": @"preserveRatio",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTRegularPolygonFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTRegularPolygonFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTRegularPolygon alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTRegularPolygon.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTRegularPolygon.properties.allValues] mutableCopy];

    for (id jsonName in QTRegularPolygon.properties) {
        id propertyName = QTRegularPolygon.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTRegularPolygonToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTRegularPolygonToJSON(self, encoding, error);
}
@end

@implementation QTEllipse
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"name": @"name",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"strokes": @"strokes",
        @"preserveRatio": @"preserveRatio",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTEllipseFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTEllipseFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTEllipse alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTEllipse.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTEllipse.properties.allValues] mutableCopy];

    for (id jsonName in QTEllipse.properties) {
        id propertyName = QTEllipse.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"strokeAlign": NSNullify([_strokeAlign value]),
        @"fills": NSNullify(map(_fills, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"strokes": NSNullify(map(_strokes, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTEllipseToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTEllipseToJSON(self, encoding, error);
}
@end

@implementation QTGroup
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"effects": @"effects",
        @"layoutGrids": @"layoutGrids",
        @"opacity": @"opacity",
        @"name": @"name",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"visible": @"visible",
        @"blendMode": @"blendMode",
        @"backgroundColor": @"backgroundColor",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"clipsContent": @"clipsContent",
        @"exportSettings": @"exportSettings",
        @"type": @"type",
        @"id": @"identifier",
        @"preserveRatio": @"preserveRatio",
        @"children": @"children",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTGroupFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTGroupFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTGroup alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTAbsoluteBoundingBox fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _backgroundColor = [QTOlor fromJSONDictionary:(id)_backgroundColor];
        _constraints = [QTConstraints fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTDocumentElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTGroup.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTGroup.properties.allValues] mutableCopy];

    for (id jsonName in QTGroup.properties) {
        id propertyName = QTGroup.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"effects": NSNullify(map(_effects, λ(id x, [x JSONDictionary]))),
        @"layoutGrids": NSNullify(map(_layoutGrids, λ(id x, [x JSONDictionary]))),
        @"absoluteBoundingBox": NSNullify([_absoluteBoundingBox JSONDictionary]),
        @"blendMode": NSNullify([_blendMode value]),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
        @"constraints": NSNullify([_constraints JSONDictionary]),
        @"exportSettings": NSNullify(map(_exportSettings, λ(id x, [x JSONDictionary]))),
        @"type": NSNullify([_type value]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTGroupToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTGroupToJSON(self, encoding, error);
}
@end

NS_ASSUME_NONNULL_END
