package  
{
	import com.hexagonstar.util.debug.Debug;
	import org.spicefactory.parsley.asconfig.processor.ActionScriptConfigurationProcessor;
	import org.spicefactory.parsley.core.registry.ObjectDefinition;
	/**
	 * ...
	 * @author hhg
	 */
	public class appConfig 
	{
		//要unit test 就切enter來達成
		//singleton="false"
		//[ObjectDefinition(id="Enter")]
		//public var _myMain:MainView = new MainView();
		
		//public var _mySeond:secondView = new secondView();
		
		public function appConfig() 
		{
			
			
			Debug.trace("my init");
		}
		
	}

}