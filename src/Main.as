package 
{	
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Phantom & Lolo
	 */
	public class Main extends  Engine
	{
		
		public function Main():void 
		{
			GameConfiguration.setGameWidth(480);
			GameConfiguration.setGameHeight(640);
			super(GameConfiguration.getGameHeight(), GameConfiguration.getGameWidth());
			//FP.screen.scale = 2;
			//FP.console.enable();			
		}
		
		override public function init():void 
		{
			trace("Main - Init()");
			FP.world = new GameWorld();
			super.init();
		}
		
		
	}
	
}