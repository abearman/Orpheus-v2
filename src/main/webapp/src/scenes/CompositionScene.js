// Generated by CoffeeScript 1.8.0
(function() {
  this.scenes.CompositionScene = cc.Scene.extend({
    onEnter: function() {
      this._super();
      this.addChild(new layers.BackgroundLayer());
      this.addChild(new layers.AnimationLayer());
      return this.addChild(new layers.StatusLayer());
    }
  });

}).call(this);
