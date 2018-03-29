#import "FGFigma.h"

#define λ(decl, expr) (^(decl) { return (expr); })

static id NSNullify(id _Nullable x) {
    return (x == nil || x == NSNull.null) ? NSNull.null : x;
}

NS_ASSUME_NONNULL_BEGIN

@interface QTRegularPolygonNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTRegularPolygonNodeRectangle (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTRegularPolygonNodeLayoutConstraint (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTEffectElement (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTEffectColor (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTEffectVector (JSONConversion)
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

@interface QTEllipseNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTGroupNode (JSONConversion)
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

@interface QTLayoutGridElement (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTNodeTypeStyle (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTVector (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTColor (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTGlobal (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTColorStop (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTVectorNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTLayoutConstraint (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTBooleanNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTFluffyNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTUser (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTTextNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTFrameNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTFrameNodeNode (JSONConversion)
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

@interface QTRectangleNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTSliceNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTStarNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTLineNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTInstanceNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTTypeStyle (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTCanvasNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTTentacledNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTExportSetting (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTDocumentNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTStickyNode (JSONConversion)
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

@interface QTComponentNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTComment (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTCommentUser (JSONConversion)
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

@implementation QTRegularPolygonNodeType
+ (NSDictionary<NSString *, QTRegularPolygonNodeType *> *)values
{
    static NSDictionary<NSString *, QTRegularPolygonNodeType *> *values;
    return values = values ? values : @{
        @"BOOLEAN": [[QTRegularPolygonNodeType alloc] initWithValue:@"BOOLEAN"],
        @"CANVAS": [[QTRegularPolygonNodeType alloc] initWithValue:@"CANVAS"],
        @"COMPONENT": [[QTRegularPolygonNodeType alloc] initWithValue:@"COMPONENT"],
        @"DOCUMENT": [[QTRegularPolygonNodeType alloc] initWithValue:@"DOCUMENT"],
        @"ELLIPSE": [[QTRegularPolygonNodeType alloc] initWithValue:@"ELLIPSE"],
        @"FRAME": [[QTRegularPolygonNodeType alloc] initWithValue:@"FRAME"],
        @"GROUP": [[QTRegularPolygonNodeType alloc] initWithValue:@"GROUP"],
        @"INSTANCE": [[QTRegularPolygonNodeType alloc] initWithValue:@"INSTANCE"],
        @"LINE": [[QTRegularPolygonNodeType alloc] initWithValue:@"LINE"],
        @"RECTANGLE": [[QTRegularPolygonNodeType alloc] initWithValue:@"RECTANGLE"],
        @"REGULAR_POLYGON": [[QTRegularPolygonNodeType alloc] initWithValue:@"REGULAR_POLYGON"],
        @"SLICE": [[QTRegularPolygonNodeType alloc] initWithValue:@"SLICE"],
        @"STAR": [[QTRegularPolygonNodeType alloc] initWithValue:@"STAR"],
        @"TEXT": [[QTRegularPolygonNodeType alloc] initWithValue:@"TEXT"],
        @"VECTOR": [[QTRegularPolygonNodeType alloc] initWithValue:@"VECTOR"],
    };
}

+ (QTRegularPolygonNodeType *)boolean { return QTRegularPolygonNodeType.values[@"BOOLEAN"]; }
+ (QTRegularPolygonNodeType *)canvas { return QTRegularPolygonNodeType.values[@"CANVAS"]; }
+ (QTRegularPolygonNodeType *)component { return QTRegularPolygonNodeType.values[@"COMPONENT"]; }
+ (QTRegularPolygonNodeType *)document { return QTRegularPolygonNodeType.values[@"DOCUMENT"]; }
+ (QTRegularPolygonNodeType *)ellipse { return QTRegularPolygonNodeType.values[@"ELLIPSE"]; }
+ (QTRegularPolygonNodeType *)frame { return QTRegularPolygonNodeType.values[@"FRAME"]; }
+ (QTRegularPolygonNodeType *)group { return QTRegularPolygonNodeType.values[@"GROUP"]; }
+ (QTRegularPolygonNodeType *)instance { return QTRegularPolygonNodeType.values[@"INSTANCE"]; }
+ (QTRegularPolygonNodeType *)line { return QTRegularPolygonNodeType.values[@"LINE"]; }
+ (QTRegularPolygonNodeType *)rectangle { return QTRegularPolygonNodeType.values[@"RECTANGLE"]; }
+ (QTRegularPolygonNodeType *)regularPolygon { return QTRegularPolygonNodeType.values[@"REGULAR_POLYGON"]; }
+ (QTRegularPolygonNodeType *)slice { return QTRegularPolygonNodeType.values[@"SLICE"]; }
+ (QTRegularPolygonNodeType *)star { return QTRegularPolygonNodeType.values[@"STAR"]; }
+ (QTRegularPolygonNodeType *)text { return QTRegularPolygonNodeType.values[@"TEXT"]; }
+ (QTRegularPolygonNodeType *)vector { return QTRegularPolygonNodeType.values[@"VECTOR"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return QTRegularPolygonNodeType.values[value];
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

QTRegularPolygonNode *_Nullable QTRegularPolygonNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTRegularPolygonNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTRegularPolygonNode *_Nullable QTRegularPolygonNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTRegularPolygonNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTRegularPolygonNodeToData(QTRegularPolygonNode *regularPolygonNode, NSError **error)
{
    @try {
        id json = [regularPolygonNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTRegularPolygonNodeToJSON(QTRegularPolygonNode *regularPolygonNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTRegularPolygonNodeToData(regularPolygonNode, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTEllipseNode *_Nullable QTEllipseNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTEllipseNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTEllipseNode *_Nullable QTEllipseNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTEllipseNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTEllipseNodeToData(QTEllipseNode *ellipseNode, NSError **error)
{
    @try {
        id json = [ellipseNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTEllipseNodeToJSON(QTEllipseNode *ellipseNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTEllipseNodeToData(ellipseNode, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTGroupNode *_Nullable QTGroupNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTGroupNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTGroupNode *_Nullable QTGroupNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTGroupNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTGroupNodeToData(QTGroupNode *groupNode, NSError **error)
{
    @try {
        id json = [groupNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTGroupNodeToJSON(QTGroupNode *groupNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTGroupNodeToData(groupNode, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTNode *_Nullable QTNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTNode *_Nullable QTNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTNodeToData(QTNode *node, NSError **error)
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

NSString *_Nullable QTNodeToJSON(QTNode *node, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTNodeToData(node, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

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

QTGlobal *_Nullable QTGlobalFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTGlobal fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTGlobal *_Nullable QTGlobalFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTGlobalFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTGlobalToData(QTGlobal *global, NSError **error)
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

NSString *_Nullable QTGlobalToJSON(QTGlobal *global, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTGlobalToData(global, error);
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

QTVectorNode *_Nullable QTVectorNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTVectorNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTVectorNode *_Nullable QTVectorNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTVectorNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTVectorNodeToData(QTVectorNode *vectorNode, NSError **error)
{
    @try {
        id json = [vectorNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTVectorNodeToJSON(QTVectorNode *vectorNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTVectorNodeToData(vectorNode, error);
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

QTBooleanNode *_Nullable QTBooleanNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTBooleanNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTBooleanNode *_Nullable QTBooleanNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTBooleanNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTBooleanNodeToData(QTBooleanNode *booleanNode, NSError **error)
{
    @try {
        id json = [booleanNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTBooleanNodeToJSON(QTBooleanNode *booleanNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTBooleanNodeToData(booleanNode, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTUser *_Nullable QTUserFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTUser fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTUser *_Nullable QTUserFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTUserFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTUserToData(QTUser *user, NSError **error)
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

NSString *_Nullable QTUserToJSON(QTUser *user, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTUserToData(user, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTTextNode *_Nullable QTTextNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTTextNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTTextNode *_Nullable QTTextNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTTextNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTTextNodeToData(QTTextNode *textNode, NSError **error)
{
    @try {
        id json = [textNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTTextNodeToJSON(QTTextNode *textNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTTextNodeToData(textNode, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTFrameNode *_Nullable QTFrameNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTFrameNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTFrameNode *_Nullable QTFrameNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTFrameNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTFrameNodeToData(QTFrameNode *frameNode, NSError **error)
{
    @try {
        id json = [frameNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTFrameNodeToJSON(QTFrameNode *frameNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTFrameNodeToData(frameNode, error);
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

QTRectangleNode *_Nullable QTRectangleNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTRectangleNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTRectangleNode *_Nullable QTRectangleNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTRectangleNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTRectangleNodeToData(QTRectangleNode *rectangleNode, NSError **error)
{
    @try {
        id json = [rectangleNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTRectangleNodeToJSON(QTRectangleNode *rectangleNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTRectangleNodeToData(rectangleNode, error);
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

QTSliceNode *_Nullable QTSliceNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTSliceNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTSliceNode *_Nullable QTSliceNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTSliceNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTSliceNodeToData(QTSliceNode *sliceNode, NSError **error)
{
    @try {
        id json = [sliceNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTSliceNodeToJSON(QTSliceNode *sliceNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTSliceNodeToData(sliceNode, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTStarNode *_Nullable QTStarNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTStarNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTStarNode *_Nullable QTStarNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTStarNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTStarNodeToData(QTStarNode *starNode, NSError **error)
{
    @try {
        id json = [starNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTStarNodeToJSON(QTStarNode *starNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTStarNodeToData(starNode, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTLineNode *_Nullable QTLineNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTLineNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTLineNode *_Nullable QTLineNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTLineNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTLineNodeToData(QTLineNode *lineNode, NSError **error)
{
    @try {
        id json = [lineNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTLineNodeToJSON(QTLineNode *lineNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTLineNodeToData(lineNode, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTInstanceNode *_Nullable QTInstanceNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTInstanceNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTInstanceNode *_Nullable QTInstanceNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTInstanceNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTInstanceNodeToData(QTInstanceNode *instanceNode, NSError **error)
{
    @try {
        id json = [instanceNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTInstanceNodeToJSON(QTInstanceNode *instanceNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTInstanceNodeToData(instanceNode, error);
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

QTCanvasNode *_Nullable QTCanvasNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTCanvasNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTCanvasNode *_Nullable QTCanvasNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTCanvasNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTCanvasNodeToData(QTCanvasNode *canvasNode, NSError **error)
{
    @try {
        id json = [canvasNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTCanvasNodeToJSON(QTCanvasNode *canvasNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTCanvasNodeToData(canvasNode, error);
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

QTDocumentNode *_Nullable QTDocumentNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTDocumentNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTDocumentNode *_Nullable QTDocumentNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTDocumentNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTDocumentNodeToData(QTDocumentNode *documentNode, NSError **error)
{
    @try {
        id json = [documentNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTDocumentNodeToJSON(QTDocumentNode *documentNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTDocumentNodeToData(documentNode, error);
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

QTComponentNode *_Nullable QTComponentNodeFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTComponentNode fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTComponentNode *_Nullable QTComponentNodeFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTComponentNodeFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTComponentNodeToData(QTComponentNode *componentNode, NSError **error)
{
    @try {
        id json = [componentNode JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable QTComponentNodeToJSON(QTComponentNode *componentNode, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTComponentNodeToData(componentNode, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

QTComment *_Nullable QTCommentFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [QTComment fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

QTComment *_Nullable QTCommentFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return QTCommentFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable QTCommentToData(QTComment *comment, NSError **error)
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

NSString *_Nullable QTCommentToJSON(QTComment *comment, NSStringEncoding encoding, NSError **error)
{
    NSData *data = QTCommentToData(comment, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

@implementation QTRegularPolygonNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"strokes": @"strokes",
        @"preserveRatio": @"isPreserveRatio",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTRegularPolygonNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTRegularPolygonNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTRegularPolygonNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTRegularPolygonNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTRegularPolygonNode.properties.allValues] mutableCopy];

    for (id jsonName in QTRegularPolygonNode.properties) {
        id propertyName = QTRegularPolygonNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"strokeAlign": [_strokeAlign value],
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"isMask": _isMask ? @YES : @NO,
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTRegularPolygonNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTRegularPolygonNodeToJSON(self, encoding, error);
}
@end

@implementation QTRegularPolygonNodeRectangle
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
    return dict ? [[QTRegularPolygonNodeRectangle alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:QTRegularPolygonNodeRectangle.properties.allValues];
}
@end

@implementation QTRegularPolygonNodeLayoutConstraint
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
    return dict ? [[QTRegularPolygonNodeLayoutConstraint alloc] initWithJSONDictionary:dict] : nil;
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
    id dict = [[self dictionaryWithValuesForKeys:QTRegularPolygonNodeLayoutConstraint.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"vertical": [_vertical value],
        @"horizontal": [_horizontal value],
    }];

    return dict;
}
@end

@implementation QTEffectElement
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
    return dict ? [[QTEffectElement alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTEffectType withValue:(id)_type];
        _color = [QTEffectColor fromJSONDictionary:(id)_color];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _offset = [QTEffectVector fromJSONDictionary:(id)_offset];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTEffectElement.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTEffectElement.properties.allValues] mutableCopy];

    for (id jsonName in QTEffectElement.properties) {
        id propertyName = QTEffectElement.properties[jsonName];
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

@implementation QTEffectColor
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
    return dict ? [[QTEffectColor alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:QTEffectColor.properties.allValues];
}
@end

@implementation QTEffectVector
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
    return dict ? [[QTEffectVector alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:QTEffectVector.properties.allValues];
}
@end

@implementation QTExportSettingElement
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
    return dict ? [[QTExportSettingElement alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _format = [QTFormat withValue:(id)_format];
        _constraint = [QTExportSettingConstraint fromJSONDictionary:(id)_constraint];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTExportSettingElement.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"format": [_format value],
        @"constraint": [_constraint JSONDictionary],
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
        @"type": [_type value],
    }];

    return dict;
}
@end

@implementation QTPaintElement
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
    return dict ? [[QTPaintElement alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTPaintType withValue:(id)_type];
        _color = [QTEffectColor fromJSONDictionary:(id)_color];
        _gradientHandlePositions = map(_gradientHandlePositions, λ(id x, [QTEffectVector fromJSONDictionary:x]));
        _gradientStops = map(_gradientStops, λ(id x, [QTColorStopElement fromJSONDictionary:x]));
        _scaleMode = [QTScaleMode withValue:(id)_scaleMode];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTPaintElement.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTPaintElement.properties.allValues] mutableCopy];

    for (id jsonName in QTPaintElement.properties) {
        id propertyName = QTPaintElement.properties[jsonName];
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
        _color = [QTEffectColor fromJSONDictionary:(id)_color];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTColorStopElement.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"color": [_color JSONDictionary],
    }];

    return dict;
}
@end

@implementation QTEllipseNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"strokes": @"strokes",
        @"preserveRatio": @"isPreserveRatio",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTEllipseNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTEllipseNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTEllipseNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTEllipseNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTEllipseNode.properties.allValues] mutableCopy];

    for (id jsonName in QTEllipseNode.properties) {
        id propertyName = QTEllipseNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"strokeAlign": [_strokeAlign value],
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"isMask": _isMask ? @YES : @NO,
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTEllipseNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTEllipseNodeToJSON(self, encoding, error);
}
@end

@implementation QTGroupNode
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTGroupNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTGroupNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTGroupNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _children = map(_children, λ(id x, [QTPurpleNode fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTGroupNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTGroupNode.properties.allValues] mutableCopy];

    for (id jsonName in QTGroupNode.properties) {
        id propertyName = QTGroupNode.properties[jsonName];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTGroupNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTGroupNodeToJSON(self, encoding, error);
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
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTNodeNode fromJSONDictionary:x]));
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _style = [QTNodeTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTNodeTypeStyle fromJSONDictionary:x]));
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
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTNodeNode fromJSONDictionary:x]));
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _style = [QTNodeTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTNodeTypeStyle fromJSONDictionary:x]));
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

@implementation QTLayoutGridElement
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
    return dict ? [[QTLayoutGridElement alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _pattern = [QTPattern withValue:(id)_pattern];
        _color = [QTEffectColor fromJSONDictionary:(id)_color];
        _alignment = [QTAlignment withValue:(id)_alignment];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTLayoutGridElement.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTLayoutGridElement.properties.allValues] mutableCopy];

    for (id jsonName in QTLayoutGridElement.properties) {
        id propertyName = QTLayoutGridElement.properties[jsonName];
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

@implementation QTNodeTypeStyle
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
    return dict ? [[QTNodeTypeStyle alloc] initWithJSONDictionary:dict] : nil;
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

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTNodeTypeStyle.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTNodeTypeStyle.properties.allValues] mutableCopy];

    for (id jsonName in QTNodeTypeStyle.properties) {
        id propertyName = QTNodeTypeStyle.properties[jsonName];
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

@implementation QTNode
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTNodeNode fromJSONDictionary:x]));
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _style = [QTNodeTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTNodeTypeStyle fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTNode.properties.allValues] mutableCopy];

    for (id jsonName in QTNode.properties) {
        id propertyName = QTNode.properties[jsonName];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTNodeToJSON(self, encoding, error);
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
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    return [self dictionaryWithValuesForKeys:QTVector.properties.allValues];
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

@implementation QTGlobal
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTGlobalFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTGlobalFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTGlobal alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTGlobal.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTGlobal.properties.allValues] mutableCopy];

    for (id jsonName in QTGlobal.properties) {
        id propertyName = QTGlobal.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTGlobalToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTGlobalToJSON(self, encoding, error);
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
        _color = [QTEffectColor fromJSONDictionary:(id)_color];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTColorStopToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTColorStopToJSON(self, encoding, error);
}
@end

@implementation QTVectorNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"strokes": @"strokes",
        @"preserveRatio": @"isPreserveRatio",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTVectorNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTVectorNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTVectorNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTVectorNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTVectorNode.properties.allValues] mutableCopy];

    for (id jsonName in QTVectorNode.properties) {
        id propertyName = QTVectorNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"strokeAlign": [_strokeAlign value],
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"isMask": _isMask ? @YES : @NO,
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTVectorNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTVectorNodeToJSON(self, encoding, error);
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTLayoutConstraintToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTLayoutConstraintToJSON(self, encoding, error);
}
@end

@implementation QTBooleanNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"strokes": @"strokes",
        @"preserveRatio": @"isPreserveRatio",
        @"children": @"children",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTBooleanNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTBooleanNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTBooleanNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _children = map(_children, λ(id x, [QTFluffyNode fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTBooleanNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTBooleanNode.properties.allValues] mutableCopy];

    for (id jsonName in QTBooleanNode.properties) {
        id propertyName = QTBooleanNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"strokeAlign": [_strokeAlign value],
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"isMask": _isMask ? @YES : @NO,
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"children": map(_children, λ(id x, [x JSONDictionary])),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTBooleanNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTBooleanNodeToJSON(self, encoding, error);
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
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTNodeNode fromJSONDictionary:x]));
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _style = [QTNodeTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTNodeTypeStyle fromJSONDictionary:x]));
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

@implementation QTUser
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
    return QTUserFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTUserFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTUser alloc] initWithJSONDictionary:dict] : nil;
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
    [super setValue:value forKey:QTUser.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTUser.properties.allValues] mutableCopy];

    for (id jsonName in QTUser.properties) {
        id propertyName = QTUser.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTUserToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTUserToJSON(self, encoding, error);
}
@end

@implementation QTTextNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"strokes": @"strokes",
        @"preserveRatio": @"isPreserveRatio",
        @"characters": @"characters",
        @"style": @"style",
        @"characterStyleOverrides": @"characterStyleOverrides",
        @"styleOverrideTable": @"styleOverrideTable",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTTextNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTTextNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTTextNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _style = [QTNodeTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTNodeTypeStyle fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTTextNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTTextNode.properties.allValues] mutableCopy];

    for (id jsonName in QTTextNode.properties) {
        id propertyName = QTTextNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"strokeAlign": [_strokeAlign value],
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"isMask": _isMask ? @YES : @NO,
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
        @"style": [_style JSONDictionary],
        @"styleOverrideTable": map(_styleOverrideTable, λ(id x, [x JSONDictionary])),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTTextNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTTextNodeToJSON(self, encoding, error);
}
@end

@implementation QTFrameNode
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTFrameNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTFrameNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTFrameNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _children = map(_children, λ(id x, [QTFrameNodeNode fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTFrameNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTFrameNode.properties.allValues] mutableCopy];

    for (id jsonName in QTFrameNode.properties) {
        id propertyName = QTFrameNode.properties[jsonName];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTFrameNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTFrameNodeToJSON(self, encoding, error);
}
@end

@implementation QTFrameNodeNode
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
    return dict ? [[QTFrameNodeNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTNodeNode fromJSONDictionary:x]));
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _style = [QTNodeTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTNodeTypeStyle fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTFrameNodeNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTFrameNodeNode.properties.allValues] mutableCopy];

    for (id jsonName in QTFrameNodeNode.properties) {
        id propertyName = QTFrameNodeNode.properties[jsonName];
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
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    return [self dictionaryWithValuesForKeys:QTRectangle.properties.allValues];
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
        _pattern = [QTPattern withValue:(id)_pattern];
        _color = [QTEffectColor fromJSONDictionary:(id)_color];
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
        @"type": @"type",
        @"radius": @"radius",
        @"visible": @"isVisible",
        @"color": @"color",
        @"blendMode": @"blendMode",
        @"offset": @"offset",
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
        _type = [QTEffectType withValue:(id)_type];
        _color = [QTEffectColor fromJSONDictionary:(id)_color];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _offset = [QTEffectVector fromJSONDictionary:(id)_offset];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTEffectToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTEffectToJSON(self, encoding, error);
}
@end

@implementation QTRectangleNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"strokes": @"strokes",
        @"preserveRatio": @"isPreserveRatio",
        @"cornerRadius": @"cornerRadius",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTRectangleNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTRectangleNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTRectangleNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTRectangleNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTRectangleNode.properties.allValues] mutableCopy];

    for (id jsonName in QTRectangleNode.properties) {
        id propertyName = QTRectangleNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"strokeAlign": [_strokeAlign value],
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"isMask": _isMask ? @YES : @NO,
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTRectangleNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTRectangleNodeToJSON(self, encoding, error);
}
@end

@implementation QTSliceNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"exportSettings": @"exportSettings",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTSliceNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTSliceNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTSliceNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTSliceNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTSliceNode.properties.allValues] mutableCopy];

    for (id jsonName in QTSliceNode.properties) {
        id propertyName = QTSliceNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTSliceNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTSliceNodeToJSON(self, encoding, error);
}
@end

@implementation QTStarNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"strokes": @"strokes",
        @"preserveRatio": @"isPreserveRatio",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTStarNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTStarNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTStarNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTStarNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTStarNode.properties.allValues] mutableCopy];

    for (id jsonName in QTStarNode.properties) {
        id propertyName = QTStarNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"strokeAlign": [_strokeAlign value],
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"isMask": _isMask ? @YES : @NO,
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTStarNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTStarNodeToJSON(self, encoding, error);
}
@end

@implementation QTLineNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"isVisible",
        @"type": @"type",
        @"effects": @"effects",
        @"opacity": @"opacity",
        @"strokeAlign": @"strokeAlign",
        @"strokeWeight": @"strokeWeight",
        @"fills": @"fills",
        @"absoluteBoundingBox": @"absoluteBoundingBox",
        @"transitionNodeID": @"transitionNodeID",
        @"blendMode": @"blendMode",
        @"constraints": @"constraints",
        @"isMask": @"isMask",
        @"exportSettings": @"exportSettings",
        @"strokes": @"strokes",
        @"preserveRatio": @"isPreserveRatio",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTLineNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTLineNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTLineNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTLineNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTLineNode.properties.allValues] mutableCopy];

    for (id jsonName in QTLineNode.properties) {
        id propertyName = QTLineNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"effects": map(_effects, λ(id x, [x JSONDictionary])),
        @"strokeAlign": [_strokeAlign value],
        @"fills": map(_fills, λ(id x, [x JSONDictionary])),
        @"absoluteBoundingBox": [_absoluteBoundingBox JSONDictionary],
        @"blendMode": [_blendMode value],
        @"constraints": [_constraints JSONDictionary],
        @"isMask": _isMask ? @YES : @NO,
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
        @"strokes": map(_strokes, λ(id x, [x JSONDictionary])),
        @"preserveRatio": _isPreserveRatio ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTLineNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTLineNodeToJSON(self, encoding, error);
}
@end

@implementation QTInstanceNode
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
        @"componentId": @"componentID",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTInstanceNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTInstanceNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTInstanceNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _children = map(_children, λ(id x, [QTPurpleNode fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTInstanceNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTInstanceNode.properties.allValues] mutableCopy];

    for (id jsonName in QTInstanceNode.properties) {
        id propertyName = QTInstanceNode.properties[jsonName];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTInstanceNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTInstanceNodeToJSON(self, encoding, error);
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTTypeStyleToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTTypeStyleToJSON(self, encoding, error);
}
@end

@implementation QTCanvasNode
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
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTCanvasNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTCanvasNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTCanvasNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTTentacledNode fromJSONDictionary:x]));
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTCanvasNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTCanvasNode.properties.allValues] mutableCopy];

    for (id jsonName in QTCanvasNode.properties) {
        id propertyName = QTCanvasNode.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"visible": _isVisible ? @YES : @NO,
        @"type": [_type value],
        @"children": map(_children, λ(id x, [x JSONDictionary])),
        @"backgroundColor": [_backgroundColor JSONDictionary],
        @"exportSettings": map(_exportSettings, λ(id x, [x JSONDictionary])),
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTCanvasNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTCanvasNodeToJSON(self, encoding, error);
}
@end

@implementation QTTentacledNode
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
    return dict ? [[QTTentacledNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTNodeNode fromJSONDictionary:x]));
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _style = [QTNodeTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTNodeTypeStyle fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTTentacledNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTTentacledNode.properties.allValues] mutableCopy];

    for (id jsonName in QTTentacledNode.properties) {
        id propertyName = QTTentacledNode.properties[jsonName];
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
        _format = [QTFormat withValue:(id)_format];
        _constraint = [QTExportSettingConstraint fromJSONDictionary:(id)_constraint];
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTExportSettingToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTExportSettingToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTDocumentNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTDocumentNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTDocumentNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTStickyNode fromJSONDictionary:x]));
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTDocumentNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTDocumentNodeToJSON(self, encoding, error);
}
@end

@implementation QTStickyNode
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
    return dict ? [[QTStickyNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTNodeNode fromJSONDictionary:x]));
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _strokeAlign = [QTStrokeAlign withValue:(id)_strokeAlign];
        _fills = map(_fills, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _strokes = map(_strokes, λ(id x, [QTPaintElement fromJSONDictionary:x]));
        _style = [QTNodeTypeStyle fromJSONDictionary:(id)_style];
        _styleOverrideTable = map(_styleOverrideTable, λ(id x, [QTNodeTypeStyle fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTStickyNode.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTStickyNode.properties.allValues] mutableCopy];

    for (id jsonName in QTStickyNode.properties) {
        id propertyName = QTStickyNode.properties[jsonName];
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
        @"type": [_type value],
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
        @"type": @"type",
        @"visible": @"isVisible",
        @"opacity": @"opacity",
        @"color": @"color",
        @"gradientHandlePositions": @"gradientHandlePositions",
        @"gradientStops": @"gradientStops",
        @"scaleMode": @"scaleMode",
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
        _type = [QTPaintType withValue:(id)_type];
        _color = [QTEffectColor fromJSONDictionary:(id)_color];
        _gradientHandlePositions = map(_gradientHandlePositions, λ(id x, [QTEffectVector fromJSONDictionary:x]));
        _gradientStops = map(_gradientStops, λ(id x, [QTColorStopElement fromJSONDictionary:x]));
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTPaintToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTPaintToJSON(self, encoding, error);
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

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTComponentNodeFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTComponentNodeFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTComponentNode alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [QTRegularPolygonNodeType withValue:(id)_type];
        _effects = map(_effects, λ(id x, [QTEffectElement fromJSONDictionary:x]));
        _layoutGrids = map(_layoutGrids, λ(id x, [QTLayoutGridElement fromJSONDictionary:x]));
        _absoluteBoundingBox = [QTRegularPolygonNodeRectangle fromJSONDictionary:(id)_absoluteBoundingBox];
        _blendMode = [QTBlendMode withValue:(id)_blendMode];
        _backgroundColor = [QTEffectColor fromJSONDictionary:(id)_backgroundColor];
        _constraints = [QTRegularPolygonNodeLayoutConstraint fromJSONDictionary:(id)_constraints];
        _exportSettings = map(_exportSettings, λ(id x, [QTExportSettingElement fromJSONDictionary:x]));
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

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTComponentNodeToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTComponentNodeToJSON(self, encoding, error);
}
@end

@implementation QTComment
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"file_key": @"fileKey",
        @"parent_id": @"parentID",
        @"user": @"user",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return QTCommentFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTCommentFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[QTComment alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _user = [QTCommentUser fromJSONDictionary:(id)_user];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:QTComment.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTComment.properties.allValues] mutableCopy];

    for (id jsonName in QTComment.properties) {
        id propertyName = QTComment.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"user": [_user JSONDictionary],
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return QTCommentToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return QTCommentToJSON(self, encoding, error);
}
@end

@implementation QTCommentUser
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
    return dict ? [[QTCommentUser alloc] initWithJSONDictionary:dict] : nil;
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
    [super setValue:value forKey:QTCommentUser.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:QTCommentUser.properties.allValues] mutableCopy];

    for (id jsonName in QTCommentUser.properties) {
        id propertyName = QTCommentUser.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}
@end

NS_ASSUME_NONNULL_END
