
<%@ page import="general.AporteNutricional" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aporteNutricional.label', default: 'AporteNutricional')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aporteNutricional" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aporteNutricional" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="paciente" title="${message(code: 'aporteNutricional.paciente.label', default: 'Paciente')}" />				
                                                <g:sortableColumn property="totalenergia" title="${message(code: 'aporteNutricional.totalenergia.label', default: 'Total de Energia')}" />				
                                                <g:sortableColumn property="totalproteina" title="${message(code: 'aporteNutricional.totalproteina.label', default: 'Total de Proteina')}" />				
                                                <g:sortableColumn property="totallipidos" title="${message(code: 'aporteNutricional.totallipidos.label', default: 'Total de Lipidos')}" />				
                                                <g:sortableColumn property="totalcarbohidratos" title="${message(code: 'aporteNutricional.totalcarbohidratos.label', default: 'Total de Carbohidratos')}" />				
					</tr>
				</thead>
				<tbody>
				<g:each in="${aporteNutricionalInstanceList}" status="i" var="aporteNutricionalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aporteNutricionalInstance.id}">${fieldValue(bean: aporteNutricionalInstance, field: "paciente")}</g:link></td>
					
						<td>${fieldValue(bean: aporteNutricionalInstance, field: "totalenergia")}</td>
					
						<td>${fieldValue(bean: aporteNutricionalInstance, field: "totalproteina")}</td>
					
						<td>${fieldValue(bean: aporteNutricionalInstance, field: "totallipidos")}</td>
					
						<td>${fieldValue(bean: aporteNutricionalInstance, field: "totalcarbohidratos")}</td>
					

					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aporteNutricionalInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
