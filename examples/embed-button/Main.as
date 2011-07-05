package {
	import flash.display.Sprite;
	import com.getglue.widgets.CheckinWidget;
	
	[SWF(width="320", height="240")]
	public class Main extends Sprite {
		public function Main() {
			// Instantiate the basic Check-in button packaged by GetGlue
			var button:Sprite = CheckinWidget.basicCheckinButton("tv_shows/weeds");
			
			// Add it to the stage
			addChild(button);
		}
	}
}