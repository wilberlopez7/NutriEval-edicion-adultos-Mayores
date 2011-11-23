<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'icono-nutricion.png')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
                <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui.css')}" type="text/css">
                <g:javascript src="jquery.min.js" />
                <g:javascript src="jquery-ui.js" />
		<g:layoutHead/>
                <r:layoutResources/>
	</head>
        <div>
	<body>
          <div id="grailsLogo" role="banner"><img src="${resource(dir: 'images',file: 'nutricion5.png')}"/><font size="7">&nbsp;NutriEval</font><font size=3>&nbsp;&nbsp;&nbsp;&nbsp;Edición Adultos Mayores</font>
      <sec:ifLoggedIn>
        <a href="${createLink(controller:'logout')}" style="float:right; color: #000">Salir</a>
      </sec:ifLoggedIn>
          
          </div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<r:layoutResources/>
                <g:javascript library="application"/>
                </body>
</html>
</div>