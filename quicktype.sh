#!/bin/bash

set -xe

SCHEMA=figma-schema.json
QUICKTYPE="quicktype $SCHEMA -s schema"

$QUICKTYPE -o src/csharp/Figma.cs
$QUICKTYPE -o src/go/figma.go
$QUICKTYPE -o src/rust/figma.rs
$QUICKTYPE -o src/cpp/figma.cpp
$QUICKTYPE -o src/objective-c/FGFigma.m
$QUICKTYPE -o src/java/Figma.java
$QUICKTYPE -o src/typescript/figma.ts
$QUICKTYPE -o src/javascript/figma.js
$QUICKTYPE -o src/flow/figma.flow
$QUICKTYPE -o src/swift/Figma.swift
$QUICKTYPE -o src/elm/figma.elm