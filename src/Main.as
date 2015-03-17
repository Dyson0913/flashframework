package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import org.spicefactory.parsley.context.ContextBuilder;
	import org.spicefactory.parsley.asconfig.ActionScriptConfig;
	
	import com.hexagonstar.util.debug.Debug;
	
	
	/**
	 * ...
	 * @author hhg
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			//var builder:ContextBuilder  = ContextBuilder.newSetup()
			//.viewRoot(stage)
			//.newBuilder();
			//
			//builder.config(ActionScriptConfig.forClasses("appConfig"));
			//builder.object(this);
			//builder.build();
			
			Debug.monitor(stage);
			Debug.trace("welcome to alcon!");
			
		}
		
	}
	
}