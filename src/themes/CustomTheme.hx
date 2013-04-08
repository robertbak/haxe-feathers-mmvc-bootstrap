package themes;

import feathers.themes.MetalWorksMobileTheme;
import starling.display.Image;
import feathers.controls.Button;
import flash.text.TextFormat;
import starling.display.DisplayObjectContainer;
import feathers.themes.MetalWorksMobileTheme;


// Here you can extend the default theme
// or extend a different one
class CustomTheme extends MetalWorksMobileTheme {

    public static var EXAMPLE_BUTTON_STYLE:String = "example_button_style";

    public function new(root:DisplayObjectContainer, scaleToDPI:Bool = true) {
        super(root, scaleToDPI);
    }

    override function initialize(root:DisplayObjectContainer) {
        super.initialize(root);
        // set new initializers here
        this.setInitializerForClass( Button, exampleButtonStyleInitialier, EXAMPLE_BUTTON_STYLE ) ;
    }

    private function exampleButtonStyleInitialier( button:Button )
    {
        button.defaultSkin = new Image( atlas.getTexture("button-up-skin") );
        button.downSkin = new Image( atlas.getTexture("button-down-skin"));
        button.hoverSkin = new Image( atlas.getTexture("button-down-skin") );

        button.defaultLabelProperties.textFormat = new TextFormat('Consolas', 20 * scale, MetalWorksMobileTheme.DARK_TEXT_COLOR, true);
        button.hoverLabelProperties.textFormat   = new TextFormat('Consolas', 20 * scale, MetalWorksMobileTheme.LIGHT_TEXT_COLOR, true);
        button.disabledLabelProperties.textFormat = this.smallUIDisabledTextFormat;
        button.selectedDisabledLabelProperties.textFormat = this.smallUIDisabledTextFormat;
    }
}