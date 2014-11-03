@MenuLayer = cc.Layer.extend({
  ctor: ->

    #1. call super class's ctor function
    @_super()

  init: ->

    #call super class's super function
    @_super()

    #2. get the screen size of your game canvas
    winsize = cc.director.getWinSize()

    #3. calculate the center point
    centerpos = cc.p(winsize.width / 2, winsize.height / 2)

    #4. create a background image and set it's position at the center of the screen
    spritebg = new cc.Sprite(res.helloBG_png)
    spritebg.setPosition centerpos
    @addChild spritebg

    #5.
    cc.MenuItemFont.setFontSize 60

    #6.create a menu and assign onPlay event callback to it
    # normal state image
    #select state image
    menuItemPlay = cc.MenuItemSprite.create(new cc.Sprite(res.start_n_png), new cc.Sprite(res.start_s_png), @onPlay,
      this)
    menu = new cc.Menu(menuItemPlay) #7. create the menu
    menu.setPosition centerpos
    @addChild menu

  onPlay: ->
    cc.log("==onplay clicked")
    cc.director.runScene new PlayScene()
})

@MenuScene = cc.Scene.extend({
  onEnter: ->
    @_super()
    layer = new MenuLayer()
    layer.init()
    @addChild(layer)
})