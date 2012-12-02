package  
{
	import net.flashpunk.Graphic;
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
		private var image:Image;
		private const velocity:int = 100;
		
		public function Player(image:Class) 
		{
			setImage(new Image(image));
			setGraphic(getImage());
			setHitbox(getImage().height, getImage().width, 0, 0);
			setCollisionType("player");
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
		
		public function setImage(image:Image):void
		{
			this.image = image;
		}
		
		public function getImage():Image
		{
			return image;
		}
		
		/**
		 * Set the graphical component to be rendered
		 * @param the image to be rendered
		 */
		public function setGraphic(image:Image):void
		{
			graphic = image;
		}
		
		public function getGraphic():Graphic
		{
			return graphic;
		}
		
		/**
		 * @param
		 * @return
		 */
		public function setCollisionType(type:String):void
		{
			this.type = type;
		}
		
		/**
		 * @param
		 * @return
		 */
		public function getCollisionType():String
		{
			return type;
		}
	}

}