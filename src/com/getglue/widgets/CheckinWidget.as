package com.getglue.widgets {
	import flash.external.ExternalInterface;
	
	public class CheckinWidget {
		public static function checkin(objectKey:String):void {
			ExternalInterface.call("getglue.checkin", objectKey);
		}
	}
}
