#!/bin/bash

set -xe

# Generate a JSON schema from TypeScript
quicktype types/*.ts -l schema -o types/schema.json

# Generate types from the generated schema
# (We have to break this into separate steps to limit which types are top-level)
QUICKTYPE="quicktype --src-lang schema types/toplevels.json --add-schema-top-level /definitions/"

$QUICKTYPE -o swift/Figma.swift
$QUICKTYPE -o swift-alamofire/Figma.swift --alamofire

$QUICKTYPE -o csharp/Figma.cs
$QUICKTYPE -o go/figma.go
$QUICKTYPE -o rust/figma.rs
$QUICKTYPE -o cpp/figma.cpp
$QUICKTYPE -o objective-c/FGFigma.m --class-prefix FG
$QUICKTYPE -o java/Figma.java
$QUICKTYPE -o typescript/figma.ts
$QUICKTYPE -o javascript/figma.js
$QUICKTYPE -l flow -o flow/figma.js
$QUICKTYPE -o elm/figma.elm