package bootstrap;
import feathers.system.DeviceCapabilities;
import flash.errors.Error;
import flash.events.UncaughtErrorEvent;
import flash.events.Event;
import flash.system.LoaderContext;
import flash.net.URLRequest;
import flash.display.Loader;
import mmvc.api.IViewContainer;
class RootContext  extends mmvc.impl.Context {
    public function new(?contextView:IViewContainer=null)
    {
        super(contextView);
    }



    /**
	Overrides startup to configure all context commands, models and mediators
	@see mmvc.impl.Context
	*/
    override public function startup()
    {
        mediatorMap.mapView(RootView,RootViewMediator);
    }




    /**
	Overrides shutdown to remove/cleanup mappings
	@see mmvc.impl.Context
	*/
    override public function shutdown()
    {

    }
}
