package ;

import html.tag.*;

class Main
{
	function new():Void
	{

		trace("Start ");
		

		// [mck] first simple document 

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


		// [mck] bootstrap document 
	
		var _html = new html.Document();
		_html.createTitle ('hx-html-generator test_01');
		_html.addBody(html.tag.Comment.add('Bootstrap example'));

		var _img = new html.tag.Img();
		_img.src = 'http://www.matthijskamstra.nl/blog/wp-content/uploads/mck_logo.png'; //'path/to/image.png';
		_img.alt = '[mck] logo';
		_img.style = 'img-responsive';

		// _html.addBody(_img);


		// var _link = new html.tag.Link();
		var _a = new html.tag.A('http://www.matthijskamstra.nl/blog','_blank');
		_a.content = 'link naar [mck] blog';
		// _html.addBody(_a);

		var _div = new html.tag.Div();
		_div.id = 'gallery';
		_div.style = 'container';
		_a.content = _img;
		_div.content = _a;
		_html.addBody(_div);


		var _meta = new html.tag.Meta();
		_meta.charset();
		_html.addHeader(_meta);

		var _meta = new html.tag.Meta();
		_meta.httpEquiv();
		_html.addHeader(_meta);

		var _meta = new html.tag.Meta();
		_meta.viewPort();
		_html.addHeader(_meta);


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



		_html.addBody(html.tag.Comment.add('jQuery (necessary for Bootstrap\'s JavaScript plugins)'));

		var _script = new html.tag.Script('https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js');
		_html.addBody(_script);


		_html.addBody(html.tag.Comment.add('Include all compiled plugins (below), or include individual files as needed'));

		var _script = new html.tag.Script('https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js');
		_html.addBody(_script);

		var _script = new html.tag.Script('js/foobar.js');
		_html.addBody(_script);






		_html.export('test_01.html');
		
		trace("export done");

	}	


	static public function main()
	{
		var app = new Main();
	}
}