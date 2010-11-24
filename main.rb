require 'rubygems'
require 'sinatra'
require 'erb'

get '/' do
  @page = 'index'
  erb :index
end

get '/coursework' do
  @page = 'coursework'
  erb :coursework
end

get '/resume' do
  @page = 'resume'
  erb :resume
end

get '/work' do
  @page = 'work'
  erb :work
end

__END__

@@ layout
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>Chris Lee<%= @page == 'index' ? '' : ' | ' + @page.capitalize %></title>
	<link rel="stylesheet" type="text/css" href="style.css" media="all" />
</head>
<body id="<%= @page %>">
	<div id="header">
		<div class="wrapper">
		<h1><a href="/">Chris Lee</a></h1>
		<ul id="nav">
			<li><a href="/">About</a></li>
			<li><a href="/work">Work</a></li>
			<li><a href="/coursework">Coursework</a></li>
			<li><a href="/resume">Resume</a></li>
		</ul>
		</div>
	</div>
	<div id="content">
		<div class="wrapper">
			<%= yield %>
		</div>
	</div>

	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-19583432-1']);
		_gaq.push(['_trackPageview']);

		(function() {
			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
	</script>
</body>
</html>