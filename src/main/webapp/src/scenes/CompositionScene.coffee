@scenes.CompositionScene = cc.Scene.extend({
  onEnter: () ->
    @._super()

    # add three layer in the right order
    @addChild(new layers.BackgroundLayer())
    @addChild(new layers.AnimationLayer())
    @addChild(new layers.StatusLayer())

});