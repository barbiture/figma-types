# Figma Platform Types

Figma Platform types (e.g. documents, nodes, API responses) are defined in TypeScript in [`figma.ts`](figma.ts). From this file, `quicktype` generates types and JSON marshaling code in C#, Go, Rust, C++, Objective-C, Java, TypeScript, JavaScript, Flow, Swift, Elm, and Ruby.

For example, the `Color` type defined in `figma.ts`:

```ts
/** An RGBA color */
export interface Color {
  r: number;
  g: number;
  b: number;
  a: number;
}
```

Produces a Codable struct in Swift:

```swift
/// An RGBA color
struct Color: Codable {
    let a: Double
    let b: Double
    let g: Double
    let r: Double
}
```

An Objective-C interface, implementation, and JSON marshaling via `NSJSONSerialization`:

```objc
/// An RGBA color
@interface FGColor : NSObject
@property (nonatomic, assign) double a;
@property (nonatomic, assign) double b;
@property (nonatomic, assign) double g;
@property (nonatomic, assign) double r;
@end

@implementation FGColor
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{ @"a": @"a", @"b": @"b", @"g": @"g", @"r": @"r", };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[FGColor alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) { [self setValuesForKeysWithDictionary:dict]; }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    return [self dictionaryWithValuesForKeys:FGColor.properties.allValues];
}
@end
```

Flow type annotations:

```js
/**
 * An RGBA color
 */
export type Color = {
  a: number,
  b: number,
  g: number,
  r: number
};
```

C++ structs:

```cpp
/**
 * An RGBA color
 */
struct Color {
    double a;
    double b;
    double g;
    double r;
};
```

Rust structs with Serge annotations:

```rust
/// An RGBA color
#[derive(Serialize, Deserialize)]
pub struct Color {
    #[serde(rename = "a")]
    a: f64,

    #[serde(rename = "b")]
    b: f64,

    #[serde(rename = "g")]
    g: f64,

    #[serde(rename = "r")]
    r: f64,
}
```

Etcetera.

## Development

```shell
$ npm install
$ npm run build
$ npm test
```
