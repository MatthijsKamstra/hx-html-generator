
package html.tag;

class Div extends BaseTag
{

	// role? :: <div class="navbar" role="navigation">


	public var role(get_role, set_role):String;


	private var _role 		: String 	= '';
	private var _template 				= new haxe.Template('<div ::id:: ::class::>::content::</div>');

	/**
	 * [new description]
	 * @param  ?id      [description]
	 * @param  ?style   [description]
	 * @param  ?content [description]
	 * @return          [description]
	 */
	public function new(?id:String, ?style:String, ?content:String ):Void
	{
		if(id != null) 		this.id = id;
		if(style != null) 	this.style = style;
		if(content != null) this.content = content;
	}

	
	override public function toString():String
	{
		// var _output = _template.execute({ id : _id , 'class' : _class , content : _content});
		
		// return _output.toString().split("  ").join(" ");	

		var _str  = '';
		_str += '<div';
		if(_id != '') 		_str += _id;
		if(_style != '') 	_str += _style;
		if(_role != '') 	_str += ' role="'+_role +'"';
		_str +=  ' >';
		_str +=  _content;
		_str +=  '</div>';
		return _str;
	}



	// ____________________________________ getter/setter ____________________________________
	// 
	function get_role():String { return _role; }
	function set_role(value:String):String
	{
		return _role = value;
	}

}