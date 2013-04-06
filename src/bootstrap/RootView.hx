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

    public function new() {
        super();
        this.addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);

      


    }

  

    public function addedToStageHandler(e:Dynamic):Void {
        trace("Hello World");
    }

    public function isAdded(view:Dynamic):Bool {
        return true;
    }
}
