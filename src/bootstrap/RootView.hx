package bootstrap;
import starling.filters.BlurFilter;
import starling.core.Starling;
import flash.geom.Rectangle;
import starling.events.ResizeEvent;
import feathers.themes.MetalWorksMobileTheme;
import feathers.core.FeathersControl;
import feathers.events.FeathersEventType;
import flash.events.Event;
import feathers.controls.ImageLoader;
import starling.display.Sprite;
import mmvc.api.IViewContainer;
class RootView extends Sprite, implements IViewContainer {

    public var viewAdded:Dynamic -> Void;
    public var viewRemoved:Dynamic -> Void;


    var loader:ImageLoader;

    public function new() {
        super();
        this.addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);

        // Make sure it resizes nicely


    }

    public function onResize(e:ResizeEvent):Void {
        var viewPortRectangle:Rectangle = new Rectangle();
        viewPortRectangle.width = e.width; viewPortRectangle.height = e.height;

        // resize the viewport:

        Starling.current.viewPort = viewPortRectangle;

        // assign the new stage width and height:
        stage.stageWidth = e.width;
        stage.stageHeight = e.height;
    }

    public function addedToStageHandler(e:Dynamic):Void {
        // var theme = new MetalWorksMobileTheme(this.stage);
        stage.addEventListener(ResizeEvent.RESIZE, onResize);
        loader = new ImageLoader();
        addChild(loader);
        this.loader.source = "img/bg.jpg";
        var dropShadow:BlurFilter = BlurFilter.createDropShadow();
        loader.filter = dropShadow;
        loader.maintainAspectRatio = false;

    }

    public function isAdded(view:Dynamic):Bool {
        return true;
    }
}
