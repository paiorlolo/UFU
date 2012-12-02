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
		 * @param
		 * @return
		 */
		static public function setGameWidth(width:int):void
		{
			_gameWidth = width;
		}
		
		/**
		 * @param
		 * @return
		 */
		static public function getGameWidth():int
		{
			return _gameWidth;
		}
		
		/**
		 * @param
		 * @return
		 */
		static public function setGameHeight(height:int):void
		{
			_gameHeight = height;
		}
		
		/**
		 * @param
		 * @return
		 */
		static public function getGameHeight():int
		{
			return _gameHeight;
		}
		
		
		
		
		
	}

}