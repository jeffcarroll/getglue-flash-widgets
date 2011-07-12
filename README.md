# GetGlue Flash Widgets

The GetGlue Flash Widgets package is a thin wrapper for ActionScript 3 around the JavaScript API for the [GetGlue check-in widgets](http://getglue.com/widgets), providing easy integration for Flash-based web sites and components.

## Usage

By including the check-in widgets JavaScript file on the same pages as the AS3-based object, the functionality is exposed:

    <script type="text/javascript" src="http://widgets.getglue.com/checkin.js"></script>
    <embed src="your-file.swf" type="application/x-shockwave-flash" width="320" height="240"></embed>

By default, the library is packaged as`com.getglue.widgets`.

## API

### `CheckinWidget.checkin(object_key:String, source:String = ""):void`

Launches the check-in overlay for the object specified by `object_key`. For more information regarding object keys, read the [Object IDs section of the API docs](http://getglue.com/api#object-ids). The `source` parameter is optional, and if not provided will default to the current URI of the page.

### `CheckinWidget.basicCheckinButton(object_key:String):Sprite`

The package comes with a 65x18 GetGlue mark for you to use as a button, and the `basicCheckinButton` method uses it to create a `Sprite` instance with mouseover states that will launch the check-in overlay when clicked. The sprite returned can be added to the stage directly.

## Getting Help

If you have any problems integrating GetGlue widgets into your project, you can post to the [GetGlue Development Group](http://groups.google.com/group/glue-development), or email us at [support@getglue.com](mailto:support@getglue.com).