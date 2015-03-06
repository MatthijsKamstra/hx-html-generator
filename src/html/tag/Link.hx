
package html.tag;

class Link extends Tag
{



	/*
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="apple-touch-icon" href="http://www.smadsteck.nl/wp-content/themes/smadsteck/img/apple-touch-icon.png">
		<link rel="apple-touch-icon" href="http://www.smadsteck.nl/wp-content/themes/smadsteck/img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="http://www.smadsteck.nl/wp-content/themes/smadsteck/img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="http://www.smadsteck.nl/wp-content/themes/smadsteck/img/apple-touch-icon-114x114.png">
		
			<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.css" rel="stylesheet">

		<!-- Custom styles for this template -->
		<link href="css/ebo.css" rel="stylesheet">

		<!-- google fonts -->
		<link href='http://fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
	 */ 


	public var href(get_href, set_href):String;
	public var rel(get_rel, set_rel):String;
	public var type(get_type, set_type):String;

	private var _href 	: String = '';
	private var _rel 	: String = '';
	private var _type  	: String = '';
	

	/**
	 * [new description]
	 * @param  ?href [description]
	 * @param  ?rel  [description]
	 * @param  ?type [description]
	 * @return       [description]
	 */
	public function new(?href:String, ?rel:String, ?type:String):Void
	{
		if(href != null) 	this.href = href;
		if(rel != null) 	this.rel = rel;
		if(type != null) 	this.type = type;
	}

	public function favicon(href:String)
	{
		this.href = href;
		this.rel = 'shortcut icon';
	    // return '<link rel="shortcut icon" href="'+href+'">';
	}
	public function stylesheet(href:String)
	{
		this.href = href;
		this.rel = 'stylesheet';
	    // return '<link rel="stylesheet" href="'+href+'">';
	}

	override public function toString():String
	{
		var _str  = '';
		_str += '<link href="'+_href+'"';
		if(_rel != '') 	_str += ' rel="' + _rel + '"';
		if(_type != '') _str += ' type="' + _type + '"';
		_str +=  ' >';
		return _str;
	}

	// ____________________________________ getter/setter ____________________________________

	function get_href():String { return _href; }
	function set_href(value:String):String
	{
		return _href = value;
	}

	
	function get_rel():String { return _rel; }
	function set_rel(value:String):String
	{
		return _rel = value;
	}

	
	function get_type():String { return _type; }
	function set_type(value:String):String
	{
		return _type = value;
	}

}