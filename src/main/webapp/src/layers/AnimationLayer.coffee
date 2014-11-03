@layers.AnimationLayer = cc.Layer.extend(
  ctor: ->
    @_super()
    @init()

  init: ->
    @_super()

    #create the hero sprite
    spriteRunner = new cc.Sprite(res.runner_png)
    spriteRunner.attr
      x: 80
      y: 85

    #create the move action
    actionTo = new cc.MoveTo(2, cc.p(300, 85))
    spriteRunner.runAction new cc.Sequence(actionTo)
    @addChild spriteRunner
)