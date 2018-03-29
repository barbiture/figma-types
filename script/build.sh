#!/bin/bash

quicktype figma-schema.json -s schema -o src/csharp/Figma.cs
quicktype figma-schema.json -s schema -o src/go/figma.go
quicktype figma-schema.json -s schema -o src/rust/figma.rs
quicktype figma-schema.json -s schema -o src/cpp/figma.cpp
quicktype figma-schema.json -s schema -o src/objective-c/FGFigma.m
quicktype figma-schema.json -s schema -o src/java/Figma.java
quicktype figma-schema.json -s schema -o src/typescript/figma.ts
quicktype figma-schema.json -s schema -o src/javascript/figma.js
quicktype figma-schema.json -s schema -o src/flow/figma.flow
quicktype figma-schema.json -s schema -o src/swift/Figma.swift
quicktype figma-schema.json -s schema -o src/elm/figma.elm