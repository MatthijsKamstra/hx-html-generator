package ;

import html.tag.*;

class Main
{
	function new():Void
	{

		trace("Start ");
		
		var _html = new html.Document();
		_html.createTitle ('this is the title');
		_html.addBody ('this is the body');
		_html.addBody (Comment.add('test'));

		var div = new html.tag.Div();
		div.createId ('news');
		div.createClass ('pull-left green-bg');
		div.createContent ('hello');

		_html.addBody (div);

		_html.export('test_00.html');


		// 
	
		var _html = new html.Document();
		_html.addBody(html.tag.Comment.add('hello'));

		var _img = new html.tag.Img();
		_img.src = 'path/to/image.png';
		_img.alt = 'this is an image';
		_img.style = 'img-responsive';

		_html.addBody(_img);


		// var _link = new html.tag.Link();
		var _a = new html.tag.A('http://www.nu.nl','_blank');
		_a.content = 'link naar nu.nl';
		_html.addBody(_a);

		var _div = new html.tag.Div();
		_div.id = 'gallery';
		_div.style = 'container txt-container';
		_a.content = _img;
		_div.content = _a;
		_html.addBody(_div);


		var _link = new html.tag.Link();
		_link.favicon('favicon.ico');
		_html.addHeader(_link);

		_html.addHeader(html.tag.Comment.add('Latest compiled and minified CSS'));

		var _link = new html.tag.Link();
		_link.stylesheet('https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css');
		_html.addHeader(_link);

		_html.addHeader(html.tag.Comment.add('Custom styles for this template'));
		
		var _link = new html.tag.Link();
		_link.stylesheet('css/style.css');
		_html.addHeader(_link);	

		_html.addHeader(html.tag.Comment.add('Google font'));	

		var _link = new html.tag.Link();
		_link.stylesheet('http://fonts.googleapis.com/css?family=Nunito:400,300,700');
		_html.addHeader(_link);





		_html.export('test_01.html');
		
		trace("export done");

	}	


	static public function main()
	{
		var app = new Main();
	}
}