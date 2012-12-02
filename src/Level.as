package
{
	import flash.utils.ByteArray;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.Mask;
	import net.flashpunk.masks.Grid;
	
	/**
	 * ...
	 * @author Phantom & Lolo
	 */
	public class Level extends Entity
	{
		private var _tiles:Tilemap;
		private var _grid:Grid;
		
		/**
		 * @param
		 * @return
		 */
		public function Level(xml:Class)
		{
			
			setTiles(new Tilemap(AssetsManager.DEFAULT_TILESET, GameConfiguration.getGameHeight(), GameConfiguration.getGameWidth(), 32, 32));
			
			graphic = _tiles;
			setLayer(1);
			
			setGrid(new Grid(640, 480, 32, 32, 0, 0));
			setMask(getGrid());
			
			setCollisionType("level");
			
			loadLevel(xml);
		
		}
		
		/**
		 * @param
		 * @return
		 */
		private function loadLevel(xml:Class):void
		{
			trace("Level - loadLevel");
			
			var rawData:ByteArray = new xml;
			var dataString:String = rawData.readUTFBytes(rawData.length);
			var xmlData:XML = new XML(dataString);
			var dataElement:XML;
			
			// Iterate throw all the elements of the level and set the corresponding tiles
			for (var i:int = 0; i < xmlData.children().length(); i++)
			{
				var node:XML = xmlData.children()[i];
				var dataList:XMLList;
				dataList = node.tile;
				
				if (dataList != null)
				{
					for each (var element:XML in dataList)
						getTiles().setTile(uint(element.@x), uint(element.@y), uint(element.@id));
				}
			}
		
		}
		
		/**
		 * @param
		 * @return
		 */
		public function setTiles(tilemap:Tilemap):void
		{
			_tiles = tilemap;
		}
		
		/**
		 * @param
		 * @return
		 */
		public function getTiles():Tilemap
		{
			return _tiles;
		}
		
		/**
		 * @param
		 * @return
		 */
		public function setGrid(grid:Grid):void
		{
			_grid = grid;
		}
		
		/**
		 * @param
		 * @return
		 */
		public function getGrid():Grid
		{
			return _grid;
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
		
		/**
		 * @param
		 * @return
		 */
		public function setLayer(layerIndex:int):void
		{
			layer = layerIndex;
		}
		
		/**
		 * @param
		 * @return
		 */
		public function getLayer():int
		{
			return layer;
		}
		
		/**
		 * @param
		 * @return
		 */
		public function setMask(mask:Mask):void
		{
			this.mask = mask;
		}
		
		/**
		 * Return the mask of the level.
		 * The mask is used for especialized collisions. Is an optional component
		 * @param
		 * @return
		 */
		public function getMask():Mask
		{
			return mask;
		}
	
	}

}