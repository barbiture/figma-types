#!/bin/bash

set -xe

QUICKTYPE="quicktype --src-lang schema schema.json --add-schema-top-level /definitions/"

$QUICKTYPE -o swift/Figma.swift
$QUICKTYPE -o swift-alamofire/Figma.swift --alamofire

$QUICKTYPE -o csharp/Figma.cs
$QUICKTYPE -o go/figma.go
$QUICKTYPE -o rust/figma.rs
$QUICKTYPE -o cpp/figma.cpp
#$QUICKTYPE -o objective-c/FGFigma.m --class-prefix FG
$QUICKTYPE -o java/Figma.java
$QUICKTYPE -o typescript/figma.ts
$QUICKTYPE -o javascript/figma.js
$QUICKTYPE -l flow -o flow/figma.js
$QUICKTYPE -o elm/figma.elm