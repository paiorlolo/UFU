package  
{
	import flash.utils.ByteArray;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.masks.Grid;
	
	/**
	 * ...
	 * @author Phantom & Lolo
	 */
	public class Level extends Entity 
	{
		private var _tiles:Tilemap;
		private var _grid:Grid;
		[Embed(source = "../Assets/sheet1_2.png")] private const TILESET:Class;
		
		public function Level(xml:Class) 
		{
			 _tiles = new Tilemap(TILESET, 640, 480, 32, 32);
			 graphic = _tiles;
			 layer = 1;
			 
			 _grid = new Grid(640, 480, 32, 32, 0, 0);			 
			 mask = _grid;
			 
			 type = "level";
			 
			loadLevel(xml);
			 
		}
		
		private function loadLevel(xml:Class):void
		{
			trace( "Level - loadLevel"); 
			
			var rawData:ByteArray = new xml;
			var dataString:String = rawData.readUTFBytes( rawData.length );			
			var xmlData:XML = new XML( dataString );
			
			
			var dataElement:XML;
			
			// Iterate throw all the elements of the level and set the corresponding tiles
			for (var i:int = 0; i < xmlData.children().length(); i++)
			{
				var  node:XML = xmlData.children()[i];
				var dataList:XMLList;
				dataList = node.tile;
				
				if ( dataList != null)
				{	 
					for each ( var element:XML in dataList )
					_tiles.setTile( uint(element.@x), uint(element.@y), uint(element.@id));
				}
			}
			
		}
	}

}