package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	/**
	 * ...
	 * @author Phantom & Lolo
	 */
	public class Player extends Entity 
	{
		[Embed(source = "../Assets/Link/LinkFrontBlue.gif")] private const PLAYER_GRAPHIC:Class;
		private var image:Image;
		private const velocity:int = 100;
		
		public function Player() 
		{
			image = new Image(PLAYER_GRAPHIC);
			graphic = image;
			setHitbox(16, 16, 0, 0);
			type = "player";
		}
		
		override public function update():void 
		{
			
			handleControls();
			
			if (collide("enemy", x , y))
			{
				image.color = 0xFF0000;
			}
			else
			{
				image.color = 0xFFFFFF;
			}
			
			super.update();
		}
		
		private function handleControls():void
		{
			// This could be in a external class
			// could return a bool for each control that we want to check
			// and do what we want.
			if (Input.check(Key.RIGHT))
			{
				x += velocity * FP.elapsed;
			}
			if (Input.check(Key.LEFT))
			{
				x -= velocity * FP.elapsed;
			}
			if (Input.check(Key.UP))
			{
				y -= velocity * FP.elapsed;
			}
			if (Input.check(Key.DOWN))
			{
				y += velocity * FP.elapsed;
			}
			
		}
	}

}