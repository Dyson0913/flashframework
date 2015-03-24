package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import org.spicefactory.parsley.core.context.Context;
	
	import org.spicefactory.parsley.core.events.ContextEvent;
	import org.spicefactory.parsley.asconfig.*;
	
	import com.hexagonstar.util.debug.Debug;
	import View.componentLib.util.utilFun;
	
	
	/**
	 * ...
	 * @author hhg
	 */
	public class Main extends Sprite 
	{
		private var _context:Context;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			Debug.monitor(stage);
			utilFun.Log("welcome to alcon");
			
			_context  = ActionScriptContextBuilder.build(appConfig, this);
			
			//託管類別
			_context.addEventListener(ContextEvent.CONFIGURED, ConfigOK);
			_context.addEventListener(ContextEvent.INITIALIZED, InitOK);
			_context.addEventListener(ContextEvent.DESTROYED, DestoryOK);
			
			
			//addChild(_context.getObjectByType(MyMain) as MyMain);
			//addChild(_context.getObjectByType(Mysecond) as Mysecond);
			
			
			//var Enter:MyMain = _context.getObject("Enter") as MyMain;
			//Enter.FirstLoad();
		}
		
		
		
		
		
		public function kickstar():void
		{
			Debug.trace("Enter = ");
		}
		
		private function DestoryOK(e:ContextEvent):void 
		{
			Debug.trace("destoryOK");
		}
		
		private function InitOK(e:ContextEvent):void 
		{
			Debug.trace("InitOK");
		}
		
		private function ConfigOK(e:ContextEvent):void 
		{
			Debug.trace("ConfigOK");
		}
		
	
		
		
	}
	
}