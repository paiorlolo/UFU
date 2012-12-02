package
{
	
	/**
	 * This class will manage all the assets and assets configuration of a game
	 * ...
	 * @author Phantom & Lolo
	 */
	public class AssetsManager
	{
		//Here we can declare all the assets reference
		//in the future i will like to add diferents class for 2d and 3d assets.
		//and maybe we can add more for diferente kind of assets.
		[Embed(source="../Assets/Tilesets/sheet1_2.png")]
		static public const DEFAULT_TILESET:Class;
		[Embed(source="../Assets/Link/LinkFrontBlue.gif")]
		static public const PLAYER_GRAPHIC:Class;
		[Embed(source="../Assets/Levels/TestLevel.oel",mimeType="application/octet-stream")]
		static public const TEST_LEVEL:Class;
	
	}

}