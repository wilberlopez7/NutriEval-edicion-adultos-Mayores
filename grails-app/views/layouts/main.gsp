<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
  <head>
    <script type="text/javascript" charset="utf-8" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'icono-nutricion.png')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
    <link type="text/css" href="menu.css" rel="stylesheet" />
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'menu.css')}" type="text/css">
  <g:javascript src="jquery.min.js" />
  <g:javascript src="jquery-ui.js" />
  <script type="text/javascript" src="jquery.js"></script>
  <script type="text/javascript" src="menu.js"></script>

  <g:layoutHead/>
</head>
<body>
  <style type="text/css">
    div#menu {
      margin:20px auto;
      width:100%;
    }

  </style>
  <div id="grailsLogo" role="banner"><a href="http://nutrieval.cloudfoundry.com/"><img src="${resource(dir: 'images',file: 'nutricion5.png')}"/></a><font size="7">&nbsp;NutriEval</font><font size=3>&nbsp;&nbsp;&nbsp;&nbsp;Edición Adultos Mayores</font>
    <sec:ifLoggedIn>

    </sec:ifLoggedIn>
    <div id="menu">

      <ul class="menu">


        <li class="last"><a href="${createLink(controller:'paciente' ,action:'create')}"><span>Nvo Paciente</span></a></li>
        <li class="last"><a href="${createLink(controller:'recordatorio' ,action:'create')}"><span>Nvo Recordatorio</span></a></li>
        <li class="last"><a href="${createLink(controller:'aporteNutricional' ,action:'create')}"><span>Nva Tabla APN</span></a></li>
        <li class="last"><a href="${createLink(controller:'paciente' ,action:'list')}"><span>Pacientes</span></a></li>
        <li class="last"><a href="${createLink(controller:'recordatorio' ,action:'list')}"><span>Recordatorios</span></a></li>
        <li class="last"><a href="${createLink(controller:'aporteNutricional' ,action:'list')}"><span>Tablas APN</span></a></li>
        <li class="last">  <sec:ifAnyGranted roles="ROLE_ADMIN"><a href="${createLink(controller:'logout')}"><span>Salir</span></a></li></sec:ifAnyGranted>
      </ul>
    </div>

  </div>
<g:layoutBody/>
<div id="footer" class="footer">
  <a href="mailto:romy14@gmail.com,wilbertlopez715@gmail.com" target="_blank"  align="right"><p align="right" id="copyright">&copy;2011 WR Software</p></a>
</div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<r:layoutResources/>
<g:javascript library="application"/>
<div id=""><a href="http://apycom.com/"></a></div>
</body>
</html>