
package html.tag;

class Img extends Tag
{

	/** 
	 * <img src="img/btn/btn_google.png" height="48" width="140" alt="Get it on Google Play">
	 */ 

	public var src(get_src, set_src):String;
	public var alt(get_alt, set_alt):String;

	private var _src 	: String = '';
	private var _alt 	: String = '';
	

	/**
	 * img tag
	 * @param  ?src 	absolute or relative path to a image
	 * @param  ?alt 	description of the image
	 */
	public function new(?src:String,?alt:String):Void
	{
		if(src != null) this.src = src;
		if(alt != null) this.alt = alt;
	}

	override public function toString():String
	{
		var _str  = '';
		_str += '<img src="'+_src+'" alt="'+_alt+'"';
		if(_style != '') _str += _style;
		_str +=  ' >';
		return _str;
	}

	// ____________________________________ getter/setter ____________________________________

	function get_src():String { return _src; }
	function set_src(value:String):String
	{
		return _src = value;
	}

	
	function get_alt():String { return _alt; }
	function set_alt(value:String):String
	{
		return _alt = value;
	}


}