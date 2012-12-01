package  
{
	import flash.display.BitmapData;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Phantom & Lolo
	 */
	public class GameWorld extends World 
	{
		private var square:Entity;
		[Embed(source = "../Assets/Levels/TestLevel.oel", mimeType = "application/octet-stream")] private const LEVEL:Class;
		
		public function GameWorld() 
		{
			trace("GameWorld - GameWorld()");
		}
		
		override public function begin():void 
		{
			var image:Image = new Image(new BitmapData(16, 16, true, 0xFFFFFFFF));
			add(new Level(LEVEL));
			add(new Player);
			super.begin();
		}
		
		override public function update():void 
		{
			super.update();
		}
		
	}

}