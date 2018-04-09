#import "FGFigma.h"

#define λ(decl, expr) (^(decl) { return (expr); })

static id NSNullify(id _Nullable x) {
    return (x == nil || x == NSNull.null) ? NSNull.null : x;
}

NS_ASSUME_NONNULL_BEGIN

@interface FGFrameOffset (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGVector2 (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGVector (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGRectangle (JSONConversion)
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

@interface FGColor (JSONConversion)
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

@interface FGGlobal (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGText (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGTypeStyle (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGFrame (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGLayoutGrid (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGProjectSummary (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGCommentRequest (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGClientMeta (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGSlice (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGStar (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGLine (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGVectorBase (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGInstance (JSONConversion)
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

@interface FGUser (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGBooleanGroup (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGCanvas (JSONConversion)
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

@interface FGFileResponse (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGComponent (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGDocument (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGFrameBase (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGRegularPolygon (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface FGEllipse (JSONConversion)
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

@interface FGGroup (JSONConversion)
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

@implementation FGPaintType
+ (NSDictionary<NSString *, FGPaintType *> *)values
{
    static NSDictionary<NSString *, FGPaintType *> *values;
    return values = values ? values : @{
        @"EMOJI": [[FGPaintType alloc] initWithValue:@"EMOJI"],
        @"GRADIENT_ANGULAR": [[FGPaintType alloc] initWithValue:@"GRADIENT_ANGULAR"],
        @"GRADIENT_DIAMOND": [[FGPaintType alloc] initWithValue:@"GRADIENT_DIAMOND"],
        @"GRADIENT_LINEAR": [[FGPaintType alloc] initWithValue:@"GRADIENT_LINEAR"],
        @"GRADIENT_RADIAL": [[FGPaintType alloc] initWithValue:@"GRADIENT_RADIAL"],
        @"IMAGE": [[FGPaintType alloc] initWithValue:@"IMAGE"],
        @"SOLID": [[FGPaintType alloc] initWithValue:@"SOLID"],
    };
}

+ (FGPaintType *)emoji { return FGPaintType.values[@"EMOJI"]; }
+ (FGPaintType *)gradientAngular { return FGPaintType.values[@"GRADIENT_ANGULAR"]; }
+ (FGPaintType *)gradientDiamond { return FGPaintType.values[@"GRADIENT_DIAMOND"]; }
+ (FGPaintType *)gradientLinear { return FGPaintType.values[@"GRADIENT_LINEAR"]; }
+ (FGPaintType *)gradientRadial { return FGPaintType.values[@"GRADIENT_RADIAL"]; }
+ (FGPaintType *)image { return FGPaintType.values[@"IMAGE"]; }
+ (FGPaintType *)solid { return FGPaintType.values[@"SOLID"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return FGPaintType.values[value];
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

FGFrameOffset *_Nullable FGFrameOffsetFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGFrameOffset fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGFrameOffset *_Nullable FGFrameOffsetFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGFrameOffsetFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGFrameOffsetToData(FGFrameOffset *frameOffset, NSError **error)
{
    @try {
        id json = [frameOffset JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGFrameOffsetToJSON(FGFrameOffset *frameOffset, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGFrameOffsetToData(frameOffset, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGNode *_Nullable FGNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGNode *_Nullable FGNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGNodeToData(FGNode *node, NSError **error)
{
    @try {
        id json = [node JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGNodeToJSON(FGNode *node, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGNodeToData(node, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGVector *_Nullable FGVectorFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGVector fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGVector *_Nullable FGVectorFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGVectorFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGVectorToData(FGVector *vector, NSError **error)
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

NSString *_Nullable FGVectorToJSON(FGVector *vector, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGVectorToData(vector, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGColor *_Nullable FGColorFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGColor fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGColor *_Nullable FGColorFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGColorFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGColorToData(FGColor *color, NSError **error)
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

NSString *_Nullable FGColorToJSON(FGColor *color, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGColorToData(color, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGGlobal *_Nullable FGGlobalFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGGlobal fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGGlobal *_Nullable FGGlobalFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGGlobalFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGGlobalToData(FGGlobal *global, NSError **error)
{
    @try {
        id json = [global JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGGlobalToJSON(FGGlobal *global, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGGlobalToData(global, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGColorStop *_Nullable FGColorStopFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGColorStop fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGColorStop *_Nullable FGColorStopFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGColorStopFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGColorStopToData(FGColorStop *colorStop, NSError **error)
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

NSString *_Nullable FGColorStopToJSON(FGColorStop *colorStop, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGColorStopToData(colorStop, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGLayoutConstraint *_Nullable FGLayoutConstraintFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGLayoutConstraint fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGLayoutConstraint *_Nullable FGLayoutConstraintFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGLayoutConstraintFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGLayoutConstraintToData(FGLayoutConstraint *layoutConstraint, NSError **error)
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

NSString *_Nullable FGLayoutConstraintToJSON(FGLayoutConstraint *layoutConstraint, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGLayoutConstraintToData(layoutConstraint, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGUser *_Nullable FGUserFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGUser fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGUser *_Nullable FGUserFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGUserFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGUserToData(FGUser *user, NSError **error)
{
    @try {
        id json = [user JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGUserToJSON(FGUser *user, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGUserToData(user, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGText *_Nullable FGTextFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGText fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGText *_Nullable FGTextFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGTextFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGTextToData(FGText *text, NSError **error)
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

NSString *_Nullable FGTextToJSON(FGText *text, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGTextToData(text, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGFrame *_Nullable FGFrameFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGFrame fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGFrame *_Nullable FGFrameFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGFrameFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGFrameToData(FGFrame *frame, NSError **error)
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

NSString *_Nullable FGFrameToJSON(FGFrame *frame, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGFrameToData(frame, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGProjectSummary *_Nullable FGProjectSummaryFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGProjectSummary fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGProjectSummary *_Nullable FGProjectSummaryFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGProjectSummaryFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGProjectSummaryToData(FGProjectSummary *projectSummary, NSError **error)
{
    @try {
        id json = [projectSummary JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGProjectSummaryToJSON(FGProjectSummary *projectSummary, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGProjectSummaryToData(projectSummary, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGRectangle *_Nullable FGRectangleFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGRectangle fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGRectangle *_Nullable FGRectangleFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGRectangleFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGRectangleToData(FGRectangle *rectangle, NSError **error)
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

NSString *_Nullable FGRectangleToJSON(FGRectangle *rectangle, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGRectangleToData(rectangle, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGVector2 *_Nullable FGVector2FromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGVector2 fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGVector2 *_Nullable FGVector2FromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGVector2FromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGVector2ToData(FGVector2 *vector2, NSError **error)
{
    @try {
        id json = [vector2 JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGVector2ToJSON(FGVector2 *vector2, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGVector2ToData(vector2, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGLayoutGrid *_Nullable FGLayoutGridFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGLayoutGrid fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGLayoutGrid *_Nullable FGLayoutGridFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGLayoutGridFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGLayoutGridToData(FGLayoutGrid *layoutGrid, NSError **error)
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

NSString *_Nullable FGLayoutGridToJSON(FGLayoutGrid *layoutGrid, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGLayoutGridToData(layoutGrid, error);
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

FGString *_Nullable FGStringFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : map(json, λ(id x, x));
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGString *_Nullable FGStringFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGStringFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGStringToData(FGString *string, NSError **error)
{
    @try {
        id json = string;
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGStringToJSON(FGString *string, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGStringToData(string, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGEffect *_Nullable FGEffectFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGEffect fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGEffect *_Nullable FGEffectFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGEffectFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGEffectToData(FGEffect *effect, NSError **error)
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

NSString *_Nullable FGEffectToJSON(FGEffect *effect, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGEffectToData(effect, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGSlice *_Nullable FGSliceFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGSlice fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGSlice *_Nullable FGSliceFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGSliceFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGSliceToData(FGSlice *slice, NSError **error)
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

NSString *_Nullable FGSliceToJSON(FGSlice *slice, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGSliceToData(slice, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGStar *_Nullable FGStarFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGStar fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGStar *_Nullable FGStarFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGStarFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGStarToData(FGStar *star, NSError **error)
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

NSString *_Nullable FGStarToJSON(FGStar *star, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGStarToData(star, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGLine *_Nullable FGLineFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGLine fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGLine *_Nullable FGLineFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGLineFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGLineToData(FGLine *line, NSError **error)
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

NSString *_Nullable FGLineToJSON(FGLine *line, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGLineToData(line, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGBlendMode *_Nullable FGBlendModeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGBlendMode withValue:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGBlendMode *_Nullable FGBlendModeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGBlendModeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGBlendModeToData(FGBlendMode *blendMode, NSError **error)
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

NSString *_Nullable FGBlendModeToJSON(FGBlendMode *blendMode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGBlendModeToData(blendMode, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGVectorBase *_Nullable FGVectorBaseFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGVectorBase fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGVectorBase *_Nullable FGVectorBaseFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGVectorBaseFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGVectorBaseToData(FGVectorBase *vectorBase, NSError **error)
{
    @try {
        id json = [vectorBase JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGVectorBaseToJSON(FGVectorBase *vectorBase, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGVectorBaseToData(vectorBase, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGInstance *_Nullable FGInstanceFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGInstance fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGInstance *_Nullable FGInstanceFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGInstanceFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGInstanceToData(FGInstance *instance, NSError **error)
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

NSString *_Nullable FGInstanceToJSON(FGInstance *instance, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGInstanceToData(instance, error);
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

FGTypeStyle *_Nullable FGTypeStyleFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGTypeStyle fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGTypeStyle *_Nullable FGTypeStyleFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGTypeStyleFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGTypeStyleToData(FGTypeStyle *typeStyle, NSError **error)
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

NSString *_Nullable FGTypeStyleToJSON(FGTypeStyle *typeStyle, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGTypeStyleToData(typeStyle, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGBooleanGroup *_Nullable FGBooleanGroupFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGBooleanGroup fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGBooleanGroup *_Nullable FGBooleanGroupFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGBooleanGroupFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGBooleanGroupToData(FGBooleanGroup *booleanGroup, NSError **error)
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

NSString *_Nullable FGBooleanGroupToJSON(FGBooleanGroup *booleanGroup, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGBooleanGroupToData(booleanGroup, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGCanvas *_Nullable FGCanvasFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGCanvas fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGCanvas *_Nullable FGCanvasFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGCanvasFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGCanvasToData(FGCanvas *canvas, NSError **error)
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

NSString *_Nullable FGCanvasToJSON(FGCanvas *canvas, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGCanvasToData(canvas, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGDocument *_Nullable FGDocumentFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGDocument fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGDocument *_Nullable FGDocumentFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGDocumentFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGDocumentToData(FGDocument *document, NSError **error)
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

NSString *_Nullable FGDocumentToJSON(FGDocument *document, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGDocumentToData(document, error);
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

FGNodeType *_Nullable FGNodeTypeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGNodeType withValue:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGNodeType *_Nullable FGNodeTypeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGNodeTypeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGNodeTypeToData(FGNodeType *nodeType, NSError **error)
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

NSString *_Nullable FGNodeTypeToJSON(FGNodeType *nodeType, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGNodeTypeToData(nodeType, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGExportSetting *_Nullable FGExportSettingFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGExportSetting fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGExportSetting *_Nullable FGExportSettingFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGExportSettingFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGExportSettingToData(FGExportSetting *exportSetting, NSError **error)
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

NSString *_Nullable FGExportSettingToJSON(FGExportSetting *exportSetting, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGExportSettingToData(exportSetting, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGComponent *_Nullable FGComponentFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGComponent fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGComponent *_Nullable FGComponentFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGComponentFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGComponentToData(FGComponent *component, NSError **error)
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

NSString *_Nullable FGComponentToJSON(FGComponent *component, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGComponentToData(component, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

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

FGConstraint *_Nullable FGConstraintFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGConstraint fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGConstraint *_Nullable FGConstraintFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGConstraintFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGConstraintToData(FGConstraint *constraint, NSError **error)
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

NSString *_Nullable FGConstraintToJSON(FGConstraint *constraint, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGConstraintToData(constraint, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGPaint *_Nullable FGPaintFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGPaint fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGPaint *_Nullable FGPaintFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGPaintFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGPaintToData(FGPaint *paint, NSError **error)
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

NSString *_Nullable FGPaintToJSON(FGPaint *paint, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGPaintToData(paint, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGFrameBase *_Nullable FGFrameBaseFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGFrameBase fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGFrameBase *_Nullable FGFrameBaseFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGFrameBaseFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGFrameBaseToData(FGFrameBase *frameBase, NSError **error)
{
    @try {
        id json = [frameBase JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGFrameBaseToJSON(FGFrameBase *frameBase, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGFrameBaseToData(frameBase, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGRegularPolygon *_Nullable FGRegularPolygonFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGRegularPolygon fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGRegularPolygon *_Nullable FGRegularPolygonFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGRegularPolygonFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGRegularPolygonToData(FGRegularPolygon *regularPolygon, NSError **error)
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

NSString *_Nullable FGRegularPolygonToJSON(FGRegularPolygon *regularPolygon, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGRegularPolygonToData(regularPolygon, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGEllipse *_Nullable FGEllipseFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGEllipse fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGEllipse *_Nullable FGEllipseFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGEllipseFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGEllipseToData(FGEllipse *ellipse, NSError **error)
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

NSString *_Nullable FGEllipseToJSON(FGEllipse *ellipse, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGEllipseToData(ellipse, error);
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

FGComment *_Nullable FGCommentFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGComment fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGComment *_Nullable FGCommentFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGCommentFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGCommentToData(FGComment *comment, NSError **error)
{
    @try {
        id json = [comment JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable FGCommentToJSON(FGComment *comment, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGCommentToData(comment, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

FGGroup *_Nullable FGGroupFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [FGGroup fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

FGGroup *_Nullable FGGroupFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return FGGroupFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable FGGroupToData(FGGroup *group, NSError **error)
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

NSString *_Nullable FGGroupToJSON(FGGroup *group, NSStringEncoding encoding, NSError **error)
{
    NSData *data = FGGroupToData(group, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

@implementation FGFrameOffset
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"node_id": @"nodeID",
        @"node_offset": @"nodeOffset",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGFrameOffsetFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGFrameOffsetFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGFrameOffset alloc] initWithJSONDictionary:dict] : nil;
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
    [super setValue:value forKey:FGFrameOffset.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGFrameOffset.properties.allValues] mutableCopy];

    for (id jsonName in FGFrameOffset.properties) {
        id propertyName = FGFrameOffset.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"node_offset": [_nodeOffset JSONDictionary],
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGFrameOffsetToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGFrameOffsetToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGVector2FromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGVector2FromJSON(json, encoding, error);
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGVector2ToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGVector2ToJSON(self, encoding, error);
}
@end

@implementation FGVector
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"effects": @"effects",
        @"exportSettings": @"exportSettings",
        @"fills": @"fills",
        @"id": @"identifier",
        @"isMask": @"isMask",
        @"name": @"name",
        @"opacity": @"opacity",
        @"preserveRatio": @"isPreserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokes": @"strokes",
        @"strokeWeight": @"strokeWeight",
        @"transitionNodeID": @"transitionNodeID",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGVectorFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGVectorFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGVector alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _constraints = [FGLayoutConstraint fromJSONDictionary:(id)_constraints];
        _effects = map(_effects, λ(id x, [FGEffect fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _fills = map(_fills, λ(id x, [FGPaint fromJSONDictionary:x]));
        _strokeAlign = [FGStrokeAlign withValue:(id)_strokeAlign];
        _strokes = map(_strokes, λ(id x, [FGPaint fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGVector.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGVector.properties.allValues] mutableCopy];

    for (id jsonName in FGVector.properties) {
        id propertyName = FGVector.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"isMask": _isMask ? @YES : @NO,
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"strokeAlign": [_strokeAlign value],
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGVectorToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGVectorToJSON(self, encoding, error);
}
@end

@implementation FGRectangle
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"cornerRadius": @"cornerRadius",
        @"effects": @"effects",
        @"exportSettings": @"exportSettings",
        @"fills": @"fills",
        @"id": @"identifier",
        @"isMask": @"isMask",
        @"name": @"name",
        @"opacity": @"opacity",
        @"preserveRatio": @"isPreserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokes": @"strokes",
        @"strokeWeight": @"strokeWeight",
        @"transitionNodeID": @"transitionNodeID",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGRectangleFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGRectangleFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGRectangle alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _constraints = [FGLayoutConstraint fromJSONDictionary:(id)_constraints];
        _effects = map(_effects, λ(id x, [FGEffect fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _fills = map(_fills, λ(id x, [FGPaint fromJSONDictionary:x]));
        _strokeAlign = [FGStrokeAlign withValue:(id)_strokeAlign];
        _strokes = map(_strokes, λ(id x, [FGPaint fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGRectangle.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGRectangle.properties.allValues] mutableCopy];

    for (id jsonName in FGRectangle.properties) {
        id propertyName = FGRectangle.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"isMask": _isMask ? @YES : @NO,
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"strokeAlign": [_strokeAlign value],
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGRectangleToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGRectangleToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGLayoutConstraintFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGLayoutConstraintFromJSON(json, encoding, error);
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGLayoutConstraintToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGLayoutConstraintToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGEffectFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGEffectFromJSON(json, encoding, error);
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
    [super setValue:value forKey:FGEffect.properties[key]];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGEffectToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGEffectToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGColorFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGColorFromJSON(json, encoding, error);
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGColorToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGColorToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGExportSettingFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGExportSettingFromJSON(json, encoding, error);
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGExportSettingToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGExportSettingToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGConstraintFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGConstraintFromJSON(json, encoding, error);
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGConstraintToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGConstraintToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGPaintFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGPaintFromJSON(json, encoding, error);
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
        _type = [FGPaintType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGPaint.properties[key]];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGPaintToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGPaintToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGColorStopFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGColorStopFromJSON(json, encoding, error);
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGColorStopToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGColorStopToJSON(self, encoding, error);
}
@end

@implementation FGGlobal
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGGlobalFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGGlobalFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGGlobal alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGGlobal.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGGlobal.properties.allValues] mutableCopy];

    for (id jsonName in FGGlobal.properties) {
        id propertyName = FGGlobal.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGGlobalToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGGlobalToJSON(self, encoding, error);
}
@end

@implementation FGText
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"blendMode": @"blendMode",
        @"characters": @"characters",
        @"characterStyleOverrides": @"characterStyleOverrides",
        @"constraints": @"constraints",
        @"effects": @"effects",
        @"exportSettings": @"exportSettings",
        @"fills": @"fills",
        @"id": @"identifier",
        @"isMask": @"isMask",
        @"name": @"name",
        @"opacity": @"opacity",
        @"preserveRatio": @"isPreserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokes": @"strokes",
        @"strokeWeight": @"strokeWeight",
        @"style": @"style",
        @"styleOverrideTable": @"styleOverrideTable",
        @"transitionNodeID": @"transitionNodeID",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGTextFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGTextFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGText alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _constraints = [FGLayoutConstraint fromJSONDictionary:(id)_constraints];
        _effects = map(_effects, λ(id x, [FGEffect fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _fills = map(_fills, λ(id x, [FGPaint fromJSONDictionary:x]));
        _strokeAlign = [FGStrokeAlign withValue:(id)_strokeAlign];
        _strokes = map(_strokes, λ(id x, [FGPaint fromJSONDictionary:x]));
        _style = [FGTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [FGTypeStyle fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGText.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGText.properties.allValues] mutableCopy];

    for (id jsonName in FGText.properties) {
        id propertyName = FGText.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"isMask": _isMask ? @YES : @NO,
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"strokeAlign": [_strokeAlign value],
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"style": [_style JSONDictionary],
        @"styleOverrideTable": map(_styleOverrideTable, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGTextToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGTextToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGTypeStyleFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGTypeStyleFromJSON(json, encoding, error);
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
    [super setValue:value forKey:FGTypeStyle.properties[key]];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGTypeStyleToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGTypeStyleToJSON(self, encoding, error);
}
@end

@implementation FGFrame
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGFrameFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGFrameFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGFrame alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _backgroundColor = [FGColor fromJSONDictionary:(id)_backgroundColor];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _children = map(_children, λ(id x, [FGNode fromJSONDictionary:x]));
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
    [super setValue:value forKey:FGFrame.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGFrame.properties.allValues] mutableCopy];

    for (id jsonName in FGFrame.properties) {
        id propertyName = FGFrame.properties[jsonName];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGFrameToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGFrameToJSON(self, encoding, error);
}
@end

@implementation FGNode
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
        @"componentId": @"componentID",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _children = map(_children, λ(id x, [FGNode fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
        _backgroundColor = [FGColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
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
    [super setValue:value forKey:FGNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGNode.properties.allValues] mutableCopy];

    for (id jsonName in FGNode.properties) {
        id propertyName = FGNode.properties[jsonName];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGNodeToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGLayoutGridFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGLayoutGridFromJSON(json, encoding, error);
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
    [super setValue:value forKey:FGLayoutGrid.properties[key]];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGLayoutGridToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGLayoutGridToJSON(self, encoding, error);
}
@end

@implementation FGProjectSummary
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGProjectSummaryFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGProjectSummaryFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGProjectSummary alloc] initWithJSONDictionary:dict] : nil;
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
    [super setValue:value forKey:FGProjectSummary.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGProjectSummary.properties.allValues] mutableCopy];

    for (id jsonName in FGProjectSummary.properties) {
        id propertyName = FGProjectSummary.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGProjectSummaryToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGProjectSummaryToJSON(self, encoding, error);
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
    [super setValue:value forKey:FGCommentRequest.properties[key]];
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
    [super setValue:value forKey:FGClientMeta.properties[key]];
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

@implementation FGSlice
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"exportSettings": @"exportSettings",
        @"id": @"identifier",
        @"name": @"name",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGSliceFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGSliceFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGSlice alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGSlice.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGSlice.properties.allValues] mutableCopy];

    for (id jsonName in FGSlice.properties) {
        id propertyName = FGSlice.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGSliceToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGSliceToJSON(self, encoding, error);
}
@end

@implementation FGStar
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"effects": @"effects",
        @"exportSettings": @"exportSettings",
        @"fills": @"fills",
        @"id": @"identifier",
        @"isMask": @"isMask",
        @"name": @"name",
        @"opacity": @"opacity",
        @"preserveRatio": @"isPreserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokes": @"strokes",
        @"strokeWeight": @"strokeWeight",
        @"transitionNodeID": @"transitionNodeID",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGStarFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGStarFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGStar alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _constraints = [FGLayoutConstraint fromJSONDictionary:(id)_constraints];
        _effects = map(_effects, λ(id x, [FGEffect fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _fills = map(_fills, λ(id x, [FGPaint fromJSONDictionary:x]));
        _strokeAlign = [FGStrokeAlign withValue:(id)_strokeAlign];
        _strokes = map(_strokes, λ(id x, [FGPaint fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGStar.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGStar.properties.allValues] mutableCopy];

    for (id jsonName in FGStar.properties) {
        id propertyName = FGStar.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"isMask": _isMask ? @YES : @NO,
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"strokeAlign": [_strokeAlign value],
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGStarToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGStarToJSON(self, encoding, error);
}
@end

@implementation FGLine
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"effects": @"effects",
        @"exportSettings": @"exportSettings",
        @"fills": @"fills",
        @"id": @"identifier",
        @"isMask": @"isMask",
        @"name": @"name",
        @"opacity": @"opacity",
        @"preserveRatio": @"isPreserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokes": @"strokes",
        @"strokeWeight": @"strokeWeight",
        @"transitionNodeID": @"transitionNodeID",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGLineFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGLineFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGLine alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _constraints = [FGLayoutConstraint fromJSONDictionary:(id)_constraints];
        _effects = map(_effects, λ(id x, [FGEffect fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _fills = map(_fills, λ(id x, [FGPaint fromJSONDictionary:x]));
        _strokeAlign = [FGStrokeAlign withValue:(id)_strokeAlign];
        _strokes = map(_strokes, λ(id x, [FGPaint fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGLine.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGLine.properties.allValues] mutableCopy];

    for (id jsonName in FGLine.properties) {
        id propertyName = FGLine.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"isMask": _isMask ? @YES : @NO,
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"strokeAlign": [_strokeAlign value],
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGLineToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGLineToJSON(self, encoding, error);
}
@end

@implementation FGVectorBase
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"effects": @"effects",
        @"exportSettings": @"exportSettings",
        @"fills": @"fills",
        @"id": @"identifier",
        @"isMask": @"isMask",
        @"name": @"name",
        @"opacity": @"opacity",
        @"preserveRatio": @"isPreserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokes": @"strokes",
        @"strokeWeight": @"strokeWeight",
        @"transitionNodeID": @"transitionNodeID",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGVectorBaseFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGVectorBaseFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGVectorBase alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _constraints = [FGLayoutConstraint fromJSONDictionary:(id)_constraints];
        _effects = map(_effects, λ(id x, [FGEffect fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _fills = map(_fills, λ(id x, [FGPaint fromJSONDictionary:x]));
        _strokeAlign = [FGStrokeAlign withValue:(id)_strokeAlign];
        _strokes = map(_strokes, λ(id x, [FGPaint fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGVectorBase.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGVectorBase.properties.allValues] mutableCopy];

    for (id jsonName in FGVectorBase.properties) {
        id propertyName = FGVectorBase.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"isMask": _isMask ? @YES : @NO,
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"strokeAlign": [_strokeAlign value],
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGVectorBaseToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGVectorBaseToJSON(self, encoding, error);
}
@end

@implementation FGInstance
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"backgroundColor": @"backgroundColor",
        @"blendMode": @"blendMode",
        @"children": @"children",
        @"clipsContent": @"isClipsContent",
        @"componentId": @"componentID",
        @"constraints": @"constraints",
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGInstanceFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGInstanceFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGInstance alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _backgroundColor = [FGColor fromJSONDictionary:(id)_backgroundColor];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _children = map(_children, λ(id x, [FGNode fromJSONDictionary:x]));
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
    [super setValue:value forKey:FGInstance.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGInstance.properties.allValues] mutableCopy];

    for (id jsonName in FGInstance.properties) {
        id propertyName = FGInstance.properties[jsonName];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGInstanceToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGInstanceToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGCommentFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGCommentFromJSON(json, encoding, error);
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
    [super setValue:value forKey:FGComment.properties[key]];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGCommentToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGCommentToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGUserFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGUserFromJSON(json, encoding, error);
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
    [super setValue:value forKey:FGUser.properties[key]];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGUserToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGUserToJSON(self, encoding, error);
}
@end

@implementation FGBooleanGroup
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"blendMode": @"blendMode",
        @"children": @"children",
        @"constraints": @"constraints",
        @"effects": @"effects",
        @"exportSettings": @"exportSettings",
        @"fills": @"fills",
        @"id": @"identifier",
        @"isMask": @"isMask",
        @"name": @"name",
        @"opacity": @"opacity",
        @"preserveRatio": @"isPreserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokes": @"strokes",
        @"strokeWeight": @"strokeWeight",
        @"transitionNodeID": @"transitionNodeID",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGBooleanGroupFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGBooleanGroupFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGBooleanGroup alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _children = map(_children, λ(id x, [FGNode fromJSONDictionary:x]));
        _constraints = [FGLayoutConstraint fromJSONDictionary:(id)_constraints];
        _effects = map(_effects, λ(id x, [FGEffect fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _fills = map(_fills, λ(id x, [FGPaint fromJSONDictionary:x]));
        _strokeAlign = [FGStrokeAlign withValue:(id)_strokeAlign];
        _strokes = map(_strokes, λ(id x, [FGPaint fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGBooleanGroup.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGBooleanGroup.properties.allValues] mutableCopy];

    for (id jsonName in FGBooleanGroup.properties) {
        id propertyName = FGBooleanGroup.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"children": map(_children, λ(id x, [x JSONDictionary])),
        @"constraints": [_constraints JSONDictionary],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"isMask": _isMask ? @YES : @NO,
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"strokeAlign": [_strokeAlign value],
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGBooleanGroupToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGBooleanGroupToJSON(self, encoding, error);
}
@end

@implementation FGCanvas
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
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGCanvasFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGCanvasFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGCanvas alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _backgroundColor = [FGColor fromJSONDictionary:(id)_backgroundColor];
        _children = map(_children, λ(id x, [FGNode fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGCanvas.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGCanvas.properties.allValues] mutableCopy];

    for (id jsonName in FGCanvas.properties) {
        id propertyName = FGCanvas.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"backgroundColor": [_backgroundColor JSONDictionary],
        @"children": map(_children, λ(id x, [x JSONDictionary])),
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGCanvasToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGCanvasToJSON(self, encoding, error);
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
    [super setValue:value forKey:FGProject.properties[key]];
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
        _document = [FGDocument fromJSONDictionary:(id)_document];
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGComponentFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGComponentFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGComponent alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _backgroundColor = [FGColor fromJSONDictionary:(id)_backgroundColor];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _children = map(_children, λ(id x, [FGNode fromJSONDictionary:x]));
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
    [super setValue:value forKey:FGComponent.properties[key]];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGComponentToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGComponentToJSON(self, encoding, error);
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
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGDocumentFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGDocumentFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGDocument alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _children = map(_children, λ(id x, [FGNode fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGDocument.properties[key]];
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
        @"children": map(_children, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGDocumentToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGDocumentToJSON(self, encoding, error);
}
@end

@implementation FGFrameBase
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGFrameBaseFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGFrameBaseFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGFrameBase alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _backgroundColor = [FGColor fromJSONDictionary:(id)_backgroundColor];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _children = map(_children, λ(id x, [FGNode fromJSONDictionary:x]));
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
    [super setValue:value forKey:FGFrameBase.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGFrameBase.properties.allValues] mutableCopy];

    for (id jsonName in FGFrameBase.properties) {
        id propertyName = FGFrameBase.properties[jsonName];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGFrameBaseToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGFrameBaseToJSON(self, encoding, error);
}
@end

@implementation FGRegularPolygon
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"effects": @"effects",
        @"exportSettings": @"exportSettings",
        @"fills": @"fills",
        @"id": @"identifier",
        @"isMask": @"isMask",
        @"name": @"name",
        @"opacity": @"opacity",
        @"preserveRatio": @"isPreserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokes": @"strokes",
        @"strokeWeight": @"strokeWeight",
        @"transitionNodeID": @"transitionNodeID",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGRegularPolygonFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGRegularPolygonFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGRegularPolygon alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _constraints = [FGLayoutConstraint fromJSONDictionary:(id)_constraints];
        _effects = map(_effects, λ(id x, [FGEffect fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _fills = map(_fills, λ(id x, [FGPaint fromJSONDictionary:x]));
        _strokeAlign = [FGStrokeAlign withValue:(id)_strokeAlign];
        _strokes = map(_strokes, λ(id x, [FGPaint fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGRegularPolygon.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGRegularPolygon.properties.allValues] mutableCopy];

    for (id jsonName in FGRegularPolygon.properties) {
        id propertyName = FGRegularPolygon.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"isMask": _isMask ? @YES : @NO,
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"strokeAlign": [_strokeAlign value],
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGRegularPolygonToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGRegularPolygonToJSON(self, encoding, error);
}
@end

@implementation FGEllipse
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"effects": @"effects",
        @"exportSettings": @"exportSettings",
        @"fills": @"fills",
        @"id": @"identifier",
        @"isMask": @"isMask",
        @"name": @"name",
        @"opacity": @"opacity",
        @"preserveRatio": @"isPreserveRatio",
        @"strokeAlign": @"strokeAlign",
        @"strokes": @"strokes",
        @"strokeWeight": @"strokeWeight",
        @"transitionNodeID": @"transitionNodeID",
        @"type": @"type",
        @"visible": @"isVisible",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGEllipseFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGEllipseFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGEllipse alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _constraints = [FGLayoutConstraint fromJSONDictionary:(id)_constraints];
        _effects = map(_effects, λ(id x, [FGEffect fromJSONDictionary:x]));
        _exportSettings = map(_exportSettings, λ(id x, [FGExportSetting fromJSONDictionary:x]));
        _fills = map(_fills, λ(id x, [FGPaint fromJSONDictionary:x]));
        _strokeAlign = [FGStrokeAlign withValue:(id)_strokeAlign];
        _strokes = map(_strokes, λ(id x, [FGPaint fromJSONDictionary:x]));
        _type = [FGNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:FGEllipse.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGEllipse.properties.allValues] mutableCopy];

    for (id jsonName in FGEllipse.properties) {
        id propertyName = FGEllipse.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"isMask": _isMask ? @YES : @NO,
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"strokeAlign": [_strokeAlign value],
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"type": [_type value],
        @"visible": _isVisible ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGEllipseToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGEllipseToJSON(self, encoding, error);
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
    [super setValue:value forKey:FGFile.properties[key]];
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

@implementation FGGroup
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return FGGroupFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGGroupFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGGroup alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _absoluteBoundingBox = [FGRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _backgroundColor = [FGColor fromJSONDictionary:(id)_backgroundColor];
        _blendMode = [FGBlendMode withValue:(id)_blendMode];
        _children = map(_children, λ(id x, [FGNode fromJSONDictionary:x]));
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
    [super setValue:value forKey:FGGroup.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:FGGroup.properties.allValues] mutableCopy];

    for (id jsonName in FGGroup.properties) {
        id propertyName = FGGroup.properties[jsonName];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return FGGroupToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return FGGroupToJSON(self, encoding, error);
}
@end

NS_ASSUME_NONNULL_END
