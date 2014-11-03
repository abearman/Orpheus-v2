@layers.BackgroundLayer = cc.Layer.extend(
  ctor: ->
    @_super()
    @init()

  init: ->
    @_super()
    winsize = cc.director.getWinSize()

    #create the background image and position it at the center of screen
    centerPos = cc.p(winsize.width / 2, winsize.height / 2)
    spriteBG = new cc.Sprite(res.PlayBG_png)
    spriteBG.setPosition(centerPos)
    @addChild(spriteBG)
)