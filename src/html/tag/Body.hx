
package html.tag;

class Body extends BaseTag
{

	public var content(get_content, set_content):String;
	private var _content:String = '';

	private var _template = new haxe.Template('<div ::id:: ::class::>::content::</div>');

	public function new():Void
	{
		_content = '';
	}

	public function createContent(value):Void
	{
		_content = value;
	}
	
	public function toString():String
	{
		var _output = _template.execute({ id : _id , 'class' : _class , content : _content});
		
		return _output.toString().split("  ").join(" ");	
	}

	// ____________________________________ getter/setter ____________________________________

	function get_content():String { return _content; }
	function set_content(value:String):String
	{
		return _content = value;
	}
}