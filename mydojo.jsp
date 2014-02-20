<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet"	href="//ajax.googleapis.com/ajax/libs/dojo/1.9.1/dijit/themes/claro/claro.css">
<script type="text/javascript">
var  dojoConfig = {
		async:false,
		packages: [{
		    name: "my",
		    location: "/wapp/js"
		}]
}

</script>
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.9.1/dojo/dojo.js"></script>
</head>
<body class="claro">
	<h1 id="my">Hello World!</h1>
	<form id="myForm" data-dojo-type="dijit/form/Form">
		<input type="text"  value="My country is great" data-dojo-type="dijit/form/ValidationTextBox"/>
		<button type="button" id="myButton" onclick="myForm.submit()" data-dojo-type="dijit/form/Button">
				<span>Click Me</span>
		</button>	
	</form>
	<div id="mydic">
	<p>this is a happy day</p>
	</div>
	
<script type="text/javascript">
require(["my/mydiv"],function(MyDiv){
	var mydiv = new MyDiv({},"mydic")
	mydiv.startup();
});
</script>
	<script type="text/javascript">
		require([ "dojo/parser", "dijit/form/Button", "dijit/form/Form","dijit/form/ValidationTextBox", "dojo/domReady!" ],
				function(parser) {parser.parse();});
	</script>
</body>
</html>
