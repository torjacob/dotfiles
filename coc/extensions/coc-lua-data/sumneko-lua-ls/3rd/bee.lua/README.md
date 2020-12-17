# bee.lua

Lua runtime and toolset

[![Build Status](https://github.com/actboy168/bee.lua/workflows/build/badge.svg)](https://github.com/actboy168/bee.lua/actions?workflow=build)

## Build

* install ninja
* ninja -f ninja/msvc.ninja
* ninja -f ninja/mingw.ninja
* ninja -f ninja/linux.ninja
* ninja -f ninja/macos.ninja

## Lua patch

* Enable ansi escape code on windows
* String encoding on windows using utf8
* Remove randomness when traversing the table
* Add error hook (for debugger)
* Add resume/yield hook (for debugger)

## TODO

* High-level network library
