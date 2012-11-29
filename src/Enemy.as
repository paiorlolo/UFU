package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Phantom & Lolo
	 */
	public class Enemy extends Entity
	{
		[Embed(source = "../Assets/Enemies/Darknut.gif")] private const ENEMY_GRAPHIC:Class;
			
		public function Enemy() 
		{
			graphic = new Image(ENEMY_GRAPHIC);
			setHitbox(16, 16, 0, 0);
			x = FP.rand(FP.screen.width);
			y = FP.rand(FP.screen.height);
			type = "enemy";
		}
		
		
		
	}

}