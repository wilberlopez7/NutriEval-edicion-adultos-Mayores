
<%@ page import="general.Paciente" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-paciente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list paciente">
			
				<g:if test="${pacienteInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="paciente.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${pacienteInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.apellidos}">
				<li class="fieldcontain">
					<span id="apellidos-label" class="property-label"><g:message code="paciente.apellidos.label" default="Apellidos" /></span>
					
						<span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${pacienteInstance}" field="apellidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="paciente.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${pacienteInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="paciente.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${pacienteInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="paciente.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${pacienteInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="paciente.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:fieldValue bean="${pacienteInstance}" field="ciudad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="paciente.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${pacienteInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.cp}">
				<li class="fieldcontain">
					<span id="cp-label" class="property-label"><g:message code="paciente.cp.label" default="Cp" /></span>
					
						<span class="property-value" aria-labelledby="cp-label"><g:fieldValue bean="${pacienteInstance}" field="cp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="paciente.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${pacienteInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="paciente.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${pacienteInstance}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.ocupacion}">
				<li class="fieldcontain">
					<span id="ocupacion-label" class="property-label"><g:message code="paciente.ocupacion.label" default="Ocupacion" /></span>
					
						<span class="property-value" aria-labelledby="ocupacion-label"><g:fieldValue bean="${pacienteInstance}" field="ocupacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.peso}">
				<li class="fieldcontain">
					<span id="peso-label" class="property-label"><g:message code="paciente.peso.label" default="Peso" /></span>
					
						<span class="property-value" aria-labelledby="peso-label"><g:fieldValue bean="${pacienteInstance}" field="peso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.talla}">
				<li class="fieldcontain">
					<span id="talla-label" class="property-label"><g:message code="paciente.talla.label" default="Estatura (m)" /></span>
					
						<span class="property-value" aria-labelledby="talla-label"><g:fieldValue bean="${pacienteInstance}" field="talla"/></span>
					
				</li>
				</g:if>
                             
                               <g:if test="${pacienteInstance?.IMC}">
				<li class="fieldcontain">
					<span id="IMC-label" class="property-label"><g:message code="paciente.IMC.label" default="IMC" /></span>
					
						<span class="property-value" aria-labelledby="IMC-label"><g:fieldValue bean="${pacienteInstance}" field="IMC"/></span>
					
				</li>
				</g:if>
                          
                          <g:if test="${pacienteInstance?.perimetroPantorrilla}">
				<li class="fieldcontain">
					<span id="perimetroPantorrilla-label" class="property-label"><g:message code="paciente.perimetroPantorrilla.label" default="Perimetro Pantorrilla" /></span>
					
						<span class="property-value" aria-labelledby="perimetroPantorrilla-label"><g:fieldValue bean="${pacienteInstance}" field="perimetroPantorrilla"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.alturaRodilla}">
				<li class="fieldcontain">
					<span id="alturaRodilla-label" class="property-label"><g:message code="paciente.alturaRodilla.label" default="Altura Rodilla" /></span>
					
						<span class="property-value" aria-labelledby="alturaRodilla-label"><g:fieldValue bean="${pacienteInstance}" field="alturaRodilla"/></span>
					
				</li>
				</g:if>
			
				
			
				<g:if test="${pacienteInstance?.perimetroMedioBranquial}">
				<li class="fieldcontain">
					<span id="perimetroMedioBranquial-label" class="property-label"><g:message code="paciente.perimetroMedioBranquial.label" default="Perimetro Medio Branquial" /></span>
					
						<span class="property-value" aria-labelledby="perimetroMedioBranquial-label"><g:fieldValue bean="${pacienteInstance}" field="perimetroMedioBranquial"/></span>
					
				</li>
				</g:if>
                          
                          <g:if test="${pacienteInstance?.paniculoAdiposoSubrescapula}">
				<li class="fieldcontain">
					<span id="paniculoAdiposoSubrescapula-label" class="property-label"><g:message code="paciente.paniculoAdiposoSubrescapula.label" default="Panículo Adiposo Subrescapula" /></span>
					
						<span class="property-value" aria-labelledby="paniculoAdiposoSubrescapula-label"><g:fieldValue bean="${pacienteInstance}" field="paniculoAdiposoSubrescapula"/></span>
					
				</li>
				</g:if>
                          
				<g:if test="${pacienteInstance?.pesoIdeal}">
				<li class="fieldcontain">
					<span id="pesoIdeal-label" class="property-label"><g:message code="paciente.pesoIdeal.label" default="Peso Ideal Hombres" /></span>
					
						<span class="property-value" aria-labelledby="pesoIdeal-label"><g:fieldValue bean="${pacienteInstance}" field="pesoIdeal"/></span>
					
				</li>
				</g:if>
                          
                          <g:if test="${pacienteInstance?.estaturaConProblemas}">
				<li class="fieldcontain">
					<span id="estaturaConProblemas-label" class="property-label"><g:message code="paciente.estaturaConProblemas.label" default="Estatura Con Problemas (m)" /></span>
					
						<span class="property-value" aria-labelledby="estaturaConProblemas-label"><g:fieldValue bean="${pacienteInstance}" field="estaturaConProblemas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.horasSueño}">
				<li class="fieldcontain">
					<span id="horasSueño-label" class="property-label"><g:message code="paciente.horasSueño.label" default="Horas Sueño" /></span>
					
						<span class="property-value" aria-labelledby="horasSueño-label"><g:fieldValue bean="${pacienteInstance}" field="horasSueño"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.actividadFisica}">
				<li class="fieldcontain">
					<span id="actividadFisica-label" class="property-label"><g:message code="paciente.actividadFisica.label" default="Actividad Fisica" /></span>
					
						<span class="property-value" aria-labelledby="actividadFisica-label"><g:fieldValue bean="${pacienteInstance}" field="actividadFisica"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.diabetesMellitus}">
				<li class="fieldcontain">
					<span id="diabetesMellitus-label" class="property-label"><g:message code="paciente.diabetesMellitus.label" default="Diabetes Mellitus" /></span>
					
						<span class="property-value" aria-labelledby="diabetesMellitus-label"><g:fieldValue bean="${pacienteInstance}" field="diabetesMellitus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.alergias}">
				<li class="fieldcontain">
					<span id="alergias-label" class="property-label"><g:message code="paciente.alergias.label" default="Alergias" /></span>
					
						<span class="property-value" aria-labelledby="alergias-label"><g:fieldValue bean="${pacienteInstance}" field="alergias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.problemasRespiratorios}">
				<li class="fieldcontain">
					<span id="problemasRespiratorios-label" class="property-label"><g:message code="paciente.problemasRespiratorios.label" default="Problemas Respiratorios" /></span>
					
						<span class="property-value" aria-labelledby="problemasRespiratorios-label"><g:fieldValue bean="${pacienteInstance}" field="problemasRespiratorios"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.cancer}">
				<li class="fieldcontain">
					<span id="cancer-label" class="property-label"><g:message code="paciente.cancer.label" default="Cancer" /></span>
					
						<span class="property-value" aria-labelledby="cancer-label"><g:fieldValue bean="${pacienteInstance}" field="cancer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.enfermedadesCardiacas}">
				<li class="fieldcontain">
					<span id="enfermedadesCardiacas-label" class="property-label"><g:message code="paciente.enfermedadesCardiacas.label" default="Enfermedades Cardiacas" /></span>
					
						<span class="property-value" aria-labelledby="enfermedadesCardiacas-label"><g:fieldValue bean="${pacienteInstance}" field="enfermedadesCardiacas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.enfermedadesTiroides}">
				<li class="fieldcontain">
					<span id="enfermedadesTiroides-label" class="property-label"><g:message code="paciente.enfermedadesTiroides.label" default="Enfermedades Tiroides" /></span>
					
						<span class="property-value" aria-labelledby="enfermedadesTiroides-label"><g:fieldValue bean="${pacienteInstance}" field="enfermedadesTiroides"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.enfermedadesriñon}">
				<li class="fieldcontain">
					<span id="enfermedadesriñon-label" class="property-label"><g:message code="paciente.enfermedadesriñon.label" default="Enfermedadesriñon" /></span>
					
						<span class="property-value" aria-labelledby="enfermedadesriñon-label"><g:fieldValue bean="${pacienteInstance}" field="enfermedadesriñon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.hta}">
				<li class="fieldcontain">
					<span id="hta-label" class="property-label"><g:message code="paciente.hta.label" default="Hta" /></span>
					
						<span class="property-value" aria-labelledby="hta-label"><g:fieldValue bean="${pacienteInstance}" field="hta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.anemia}">
				<li class="fieldcontain">
					<span id="anemia-label" class="property-label"><g:message code="paciente.anemia.label" default="Anemia" /></span>
					
						<span class="property-value" aria-labelledby="anemia-label"><g:fieldValue bean="${pacienteInstance}" field="anemia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.acidoUrico}">
				<li class="fieldcontain">
					<span id="acidoUrico-label" class="property-label"><g:message code="paciente.acidoUrico.label" default="Acido Urico" /></span>
					
						<span class="property-value" aria-labelledby="acidoUrico-label"><g:fieldValue bean="${pacienteInstance}" field="acidoUrico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.obesidad}">
				<li class="fieldcontain">
					<span id="obesidad-label" class="property-label"><g:message code="paciente.obesidad.label" default="Obesidad" /></span>
					
						<span class="property-value" aria-labelledby="obesidad-label"><g:fieldValue bean="${pacienteInstance}" field="obesidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.alcoholismo}">
				<li class="fieldcontain">
					<span id="alcoholismo-label" class="property-label"><g:message code="paciente.alcoholismo.label" default="Alcoholismo" /></span>
					
						<span class="property-value" aria-labelledby="alcoholismo-label"><g:fieldValue bean="${pacienteInstance}" field="alcoholismo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.tabaquismo}">
				<li class="fieldcontain">
					<span id="tabaquismo-label" class="property-label"><g:message code="paciente.tabaquismo.label" default="Tabaquismo" /></span>
					
						<span class="property-value" aria-labelledby="tabaquismo-label"><g:fieldValue bean="${pacienteInstance}" field="tabaquismo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.fatiga}">
				<li class="fieldcontain">
					<span id="fatiga-label" class="property-label"><g:message code="paciente.fatiga.label" default="Fatiga" /></span>
					
						<span class="property-value" aria-labelledby="fatiga-label"><g:fieldValue bean="${pacienteInstance}" field="fatiga"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.padecimientoActual}">
				<li class="fieldcontain">
					<span id="padecimientoActual-label" class="property-label"><g:message code="paciente.padecimientoActual.label" default="Padecimiento Actual" /></span>
					
						<span class="property-value" aria-labelledby="padecimientoActual-label"><g:fieldValue bean="${pacienteInstance}" field="padecimientoActual"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.usoMedicamentos}">
				<li class="fieldcontain">
					<span id="usoMedicamentos-label" class="property-label"><g:message code="paciente.usoMedicamentos.label" default="Uso Medicamentos" /></span>
					
						<span class="property-value" aria-labelledby="usoMedicamentos-label"><g:fieldValue bean="${pacienteInstance}" field="usoMedicamentos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.comidasporDia}">
				<li class="fieldcontain">
					<span id="comidasporDia-label" class="property-label"><g:message code="paciente.comidasporDia.label" default="Comidaspor Dia" /></span>
					
						<span class="property-value" aria-labelledby="comidasporDia-label"><g:fieldValue bean="${pacienteInstance}" field="comidasporDia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.colaciones}">
				<li class="fieldcontain">
					<span id="colaciones-label" class="property-label"><g:message code="paciente.colaciones.label" default="Colaciones" /></span>
					
						<span class="property-value" aria-labelledby="colaciones-label"><g:fieldValue bean="${pacienteInstance}" field="colaciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.lacteosporSemana}">
				<li class="fieldcontain">
					<span id="lacteosporSemana-label" class="property-label"><g:message code="paciente.lacteosporSemana.label" default="Lacteospor Semana" /></span>
					
						<span class="property-value" aria-labelledby="lacteosporSemana-label"><g:fieldValue bean="${pacienteInstance}" field="lacteosporSemana"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.carnesRojasporSemana}">
				<li class="fieldcontain">
					<span id="carnesRojasporSemana-label" class="property-label"><g:message code="paciente.carnesRojasporSemana.label" default="Carnes Rojaspor Semana" /></span>
					
						<span class="property-value" aria-labelledby="carnesRojasporSemana-label"><g:fieldValue bean="${pacienteInstance}" field="carnesRojasporSemana"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.pescado}">
				<li class="fieldcontain">
					<span id="pescado-label" class="property-label"><g:message code="paciente.pescado.label" default="Pescado" /></span>
					
						<span class="property-value" aria-labelledby="pescado-label"><g:fieldValue bean="${pacienteInstance}" field="pescado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.aves}">
				<li class="fieldcontain">
					<span id="aves-label" class="property-label"><g:message code="paciente.aves.label" default="Aves" /></span>
					
						<span class="property-value" aria-labelledby="aves-label"><g:fieldValue bean="${pacienteInstance}" field="aves"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.cereales}">
				<li class="fieldcontain">
					<span id="cereales-label" class="property-label"><g:message code="paciente.cereales.label" default="Cereales" /></span>
					
						<span class="property-value" aria-labelledby="cereales-label"><g:fieldValue bean="${pacienteInstance}" field="cereales"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.aguaporDia}">
				<li class="fieldcontain">
					<span id="aguaporDia-label" class="property-label"><g:message code="paciente.aguaporDia.label" default="Aguapor Dia" /></span>
					
						<span class="property-value" aria-labelledby="aguaporDia-label"><g:fieldValue bean="${pacienteInstance}" field="aguaporDia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.huevo}">
				<li class="fieldcontain">
					<span id="huevo-label" class="property-label"><g:message code="paciente.huevo.label" default="Huevo" /></span>
					
						<span class="property-value" aria-labelledby="huevo-label"><g:fieldValue bean="${pacienteInstance}" field="huevo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.leguminosas}">
				<li class="fieldcontain">
					<span id="leguminosas-label" class="property-label"><g:message code="paciente.leguminosas.label" default="Leguminosas" /></span>
					
						<span class="property-value" aria-labelledby="leguminosas-label"><g:fieldValue bean="${pacienteInstance}" field="leguminosas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.verduras}">
				<li class="fieldcontain">
					<span id="verduras-label" class="property-label"><g:message code="paciente.verduras.label" default="Verduras" /></span>
					
						<span class="property-value" aria-labelledby="verduras-label"><g:fieldValue bean="${pacienteInstance}" field="verduras"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.frutas}">
				<li class="fieldcontain">
					<span id="frutas-label" class="property-label"><g:message code="paciente.frutas.label" default="Frutas" /></span>
					
						<span class="property-value" aria-labelledby="frutas-label"><g:fieldValue bean="${pacienteInstance}" field="frutas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.grasas}">
				<li class="fieldcontain">
					<span id="grasas-label" class="property-label"><g:message code="paciente.grasas.label" default="Grasas" /></span>
					
						<span class="property-value" aria-labelledby="grasas-label"><g:fieldValue bean="${pacienteInstance}" field="grasas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.golosinas}">
				<li class="fieldcontain">
					<span id="golosinas-label" class="property-label"><g:message code="paciente.golosinas.label" default="Golosinas" /></span>
					
						<span class="property-value" aria-labelledby="golosinas-label"><g:fieldValue bean="${pacienteInstance}" field="golosinas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.otrosLiquidos}">
				<li class="fieldcontain">
					<span id="otrosLiquidos-label" class="property-label"><g:message code="paciente.otrosLiquidos.label" default="Otros Liquidos" /></span>
					
						<span class="property-value" aria-labelledby="otrosLiquidos-label"><g:fieldValue bean="${pacienteInstance}" field="otrosLiquidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.desayuno}">
				<li class="fieldcontain">
					<span id="desayuno-label" class="property-label"><g:message code="paciente.desayuno.label" default="Desayuno" /></span>
					
						<span class="property-value" aria-labelledby="desayuno-label"><g:fieldValue bean="${pacienteInstance}" field="desayuno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.colacion}">
				<li class="fieldcontain">
					<span id="colacion-label" class="property-label"><g:message code="paciente.colacion.label" default="Colacion" /></span>
					
						<span class="property-value" aria-labelledby="colacion-label"><g:fieldValue bean="${pacienteInstance}" field="colacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.comida}">
				<li class="fieldcontain">
					<span id="comida-label" class="property-label"><g:message code="paciente.comida.label" default="Comida" /></span>
					
						<span class="property-value" aria-labelledby="comida-label"><g:fieldValue bean="${pacienteInstance}" field="comida"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.colacionComida}">
				<li class="fieldcontain">
					<span id="colacionComida-label" class="property-label"><g:message code="paciente.colacionComida.label" default="Colacion Comida" /></span>
					
						<span class="property-value" aria-labelledby="colacionComida-label"><g:fieldValue bean="${pacienteInstance}" field="colacionComida"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.cena}">
				<li class="fieldcontain">
					<span id="cena-label" class="property-label"><g:message code="paciente.cena.label" default="Cena" /></span>
					
						<span class="property-value" aria-labelledby="cena-label"><g:fieldValue bean="${pacienteInstance}" field="cena"/></span>
					
				</li>
				</g:if>
			
						
			
				
			
				
			
					
				
                          
                                <g:if test="${pacienteInstance?.aportenutricional}">
				<li class="fieldcontain">
					<span id="aportenutricional-label" class="property-label"><g:message code="paciente.aportenutricional.label" default="Aportenutricional" /></span>
					
						<span class="property-value" aria-labelledby="aportenutricional-label"><g:link controller="aporteNutricional" action="show" id="${pacienteInstance?.aportenutricional?.id}">${pacienteInstance?.aportenutricional?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pacienteInstance?.id}" />
					<g:link class="edit" action="edit" id="${pacienteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
