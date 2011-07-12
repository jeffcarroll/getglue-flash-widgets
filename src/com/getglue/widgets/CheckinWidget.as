/*
 * Copyright 2011 AdaptiveBlue, Inc.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.getglue.widgets {
	import flash.display.Sprite;
	import flash.display.Bitmap;
	import flash.events.MouseEvent;
	import flash.external.ExternalInterface;
	import flash.geom.Rectangle;
	
	public class CheckinWidget {
		[Embed(source="assets/checkin_button.png", mimeType="image/png")]
		private static var checkin_button_asset:Class;
		
		public static function checkinButtonSprite():Sprite {
			var asset:Bitmap = new CheckinWidget.checkin_button_asset();
			var sprite:Sprite = new Sprite();
			sprite.addChild(asset);
			sprite.scrollRect = new Rectangle(0, 0, 65, 18);
			return sprite;
		}
		
		public static function checkin(object_key:String, source:String = ""):void {
			ExternalInterface.call("getglue.checkin", object_key, source);
		}
		
		public static function basicCheckinButton(object_key:String):Sprite {
			var button:Sprite = CheckinWidget.checkinButtonSprite();
			var mouseOutRect:Rectangle = new Rectangle(0, 0, 65, 18);
			var mouseInRect:Rectangle = new Rectangle(0, 18, 65, 18);
			button.scrollRect = mouseOutRect;
			button.addEventListener(MouseEvent.ROLL_OVER, function(e:MouseEvent):void {
				button.scrollRect = mouseInRect;
			});
			button.addEventListener(MouseEvent.ROLL_OUT, function(e:MouseEvent):void {
				button.scrollRect = mouseOutRect;
			});
			button.addEventListener(MouseEvent.CLICK, function(e:MouseEvent):void {
				CheckinWidget.checkin(object_key, "BasicFlashButton");
			});
			return button;
		}
	}
}
