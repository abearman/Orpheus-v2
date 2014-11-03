Orpheus grokking made easier:

All useful code is under /src folder.

It's written in Coffeescript, which is a thin Pythonic syntax wrapper around Javascript, and MUST BE COMPILED into JS in
order to be tested. READ + INSTALL (skim): coffeescript.org

The project is organized in bastardized 'packages' using a couple of global namespace Javascript objects as 'package holders'.
The list of packages is held in /src/namespaces.coffee

Cocos2D is organized in a rendering hierarchy a lot like Flash. Orpheus organization reflects this.

Basically, you display one 'scene' at a time. Each scene has children, 'layers', and layers have 'nodes' as children, and
at the bottom of the hierarchy are 'sprites' and 'drawNodes'. Transformations applied to a parent are applied to the children,
all coordinates of .x and .y are in relative space off the parent, unless explicitly transformed.

LEARN MORE (skim): http://www.cocos2d-x.org/wiki/Getting_Started_Cocos2d-js
Especially read first 4 parts of "Parkour Game Tutorials of Cocos2d-JS v3.x".

The code that is loaded first by the project (after the loader) is "main.js". That calls into /src/scenes/CompositionScene.coffee,
which then creates three layers, and attaches them to itself:
    - /src/layers/ConnectablesLayer.coffee
        This is the layer where all the connectable dots live, also owns the delete button
    - /src/layers/FlowerLayer.coffee
        This is the layer where the two analog stick buttons live
    - /src/layers/MusicLayer.coffee
        This is the music rendering layer (no visuals yet, just sound), also owns the play button

There's a bunch of helper 'classes' in /src/guiElements and /src/shapes. The /src/shapes classes basically just load images,
and render them in sprites with the correct scaling, to make it convenient for the higher level classes to not handle that.
The /src/guiElements classes create /src/shapes/... stuff to render themselves, and then add callbacks for taking user
input. These callbacks are connected to game logic at the 'layer' level, and the layer logic is connected together at the
scene level.
