# Figma Platform Types

Figma Platform types (e.g. documents, nodes, API responses) are defined in TypeScript in [`figma.ts`](figma.ts). From this file, `quicktype` generates types and JSON marshaling code in C#, Go, Rust, C++, Objective-C, Java, TypeScript, JavaScript, Flow, Swift, Elm, and Ruby.

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
@interface FGColor : NSObject
@property (nonatomic, assign) double a;
@property (nonatomic, assign) double b;
@property (nonatomic, assign) double g;
@property (nonatomic, assign) double r;
@end
```

### Flow

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

## Development

```shell
$ npm install
$ npm run build
$ npm test
```
