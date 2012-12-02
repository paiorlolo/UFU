package  
{
	/**
	 * ...
	 * @author Phantom & Lolo
	 */
	public class GameConfiguration 
	{
		static private var _gameWidth:int;
		static private var _gameHeight:int;
		
		
		public function GameConfiguration() 
		{			
		}
		
		/**
		 * Set the game windows width in pixels
		 * @param the game windows width
		 */
		static public function setGameWidth(width:int):void
		{
			_gameWidth = width;
		}
		
		/**
		 * @return the game windows width in pixels
		 */
		static public function getGameWidth():int
		{
			return _gameWidth;
		}
		
		/**
		 * set the game windows height in pixels
		 * @param the game windows height
		 */
		static public function setGameHeight(height:int):void
		{
			_gameHeight = height;
		}
		
		/**
		 * @return the game windows height
		 */
		static public function getGameHeight():int
		{
			return _gameHeight;
		}
		
		
		
		
		
	}

}