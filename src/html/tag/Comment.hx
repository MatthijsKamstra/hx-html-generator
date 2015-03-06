
package html.tag;

class Comment 
{
	private var _content:String;

	public function new(value:String):Void
	{
	    _content = "<!-- " + value + " -->" ;
	}

	public function toString():String
	{
	    return _content;
	}


	public static function add(value:String):String
	{
	    var _content = "\n<!-- " + value + " -->" ;
	    return _content;
	}
}