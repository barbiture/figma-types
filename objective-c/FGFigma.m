#import "FGFigma.h"

#define λ(decl, expr) (^(decl) { return (expr); })

static id NSNullify(id _Nullable x) {
    return (x == nil || x == NSNull.null) ? NSNull.null : x;
}

NS_ASSUME_NONNULL_BEGIN

@interface QTNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTNodeColor (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTNodeNode (JSONConversion)
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

@interface QTUser (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTCanvas (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTPurpleNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTDocument (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTFluffyNode (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface QTConstraint (JSONConversion)
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

@implementation QTNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"visible",
        @"type": @"type",
        @"children": @"children",
        @"backgroundColor": @"backgroundColor",
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
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTNodeNode fromJSONDictionary:x]));
        _backgroundColor = [QTNodeColor fromJSONDictionary:(id)_backgroundColor];
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
        @"type": NSNullify([_type value]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
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

@implementation QTNodeColor
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
    return dict ? [[QTNodeColor alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:QTNodeColor.properties.allValues];
}
@end

@implementation QTNodeNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"visible",
        @"type": @"type",
        @"children": @"children",
        @"backgroundColor": @"backgroundColor",
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
        _backgroundColor = [QTNodeColor fromJSONDictionary:(id)_backgroundColor];
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
        @"type": NSNullify([_type value]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
    }];

    return dict;
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
        @"visible": @"visible",
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
        _type = [QTNodeType withValue:(id)_type];
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
        @"type": NSNullify([_type value]),
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

@implementation QTCanvas
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"visible",
        @"type": @"type",
        @"children": @"children",
        @"backgroundColor": @"backgroundColor",
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
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTPurpleNode fromJSONDictionary:x]));
        _backgroundColor = [QTNodeColor fromJSONDictionary:(id)_backgroundColor];
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
        @"type": NSNullify([_type value]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
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

@implementation QTPurpleNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"visible",
        @"type": @"type",
        @"children": @"children",
        @"backgroundColor": @"backgroundColor",
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
        _backgroundColor = [QTNodeColor fromJSONDictionary:(id)_backgroundColor];
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
        @"type": NSNullify([_type value]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
    }];

    return dict;
}
@end

@implementation QTDocument
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"visible",
        @"type": @"type",
        @"children": @"children",
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
        _type = [QTNodeType withValue:(id)_type];
        _children = map(_children, λ(id x, [QTFluffyNode fromJSONDictionary:x]));
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
        @"type": NSNullify([_type value]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
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

@implementation QTFluffyNode
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"visible": @"visible",
        @"type": @"type",
        @"children": @"children",
        @"backgroundColor": @"backgroundColor",
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
        _backgroundColor = [QTNodeColor fromJSONDictionary:(id)_backgroundColor];
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
        @"type": NSNullify([_type value]),
        @"children": NSNullify(map(_children, λ(id x, [x JSONDictionary]))),
        @"backgroundColor": NSNullify([_backgroundColor JSONDictionary]),
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
