package
{
	import net.flashpunk.World;
	
	/**
	 * Ejemplo de un mundo dentro de flashpunk. Esto sirve para crear menues, niveles, etc.
	 * @author Phantom & Lolo
	 */
	public class GameWorld extends World
	{
		public function GameWorld()
		{
			trace("GameWorld - GameWorld()");
		}
		
		override public function begin():void
		{
			add(new Level(AssetsManager.TEST_LEVEL));
			add(new Player);
			super.begin();
		}
		
		override public function update():void
		{
			super.update();
		}
	
	}

}