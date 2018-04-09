#!/bin/bash

set -xe

quicktype types/*.ts -o swift/Figma.swift --access-level public
quicktype types/*.ts -o swift-alamofire/Figma.swift --alamofire --access-level public
quicktype types/*.ts -o csharp/Figma.cs
quicktype types/*.ts -o go/figma.go
quicktype types/*.ts -o rust/figma.rs
quicktype types/*.ts -o cpp/figma.cpp
# quicktype types/*.ts -o objective-c/FGFigma.m --class-prefix FG
quicktype types/*.ts -o java/Figma.java
quicktype types/*.ts -o typescript/figma.ts
quicktype types/*.ts -o javascript/figma.js
quicktype types/*.ts -l flow -o flow/figma.js
quicktype types/*.ts -o elm/figma.elm