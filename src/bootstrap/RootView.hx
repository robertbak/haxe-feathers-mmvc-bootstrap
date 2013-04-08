package bootstrap;
import feathers.controls.Button;
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
import themes.CustomTheme;
class RootView extends Sprite, implements IViewContainer {

    public var viewAdded:Dynamic -> Void;
    public var viewRemoved:Dynamic -> Void;



    private var theme:CustomTheme;

    public function new() {
        super();
        this.addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
    }


    public function addedToStageHandler(e:Dynamic):Void {
          }

    public function createViews():Void {

        // Set the default global theme
        theme = new CustomTheme(this.stage);

        var button:Button = new Button();
        // use a custom theme for this button
        button.nameList.add(CustomTheme.EXAMPLE_BUTTON_STYLE);
        button.label = "Hello world!";
        button.x = 200;
        button.y = 150;
        this.addChild(button);
    }

    public function isAdded(view:Dynamic):Bool {
        return true;
    }
}
