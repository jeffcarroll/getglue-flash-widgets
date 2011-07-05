package {
	import flash.display.Sprite;
	import com.getglue.widgets.CheckinWidget;
	
	public class Main extends Sprite {
		public function Main() {
			CheckinWidget.checkin("tv_shows/weeds");
		}
	}
}