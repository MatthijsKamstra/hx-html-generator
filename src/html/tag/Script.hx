
package html.tag;

class Script extends Tag
{

	/*
<script type="text/javascript" src="js/email.js"></script>
	 */ 
	

	public var href(get_href, set_href):String;
	public var type(get_type, set_type):String;

	private var _href:String;
	private var _type:String = '';// 'text/javascript';
	

	public function new(?href:String, ?type:String):Void
	{
	    if(href != null) 	this.href = href;
		if(type != null) 	this.type = type;
	}

	override public function toString():String
	{
		var _str  = '';
		_str += '<script src="'+_href+'"';
		if(type == '') _str += ' type="'+_type+'"';
		_str += '></script>';
		return _str;
	}

	// ____________________________________ getter/setter ____________________________________

	function get_href():String { return _href; }
	function set_href(value:String):String
	{
		return _href = value;
	}

	
	function get_type():String { return _type; }
	function set_type(value:String):String
	{
		return _type = value;
	}


}