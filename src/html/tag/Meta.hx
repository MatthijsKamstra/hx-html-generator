
package html.tag;

class Meta extends TagBase
{

	/**
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	*/ 

	public var name(get_name, set_name):String;
	public var content(get_content, set_content):String;
	
	private var _name 		: String = '';
	private var _content 	: String = '';
	private var _isCharset 	: Bool = false;
	private var _isHttpEquiv 	: Bool = false;
		

	public function new(?name:String, ?content:String):Void
	{
	    if(name != null) 		this.name = name;
		if(content != null) 	this.content = content;
	}

	public function charset()
	{
		_isCharset = true;
	}

	public function httpEquiv()
	{
		_isHttpEquiv = true;
	}

	public function viewPort()
	{
		_name 		= 'viewport';
		_content 	= 'width=device-width, initial-scale=1.0';
	}

	override public function toString():String
	{
		if(_isCharset) 		return '<meta charset="utf-8">';
		if(_isHttpEquiv) 	return '<meta http-equiv="X-UA-Compatible" content="IE=edge">';

		var _str  = '';
		_str += '<meta name="'+_name+'" content="'+_content+'">';
		
		return _str;
	}

	// ____________________________________ getter/setter ____________________________________

	function get_name():String { return _name; }
	function set_name(value:String):String
	{
		return _name = value;
	}

	
	function get_content():String { return _content; }
	function set_content(value:String):String
	{
		return _content = value;
	}


}