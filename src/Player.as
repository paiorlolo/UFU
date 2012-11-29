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
		
		public function Player() 
		{
			image = new Image(PLAYER_GRAPHIC);
			graphic = image;
			setHitbox(16, 16, 0, 0);
			type = "player";
		}
		
		override public function update():void 
		{
			if (Input.check(Key.RIGHT))
			{
				x += 100 * FP.elapsed;
			}
			if (Input.check(Key.LEFT))
			{
				x -= 100 * FP.elapsed;
			}
			if (Input.check(Key.UP))
			{
				y -= 100 * FP.elapsed;
			}
			if (Input.check(Key.DOWN))
			{
				y += 100 * FP.elapsed;
			}
			
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
	}

}