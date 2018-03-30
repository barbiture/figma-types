# Figma Platform Types

```shell
$ npm install
$ npm run quicktype
```

## Type Definitions

Figma Platform types are declared in TypeScript. For example, the `Color` type defined in `types/types.ts`:

```ts
/** An RGBA color */
export interface Color {
  r: number;
  g: number;
  b: number;
  a: number;
}
```

A JSON schema is generated from these TypeScript declarations, then `quicktype` is used to generate the same types, with marhsaling code, in many languages:

### Swift

```swift
/// An RGBA color
struct Color: Codable {
    let a: Double
    let b: Double
    let g: Double
    let r: Double
}
```

### Objective-C

```objc
/// An RGBA color
@interface QTColor : NSObject
@property (nonatomic, nullable, strong) NSNumber *a;
@property (nonatomic, nullable, strong) NSNumber *b;
@property (nonatomic, nullable, strong) NSNumber *g;
@property (nonatomic, nullable, strong) NSNumber *r;
@end
```

### Flow

```flow
/**
 * An RGBA color
 */
export type Color = {
    a: number;
    b: number;
    g: number;
    r: number;
};
```

### C++

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

### Rust

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
