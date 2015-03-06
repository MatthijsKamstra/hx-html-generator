package html.tag;

class A extends Tag
{

	/**
	 * <a href="#vimeo-selfvideoclip" class="video-link"><img src="img/phones/iphone5_2.png" class="img--responsive center--block" alt="Responsive image"></a>
	 */
	
	public var href(get_href, set_href):String;
	public var target(get_target, set_target):String;

	private var _href:String;
	private var _target:String;

	/**
	 * [new description]
	 * @param  ?href    [description]
	 * @param  ?target  [description]
	 * @param  ?content [description]
	 * @return          [description]
	 */
	public function new(?href:String, ?target:String, ?content:String ):Void
	{
	    if(href != null) 	this.href = href;
		if(target != null) 	this.target = target;
		if(content != null) this.content = content;
	}

	override public function toString():String
	{
		var _str  = '';
		_str += '<a href="'+_href+'"';
		if(_target != '') _str += ' target="'+_target +'"';
		if(_style != '') _str += _style;
		_str +=  ' >';
		_str +=  _content;
		_str +=  '</a>';
		return _str;
	}

	// ____________________________________ getter/setter ____________________________________

	function get_href():String { return _href; }
	function set_href(value:String):String
	{
		return _href = value;
	}


	function get_target():String { return _target; }
	function set_target(value:String):String
	{
		return _target = value;
	}


}