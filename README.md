# ejs-build

[![GitTip](http://img.shields.io/gittip/alexgorbatchev.svg)](https://www.gittip.com/alexgorbatchev/)
[![Dependency status](https://david-dm.org/alexgorbatchev/ejs-build.svg)](https://david-dm.org/alexgorbatchev/ejs-build)
[![devDependency Status](https://david-dm.org/alexgorbatchev/ejs-build/dev-status.svg)](https://david-dm.org/alexgorbatchev/ejs-build#info=devDependencies)
[![Build Status](https://secure.travis-ci.org/alexgorbatchev/ejs-build.svg?branch=master)](https://travis-ci.org/alexgorbatchev/ejs-build)

[![NPM](https://nodei.co/npm/ejs-build.svg)](https://npmjs.org/package/ejs-build)

A helper utility that compiles a single [EJS](https://github.com/visionmedia/ejs) template using specified module or file. The template is loaded via STDIN and compiled results are sent back to STDOUT. This is useful for dynamically building JavaScript files using some sort of settings module.

## Installation

    npm install ejs-build

## Usage

    ejs-build ./context.json < ./template.ejs
    ejs-build settings < ./template.ejs
    ejs-build ./config.js < ./template.ejs
    ejs-build ./config.coffee < ./template.ejs

## CoffeeScript Support

`ejs-build` will try to `require('coffee-script/register')` from the `cwd`, eg it will try to use the CoffeeScript module that you might have installed in the same folder from which `ejs-build` is executed.

## Testing

    npm test

# License

The MIT License (MIT)

Copyright (c) 2014 Alex Gorbatchev

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
