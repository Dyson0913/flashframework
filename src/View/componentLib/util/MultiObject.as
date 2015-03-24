package View.componentLib.util 
{
	import flash.display.MovieClip;
	import View.componentLib.util.utilFun;
	
	
	/**
	 * 一次生成多個有規則排列的元件 
	 * @author hhg4092
	 */
	public class MultiObject 
	{
		//元件列表
		public var _ItemList:Array = [];
		
		//客制化功能
		public var CustomizedFun:Function = null;
		public var CustomizedData:Array = null;
		
		//元件命名
		private var _ItemName:String;
		
		public function MultiObject() 
		{
			
		}
		
		/**
		 * 生成N個物件 			E.X BetPointList.Create(12, "OrderBtn",1397.35 ,131.75 , 1, 0, 50.55, "BetPoint_", betView);
		 * @param	ItemNum  	總數量
		 * @param	LinkName 	fla裡的link名
		 * @param	StartX			起始X
		 * @param	StartY			起始Y
		 * @param	RowCnt		一列數量
		 * @param	Xdiff			X間隔
		 * @param	Ydiff			Y間隔
		 * @param	ItemName	元件命名 XXX_id(判定事件為那個元件觸發,會取其ID做判斷)
		 * @param	Container		父節點
		 */
		public function Create(ItemNum:int,LinkName:String,StartX:Number,StartY:Number,RowCnt:int,Xdiff:Number,Ydiff:Number,ItemName:String,Container:MovieClip):void
		{			
			for (var i:int = 0 ; i < ItemNum; i++)
			{
				var mc:MovieClip = utilFun.GetClassByString(LinkName);
				mc.x = StartX + (i % RowCnt * Xdiff);
				mc.y = StartY + ( Math.floor(i / RowCnt) * Ydiff);
				
				if (CustomizedFun != null)
				{
					CustomizedFun(mc, i,CustomizedData);
				}
				
				mc.name = ItemName + i;
				_ItemList.push(mc);
				Container.addChild(mc);							
			}
		}
		
		public function FlushObject():void
		{
			for each(var i:int in _ItemList)
			{
				if (CustomizedFun != null)
				{
					CustomizedFun(_ItemList[i], i,CustomizedData);
				}
			}
		}
		
		public function CleanList():void
		{			
			_ItemList.length = 0;			
		}
		
	}

}