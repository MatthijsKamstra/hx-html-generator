
package html.tag;

import html.tag.TagBase;

class Tag extends TagBase
{

	public var id(get_id, set_id):String;
	public var style(get_style, set_style):String;
	public var content(get_content, set_content):Dynamic;
	

	private var _style 		: String = '';
	private var _id 		: String = '';
	private var _class 		: String = '';
	private var _content 	: String = '';


	public function createId(value):Void
	{
		_id = ' id="' + value + '"';
	}
	
	public function createClass(value):Void
	{
		_class = ' class="' + value + '"';
	}

	public function createStyle(value):Void
	{
		_style = ' class="' + value + '"';
	}

	public function createContent(value:Dynamic):Void
	{
		if( Std.is (value, html.tag.TagBase) ) {
			_content = (cast (value,html.tag.TagBase).toString());
		} else {
			_content = value;
		}
	}

	// override public function toString():String
	// {
	// 	throw "boooja";
	// 	return '';
	// }

	// ____________________________________ getter/setter ____________________________________

	function get_id():String { return _id; }
	function set_id(value:String):String
	{
		createId(value);
		return _id;
	}

	function get_style():String { return _style; }
	function set_style(value:String):String
	{
		createStyle(value);
		return _style;
	}

	function get_content():Dynamic { return _content; }
	function set_content(value:Dynamic):Dynamic
	{
		createContent( value  );
		return _content;
	}
}