package ;

import mmvc.api.IViewContainer;
import starling.events.Event;
import starling.core.Starling;
import flash.display.Sprite;
import bootstrap.RootContext;
import bootstrap.RootView;

class Main extends Sprite {
    public function new() {
        super();
    }


    public static function rootCreated(e:Event):Void {
        var starling = cast(e.target, Starling);
        starling.removeEventListener(Event.ROOT_CREATED,rootCreated);
        new RootContext(cast (starling.root,IViewContainer));

    }
    public static function main():Void {
        var starling:Starling = new Starling(RootView,  flash.Lib.current.stage);
        starling.addEventListener(Event.ROOT_CREATED,rootCreated);
        starling.showStats = true;
        starling.start();

    }
}
