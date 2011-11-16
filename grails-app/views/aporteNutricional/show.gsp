
<%@ page import="general.AporteNutricional" %>
<!doctype html>
<html>
  <head>
    
    
      <script type="text/javascript">
   $(function() {
      $("#table1 tr:even td","#grupo","subgrupo","#cantidad","#aportenutricional").css("background-color", "#FFF"); $("#table1 tr:odd td,#grupo,#subgrupo,#cantidad,#aportenutricional").css("background-color", "#DEECF9"); 
   });
</script>  
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'aporteNutricional.label', default: 'AporteNutricional')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <a href="#show-aporteNutricional" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
      <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
      <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
  </div>
  <div id="show-aporteNutricional" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div align="center">
      
      
      <div align="left" style="margin-left:30px;"><g:if test="${aporteNutricionalInstance?.paciente}">

      <span id="paciente-label" class="property-label"><g:message code="aporteNutricional.paciente.label" default="Paciente " /></span>
      <span class="property-value" aria-labelledby="paciente-label"><g:link controller="paciente" action="show" id="${aporteNutricionalInstance?.paciente?.id}">${aporteNutricionalInstance?.paciente?.encodeAsHTML()}</g:link></span>		

    </g:if></div> <br/>
      
      
     <table style="width:100px" border="1" id="table1">
    <thead>
      <tr>
        <td align="center" rowspan="2" align="center" id="grupo"><b><p align="center">Grupo en el Sistema de <br />Equivalentes</td></b></p>
        <td align="center" rowspan="2" align="center"id="subgrupo"><b><p align="center">Subgrupos</td></b></p>
        <td align="center" rowspan="2" align="center"id="cantidad"><b><p align="center">Cantidad</td></b></p>
        <td align="center" colspan="4" align="center" id="aportenutricional"><b><p align="center">Aporte Nutrimental Promedio</td></b></p>
      </tr>
      <tr>
        <td align="center"><b><p align="center">Energ&iacute;a</td></p>
        <td align="center"><b><p align="center">Prote&iacute;na (g)</td></p>
        <td align="center"><b><p align="center">L&iacute;pidos (g)</td></p>
        <td align="center"><b><p align="center">Hidratos de Carbono (g)</td></p>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td align="center"><b><p align="center">Verduras</td></p>
        <td align="center"></td>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'verduras', 'error')} required">
            <g:field type="number" size="7" name="verduras" id="cantverd" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'verduras')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="25">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'verdurasenergia', 'error')} required">
            <g:field type="number" size="7" name="verdurasenergia" id="verdenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'verdurasenergia')}" onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="2">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'verdurasproteina', 'error')} required">
            <g:field type="number" size="7" name="verdurasproteina"id ="verdeproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'verdurasproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'verduraslipidos', 'error')} required">
            <g:field type="number" size="7" name="verduraslipidos" id="verdlipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'verduraslipidos')}" onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="4">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'verdurascarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="verdurascarbohidratos" id="verdecarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'verdurascarbohidratos')}" onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td align="center"><b><p align="center">Frutas</td></p>
        <td align="center"></td>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'frutas', 'error')} required">
            <g:field type="number" size="7" name="frutas" id ="cantfru" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'frutas')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="60">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'frutasenergia', 'error')} required">
            <g:field type="number" size="7" size="7" name="frutasenergia" id="fruenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'frutasenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'frutasproteina', 'error')} required">
            <g:field type="number" size="7" name="frutasproteina" id ="fruproteina"required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'frutasproteina')}" onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'frutaslipidos', 'error')} required">
            <g:field type="number" size="7" name="frutaslipidos" required="" id="frulipidos" value="${fieldValue(bean: aporteNutricionalInstance, field: 'frutaslipidos')}" onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="15">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'frutascarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="frutascarbohidratos" id ="frucarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'frutascarbohidratos')}" onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td align="center" rowspan="2"><b><p align="center">Cereales y Tub&eacute;rculos</td></p>
        <td><b><p align="center">a. Sin Grasa</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'cerealessingrasa', 'error')} required">
            <g:field type="number" size="7" name="cerealessingrasa" id="cantceres"required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealessingrasa')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="70">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'cerealessingrasaenergia', 'error')} required">
            <g:field type="number" size="7" name="cerealessingrasaenergia" id="ceresinenergia"required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealessingrasaenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="2">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'cerealessingrasaproteina', 'error')} required">
            <g:field type="number" size="7" name="cerealessingrasaproteina" id="ceresinproteina"required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealessingrasaproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'cerealessingrasalipidos', 'error')} required">
            <g:field type="number" size="7" name="cerealessingrasalipidos" id="ceresinlipidos"required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealessingrasalipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="15">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'cerealessingrasacarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="cerealessingrasacarbohidratos"id="ceresincarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealessingrasacarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td><b><p align="center">b. Con Grasa</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'cerealescongrasa', 'error')} required">
            <g:field type="number" size="7" name="cerealescongrasa" id="cantcerec" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealescongrasa')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="115">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'cerealescongrasaenergia', 'error')} required">
            <g:field type="number" size="7" name="cerealescongrasaenergia" id="cereconenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealescongrasaenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="2">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'cerealescongrasaproteina', 'error')} required">
            <g:field type="number" size="7" name="cerealescongrasaproteina" id="cereconproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealescongrasaproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="5">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'cerealescongrasalipidos', 'error')} required">
            <g:field type="number" size="7" name="cerealescongrasalipidos" id="cereconlipidos"required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealescongrasalipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="15">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'cerealescongrasacarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="cerealescongrasacarbohidratos"id="cereconcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealescongrasacarbohidratos')}"/>
          </div>
        </td>
      </tr>

      <tr>
        <td align="center"><b><p align="center">Leguminosas</td></p>
        <td align="center"></td>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'leguminosas', 'error')} required">
            <g:field type="number" size="7" name="leguminosas" id="cantlegu"required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'leguminosas')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="120">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'leguminosasenergia', 'error')} required">
            <g:field type="number" size="7" name="leguminosasenergia" id="leenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'leguminosasenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="8">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'leguminosasproteina', 'error')} required">
            <g:field type="number" size="7" name="leguminosasproteina" id="leproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'leguminosasproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="1">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'leguminosaslipidos', 'error')} required">
            <g:field type="number" size="7" name="leguminosaslipidos" id="lelipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'leguminosaslipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="20">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'leguminosascarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="leguminosascarbohidratos" id="lecarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'leguminosascarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td align="center" rowspan="4"><b><p align="center">Alimentos de Origen Animal</td></p>
        <td><b><p align="center">a. Muy Bajo Aporte de <br />Grasa</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalmuybajo', 'error')} required">
            <g:field type="number" size="7" name="origenanimalmuybajo" id="cantanimalmuyb" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmuybajo')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="40">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalmuybajoenergia', 'error')} required">
            <g:field type="number" size="7" name="origenanimalmuybajoenergia" id="ambenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmuybajoenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="7">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalmuybajoproteina', 'error')} required">
            <g:field type="number" size="7" name="origenanimalmuybajoproteina" id="ambproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmuybajoproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="1">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalmuybajolipidos', 'error')} required">
            <g:field type="number" size="7" name="origenanimalmuybajolipidos" id="amblipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmuybajolipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalmuybajocarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="origenanimalmuybajocarbohidratos" id="ambcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmuybajocarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td><b><p align="center">b. Bajo Aporte de Grasa</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalbajo', 'error')} required">
            <g:field type="number" size="7" name="origenanimalbajo" id="cantanimalbajo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalbajo')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="55">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalbajoenergia', 'error')} required">
            <g:field type="number" size="7" name="origenanimalbajoenergia" id="abenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalbajoenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="7">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalbajoproteinas', 'error')} required">
            <g:field type="number" size="7" name="origenanimalbajoproteinas" id="abproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalbajoproteinas')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="3">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalbajolipidos', 'error')} required">
            <g:field type="number" size="7" name="origenanimalbajolipidos" id="ablipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalbajolipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalbajocarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="origenanimalbajocarbohidratos" id="abcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalbajocarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td><b><p align="center">c. Moderado Aporte de Grasa</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalmoderado', 'error')} required">
            <g:field type="number" size="7" name="origenanimalmoderado"  id="cantanimalmoderado" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmoderado')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="75">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalmoderadoenergia', 'error')} required">
            <g:field type="number" size="7" name="origenanimalmoderadoenergia" id="amenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmoderadoenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="7">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalmoderadoproteina', 'error')} required">
            <g:field type="number" size="7" name="origenanimalmoderadoproteina" id="amproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmoderadoproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="5">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalmoderadolipidos', 'error')} required">
            <g:field type="number" size="7" name="origenanimalmoderadolipidos" id="amlipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmoderadolipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalmoderadocarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="origenanimalmoderadocarbohidratos" id="amcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmoderadocarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td><b><p align="center">d. Alto Aporte de Grasa</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalalto', 'error')} required">
            <g:field type="number" size="7" name="origenanimalalto"  id="cantanimalal" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalalto')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="100">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalaltoenergia', 'error')} required">
            <g:field type="number" size="7" name="origenanimalaltoenergia" id="aalenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalaltoenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="7">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalaltoproteina', 'error')} required">
            <g:field type="number" size="7" name="origenanimalaltoproteina" id="aalproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalaltoproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="8">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalaltolipidos', 'error')} required">
            <g:field type="number" size="7" name="origenanimalaltolipidos" id="aallipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalaltolipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'origenanimalaltocarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="origenanimalaltocarbohidratos" id="aalcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalaltocarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td align="center" rowspan="4"><b><p align="center">Leche</td></p>
        <td><b><p align="center">a. Descremada</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lechedescremada', 'error')} required">
            <g:field type="number" size="7" name="lechedescremada" id="cantlechedescre" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechedescremada')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="95">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lechedescremadaenergia', 'error')} required">
            <g:field type="number" size="7" name="lechedescremadaenergia" id="ldenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechedescremadaenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="9">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lechedescremadaproteina', 'error')} required">
            <g:field type="number" size="7" name="lechedescremadaproteina" id="ldproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechedescremadaproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="2">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lechedescremadalipidos', 'error')} required">
            <g:field type="number" size="7" name="lechedescremadalipidos" id="ldlipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechedescremadalipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="12">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lechedescremadacarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="lechedescremadacarbohidratos" id="ldcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechedescremadacarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td><b><p align="center"> b.Semidescremada</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lechesemidescremada', 'error')} required">
            <g:field type="number" size="7" name="lechesemidescremada" id="cantlechesemi" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechesemidescremada')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="110">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lechesemidescremadaenergia', 'error')} required">
            <g:field type="number" size="7" name="lechesemidescremadaenergia" id="lsenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechesemidescremadaenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="9">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lechesemidescremadaproteina', 'error')} required">
            <g:field type="number" size="7" name="lechesemidescremadaproteina" id="lsproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechesemidescremadaproteina')}"onfocus="this.blur()"/>
          </div>

        </td>
        <td align="center" title="4">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lechesemidescremadalipidos', 'error')} required">
            <g:field type="number" size="7" name="lechesemidescremadalipidos" id="lslipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechesemidescremadalipidos')}"onfocus="this.blur()"/>
          </div>

        </td>
        <td align="center" title="12">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lechesemidescremadacarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="lechesemidescremadacarbohidratos" id="lscarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechesemidescremadacarbohidratos')}"onfocus="this.blur()"/>
          </div>

        </td>
      </tr>

      <tr>
        <td><b><p align="center">c. Entera</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lecheentera', 'error')} required">
            <g:field type="number" size="7" name="lecheentera" id="cantlecheent" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheentera')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="150">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lecheenteraenergia', 'error')} required">
            <g:field type="number" size="7" name="lecheenteraenergia" id="lenenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheenteraenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="9">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lecheenteraproteina', 'error')} required">
            <g:field type="number" size="7" name="lecheenteraproteina" id="lenproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheenteraproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="8">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lecheenteralipidos', 'error')} required">
            <g:field type="number" size="7" name="lecheenteralipidos" id="lenlipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheenteralipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="12">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lecheenteracarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="lecheenteracarbohidratos" id="lencarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheenteracarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td><b><p align="center">d. Con Azucar</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lecheazucar', 'error')} required">
            <g:field type="number" size="7" name="lecheazucar" id="cantlecheazu" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheazucar')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="200">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lecheazucarenergia', 'error')} required">
            <g:field type="number" size="7" name="lecheazucarenergia" id="lazenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheazucarenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="8">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lecheazucarproteina', 'error')} required">
            <g:field type="number" size="7" name="lecheazucarproteina" id="lazproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheazucarproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="5">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lecheazucarlipidos', 'error')} required">
            <g:field type="number" size="7" name="lecheazucarlipidos" id="lazlipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheazucarlipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="30">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'lecheazucarcarbohidratos', 'error')} required">

            <g:field type="number" size="7" name="lecheazucarcarbohidratos" id="lazcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheazucarcarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td align="center" rowspan="2"><b><p align="center">Aceites y Grasas</td></p>
        <td><b><p align="center">a. Sin Prote&iacute;na</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'grasassinproteina', 'error')} required">
            <g:field type="number" size="7" name="grasassinproteina" id="cantaceitesinp" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasassinproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="45">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'grasassinproteinaenergia', 'error')} required">
            <g:field type="number" size="7" name="grasassinproteinaenergia" id="aspenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasassinproteinaenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'grasassinproteinaproteina', 'error')} required">
            <g:field type="number" size="7" name="grasassinproteinaproteina" id="aspproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasassinproteinaproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="5">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'grasassinproteinalipidos', 'error')} required">
            <g:field type="number" size="7" name="grasassinproteinalipidos" id="asplipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasassinproteinalipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'grasassinproteinacarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="grasassinproteinacarbohidratos" id="aspcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasassinproteinacarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td><b><p align="center">b. Con Prote&iacute;na</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'grasasconproteina', 'error')} required">
            <g:field type="number" size="7" name="grasasconproteina" id="cantaceiteconp" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasasconproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="70">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'grasasconproteinaenergia', 'error')} required">
            <g:field type="number" size="7" name="grasasconproteinaenergia" id="acpenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasasconproteinaenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="3">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'grasasconproteinaproteina', 'error')} required">
            <g:field type="number" size="7" name="grasasconproteinaproteina" id="acpproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasasconproteinaproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="5">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'grasasconproteinalipidos', 'error')} required">
            <g:field type="number" size="7" name="grasasconproteinalipidos" id="acplipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasasconproteinalipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="3">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'grasasconproteinacarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="grasasconproteinacarbohidratos" id="acpcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasasconproteinacarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td align="center" rowspan="2"><b><p align="center">Azucares</td></p>
        <td><b><p align="center">a. Sin Grasa</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'azucaressingrasa', 'error')} required">
            <g:field type="number" size="7" name="azucaressingrasa" id="cantazucaresing" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucaressingrasa')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="40">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'azucaressingrasaenergia', 'error')} required">
            <g:field type="number" size="7" name="azucaressingrasaenergia" id="azsgenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucaressingrasaenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'azucaressingrasaproteina', 'error')} required">
            <g:field type="number" size="7" name="azucaressingrasaproteina" id="azsgproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucaressingrasaproteina')}"onfocus="this.blur()"/>
          </div>

        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'azucaressingrasalipidos', 'error')} required">
            <g:field type="number" size="7" name="azucaressingrasalipidos" id="azsglipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucaressingrasalipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="10">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'azucaressingrasacarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="azucaressingrasacarbohidratos" id="azsgcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucaressingrasacarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      <tr>
        <td><b><p align="center">b. Con Grasa</td></p>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'azucarescongrasa', 'error')} required">
            <g:field type="number" size="7" name="azucarescongrasa" id="cantazucarescong" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucarescongrasa')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="85">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'azucarescongrasaenergia', 'error')} required">
            <g:field type="number" size="7" name="azucarescongrasaenergia" id="azcgenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucarescongrasaenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'azucarescongrasaproteina', 'error')} required">
            <g:field type="number" size="7" name="azucarescongrasaproteina"  id="azcgproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucarescongrasaproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="5">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'azucarescongrasalipidos', 'error')} required">
            <g:field type="number" size="7" name="azucarescongrasalipidos" id="azcglipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucarescongrasalipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="10">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'azucarescongrasacarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="azucarescongrasacarbohidratos" id="azcgcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucarescongrasacarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>


      <tr>
        <td align="center"><b><p align="center">Bebidas Alcoh&oacute;licas</td></p>
        <td align="center"></td>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'alcoholicas', 'error')} required">
            <g:field type="number" size="7" name="alcoholicas" id="cantalcohol" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'alcoholicas')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="140">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'alcoholicasenergia', 'error')} required">
            <g:field type="number" size="7" name="alcoholicasenergia" id="alcoenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'alcoholicasenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'alcoholicasproteina', 'error')} required">
            <g:field type="number" size="7" name="alcoholicasproteina" id="alcoproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'alcoholicasproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="0">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'alcoholicaslipidos', 'error')} required">
            <g:field type="number" size="7" name="alcoholicaslipidos" id="alcolipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'alcoholicaslipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center" title="20">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'alcoholicascarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="alcoholicascarbohidratos" id="alcocarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'alcoholicascarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

      
      
      <tr>
        <td align="center"><b><p align="center">Alimentos Libres en Energ&iacute;a</td></p>
        <td align="center"></td>
        <td align="center" title="Cantidad">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'alimentossinenergia', 'error')} required">
            <g:field type="number" size="7" name="alimentossinenergia" id="cantalimentoslibres" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'alimentossinenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>
      

      <tr>
        <td align="center" colspan="3" style="font-weight:bold; border:solid 2px #000;"><b><p align="center">TOTALES</td></P>
        <!--<td align="center"><input type="submit" value="Calcular" id="calcula" onmouseup="sumatotales()"/></td> -->
        <td align="center"style="font-weight:bold; border:solid 2px #000;">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'totalenergia', 'error')} required">
            <g:field type="number" size="7" name="totalenergia" id="totalenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'totalenergia')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center"style="font-weight:bold; border:solid 2px #000;">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'totalproteina', 'error')} required">
            <g:field type="number" size="7" name="totalproteina" id="totalproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'totalproteina')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center"style="font-weight:bold; border:solid 2px #000;">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'totallipidos', 'error')} required">
            <g:field type="number" size="7" name="totallipidos" id="totallipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'totallipidos')}"onfocus="this.blur()"/>
          </div>
        </td>
        <td align="center"style="font-weight:bold; border:solid 2px #000;">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'totalcarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="totalcarbohidratos" id="totalcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'totalcarbohidratos')}"onfocus="this.blur()"/>
          </div>
        </td>
      </tr>

    </tbody>
  </table>
    </div>

    <g:form>
      <fieldset class="buttons">
        <g:hiddenField name="id" value="${aporteNutricionalInstance?.id}" />
        <g:link class="edit" action="edit" id="${aporteNutricionalInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
      </fieldset>
    </g:form>
  </div>
 </body>
</html>
