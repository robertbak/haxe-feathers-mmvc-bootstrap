package ;

import feathers.system.DeviceCapabilities;
import flash.display.StageScaleMode;
import flash.display.StageAlign;
import mmvc.api.IViewContainer;
import starling.events.Event;
import starling.core.Starling;
import flash.display.Sprite;
import bootstrap.RootContext;
import bootstrap.RootView;

class Main extends Sprite {
    public function new() {
        super();

        if (this.stage != null) {
            this.stage.align = StageAlign.TOP_LEFT;
            this.stage.scaleMode = StageScaleMode.NO_SCALE;
        }

        // Needs to be set before starting starling
        DeviceCapabilities.dpi = 326;
        DeviceCapabilities.screenPixelWidth = 960;
        DeviceCapabilities.screenPixelHeight = 640;

        var starling:Starling = new Starling(RootView, flash.Lib.current.stage);
        starling.addEventListener(Event.ROOT_CREATED, rootCreated);
        starling.showStats = true;
        starling.start();

    }


    public function rootCreated(e:Event):Void {
        var starling = cast(e.target, Starling);
        starling.removeEventListener(Event.ROOT_CREATED, rootCreated);
        new RootContext(cast (starling.root, IViewContainer));



    }

    public static function main():Void {
        new Main();
    }
}
