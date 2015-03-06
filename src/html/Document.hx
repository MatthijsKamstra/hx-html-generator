package html;


import haxe.Resource;
import haxe.Template;

import Sys;
import sys.io.File;
import sys.FileSystem;

using StringTools;

class Document 
{
	public var doctype(get_doctype, set_doctype):String;
	public var meta(get_meta, set_meta):String;
	public var title(get_title, set_title):String;

	public var body(get_body, set_body):String;

	private var _doctype  			: String = 'html';
	private var _meta 				: String = 'UTF-8';
	private var _title 				: String = 'document title';
	private var _body 				: String = '';

	private var _bodyArray 			: Array<String> = [];
	private var _headerArray 		: Array<String> = [];

	public function new():Void
	{
	    
	}

	public function createDocType(value:String)
	{
		_doctype = value;
	}
	
	public function createMetaType(value:String)
	{
		_meta = value;
	}

	public function createTitle(value:String)
	{
		_title = value;
	}

	public function addHeader(value:Dynamic):Void
	{
		if( Std.is (value, html.tag.Tag) ) {
			_headerArray.push (cast (value,html.tag.Tag).toString());
		} else {
			_headerArray.push ( value );
		}
	}

	/**
	 * add something to the body tag
	 * 
	 * @param 	value 	String or classes extending Tag
	 */
	public function addBody(value:Dynamic):Void
	{
		if( Std.is (value, html.tag.Tag) ) {
			_bodyArray.push (cast (value,html.tag.Tag).toString());
		} else {
			_bodyArray.push ( value );
		}
	}

	public function export (?name:String, ?path:String)
	{
		if (name == null) name = 'index.html';
		if (path == null) 
		{
			var currentDir = Sys.getCwd();
			path = currentDir + 'bin/' + name;
		}
		// trace(Sys.executablePath());
		File.saveContent(path, toString());
	}
	
	public function toString():String
	{
		var _now = "<!-- " + Date.now() + " -->\n";

		var _bodyString = '';
		for (i in 0..._bodyArray.length) {
			_bodyString += '\t' + _bodyArray[i] + '\n';
		}
		var _headerString = '';
		for (i in 0..._headerArray.length) {
			_headerString += '\t' + _headerArray[i] + '\n';
		}

		var _html = '';
		_html += '<!DOCTYPE '+_doctype+'>\n';
		_html += '<html>\n';
		_html += '<head>\n';
		_html += '<title>'+_title+'</title>\n';
		_html += _headerString;
		_html += '</head>\n';
		_html += '<body>\n';
		_html += _bodyString;
		_html += _now;
		_html += '</body>\n';
		_html += '</html>\n';

		return _html;
	}

		// ____________________________________ getter/setter ____________________________________



	function get_body():String { return _body; }
	function set_body(value:String):String
	{
		_bodyArray.push (value);
		return _body = value;
	}

	
	function get_title():String { return _title; }
	function set_title(value:String):String
	{
		return _title = value;
	}

	function get_doctype():String { return _doctype; }
	function set_doctype(value:String):String
	{
		return _doctype = value;
	}
		
	function get_meta():String { return _meta; }
	function set_meta(value:String):String
	{
		return _meta = value;
	}



}