[giraffe-examples](https://github.com/betajaen/giraffe-examples) - Examples for Giraffe a minimal 2D drawing framework for Unity
=================================================================================================================================

What on Earth?
--------------

This is a collection of examples and sample components to be used with [giraffe](https://github.com/betajaen/giraffe).


Alright, what is it licenced under.
-----------------------------------

Giraffe Copyright (c) 2014 Robin Southern

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


The Examples
------------

## [1 - Rectangles](https://github.com/betajaen/giraffe-examples/tree/master/1-Rectangles)

![Rectangles](https://raw.githubusercontent.com/betajaen/giraffe-examples/master//1-Rectangles/Example.png)


Rectangles just shows a random number of rectangles on the screen, demonstrating:

* An Atlas 'Rectangles'.  Which was created using the Box, Box1, Box2, Box3 and Box4 textures.
* Setting up the Giraffe Singleton and a Layer, using the Rectangles Atlas.
* Creation of many randomised boxes on the screen using Giraffe Layer.Begin/GiraffeLayer.End.

## [2 - Tilesets](https://github.com/betajaen/giraffe-examples/tree/master/2-Tilesets)

![Tilesets](https://raw.githubusercontent.com/betajaen/giraffe-examples/master//2-Tilesets/Example.png)

Tilesets shows of the Grid based Tileset importer for the Atlas, and showing that tileset as from a pre-made map, it , demonstrates:

* Importing a grid based tileset into an Atlas
* Turning off the white texture, border and padding options of the Atlas
* Loading a map created by Tiled, via a simple importer
* Showing that map on the screen

## [3 - Updates and Transforms](https://github.com/betajaen/giraffe-examples/tree/master/3-UpdatesAndTransforms)

![Updates and Transforms](https://raw.githubusercontent.com/betajaen/giraffe-examples/master//3-UpdatesAndTransforms/Example.png)

This is a demonstration  of updating the layer each frame, and rotating and scaling the sprite using the Matrix2D struct, it shows:

* Frame-by-frame updating
* Using the TRS (Translate-Rotate-Scale) function of Matrix2D to generate a matrix for a rotatable sprite.

## [4 - Text Rendering](https://github.com/betajaen/giraffe-examples/tree/master/4-TextRendering)

![Text Rendering](https://raw.githubusercontent.com/betajaen/giraffe-examples/master//4-TextRendering/Example.png)

This is a demonstration of rendering text, by using the optional GorillaFont component. In this example, it uses a bitmap font to draw text on the screen. In particular it demonstrates;

* GiraffeFont usage
* Getting quad estimation of text, then drawing it to a layer
* Switching colours
* Using the 'Giraffe/White' sprite for drawing solids of colour.
* Frame-by-frame updating


Artwork
-------

Some of the artwork was created by Hyptosis:

http://www.newgrounds.com/art/view/hyptosis/tile-art-batch-1

