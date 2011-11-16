<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>NutriEval</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
        <body>
	<div id="page-body" role="main">
                     <div class="content" style="padding:10px 25px;">
			 <h1 style="padding:0;margin:0;">Bienvenido(a) a NutriEval</h1>
			<p>Sistema Desarrollado Para el Control de La Nutrición y Dietética del Adulto Mayor</p>
			<div id="controller-list" role="navigation">                        
				<h2>Seleccione Una Opción:</h2>
				<ul>
				<li><g:link class="create" action="create" controller="paciente">Agregar Nuevo Paciente</g:link></li>
                                <li><g:link class="create" action="create" controller="AporteNutricional">Agregar Tabla de Aporte Nutricional</g:link></li>
                                <li><g:link class="list" action="list" controller="paciente">Ver Lista de Pacientes</g:link></li>
                                <li><g:link class="list" action="list" controller="AporteNutricional">Ver Lista de Tablas de Aporte Nutricional </g:link></li>
				</ul>
			</div>
                     </div>
		</div>
	</body>
</html>
