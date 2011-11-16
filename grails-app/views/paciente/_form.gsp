<%@ page import="general.Paciente" %>
<html>
  <head>
    <r:require module="jquery-ui" />
    <script language="javascript"> 
     function multiplicar(){
    m1 = document.getElementById("peso").value;
    m2 = document.getElementById("talla").value;
    r = m1/(m2*m2);
    document.getElementById("imc").value = r;
    
    if(r<18){
       dbp=(display="Bajo Peso");
       document.getElementById("bajo").value = dbp;
    } else if(r>=18 && r<25){
       dpn=(display="Peso normal");
       document.getElementById("bajo").value = dpn;
    } else if (r>=25 && r<30){
       dsp=(display="Sobrepeso");
       document.getElementById("bajo").value = dsp;
    } else if(r>=30){
       dob=(display="Obesidad");
       document.getElementById("bajo").value = dob;
    }

    p1 = document.getElementById("pp").value;
    p2 = document.getElementById("ar").value;
    p3 = document.getElementById("pmb").value;
    p4 = document.getElementById("ps").value;
    p5 = document.getElementById("ed").value;
    
    m=((1.27*p1)+(0.87*p2)+(0.98*p3)+(4*p4)-62.69)
    document.getElementById("idealmujeres").value = m;

    h=((0.98*p1)+(1.16*p2)+(1.72*p3)+(3.7*p4)-81.69)
    document.getElementById("idealhombres").value = h;
     }
    
    function estaturaprob(){
      p22 = document.getElementById("ar").value;
      p55 = document.getElementById("ed").value;
      
      emp=((1.83*p22)-(0.24*p55)+(84.88))
      document.getElementById("estatprobmujeres").value = emp;
      ehp=((2.02*p22)-(0.04*p55)+(64.19))
      document.getElementById("estatprobhombres").value = ehp;
  
} 
 
    </script>
  </head>
  <div id="accordion">
    <h3><a href="#">Datos Personales</a></h3>
    <div>
      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'nombre', 'error')} required">
        <label for="nombre">
          <g:message code="paciente.nombre.label" default="Nombre" />
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="nombre" required="" value="${pacienteInstance?.nombre}"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'apellidos', 'error')} required">
        <label for="apellidos">
          <g:message code="paciente.apellidos.label" default="Apellidos" />
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="apellidos" required="" value="${pacienteInstance?.apellidos}"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'sexo', 'error')} required">
        <label for="sexo">
          <g:message code="paciente.sexo.label" default="Sexo" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="sexo" from="${pacienteInstance.constraints.sexo.inList}" required="" value="${pacienteInstance?.sexo}" valueMessagePrefix="paciente.sexo"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'edad', 'error')} required">
        <label for="edad">
          <g:message code="paciente.edad.label" default="Edad" />
          <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="edad" id="ed"required="" value="${fieldValue(bean: pacienteInstance, field: 'edad')}" onChange="multiplicar()"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'direccion', 'error')} required">
        <label for="direccion">
          <g:message code="paciente.direccion.label" default="Dirección" />
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="direccion" required="" value="${pacienteInstance?.direccion}"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'ciudad', 'error')} required">
        <label for="ciudad">
          <g:message code="paciente.ciudad.label" default="Ciudad" />
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="ciudad" required="" value="${pacienteInstance?.ciudad}"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'estado', 'error')} required">
        <label for="estado">
          <g:message code="paciente.estado.label" default="Estado" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="estado" from="${pacienteInstance.constraints.estado.inList}" required="" value="${pacienteInstance?.estado}" valueMessagePrefix="paciente.estado"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'cp', 'error')} required">
        <label for="cp">
          <g:message code="paciente.cp.label" default="Cp" />
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="cp" maxlength="5" required="" value="${pacienteInstance?.cp}"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'telefono', 'error')} required">
        <label for="telefono">
          <g:message code="paciente.telefono.label" default="Teléfono" />
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="telefono" pattern="${pacienteInstance.constraints.telefono.matches}" required="" value="${pacienteInstance?.telefono}"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'estadoCivil', 'error')} required">
        <label for="estadoCivil">
          <g:message code="paciente.estadoCivil.label" default="Estado Civil" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="estadoCivil" from="${pacienteInstance.constraints.estadoCivil.inList}" required="" value="${pacienteInstance?.estadoCivil}" valueMessagePrefix="paciente.estadoCivil"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'ocupacion', 'error')} required">
        <label for="ocupacion">
          <g:message code="paciente.ocupacion.label" default="Ocupación" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="ocupacion" from="${pacienteInstance.constraints.ocupacion.inList}" required="" value="${pacienteInstance?.ocupacion}" valueMessagePrefix="paciente.ocupacion"/>
      </div>
    </div>

    <h3><a href="#">Datos Antropométricos</a></h3>
    <div>
      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'peso', 'error')} required">
        <label for="peso">
          <g:message code="paciente.peso.label" default="Peso" />
          <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="peso" id="peso" required="" value="${fieldValue(bean: pacienteInstance, field: 'peso')}" onChange="multiplicar()"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'talla', 'error')} required">
        <label for="talla">
          <g:message code="paciente.talla.label" default="Estatura (m)" />
          <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="talla" id="talla" required="" value="${fieldValue(bean: pacienteInstance, field: 'talla')}" onChange="multiplicar()"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'IMC', 'error')} required">
        <label for="IMC">
          <g:message code="paciente.IMC.label" default="IMC" />
          <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="IMC" id="imc" required="" value="${fieldValue(bean: pacienteInstance, field: 'IMC')}" onChange="diagno()"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'diagnostico', 'error')} required">
        <label for="diagnostico">
          <g:message code="paciente.diagnostico.label" default="Diagnostico" />
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="diagnostico" id="bajo" required="" value="${fieldValue(bean: pacienteInstance, field: 'diagnostico')}"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'perimetroPantorrilla', 'error')} required">
        <label for="perimetroPantorrilla">
          <g:message code="paciente.perimetroPantorrilla.label" default="Perimetro Pantorrilla" />
          <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="perimetroPantorrilla" id="pp" required="" value="${fieldValue(bean: pacienteInstance, field: 'perimetroPantorrilla')}"onChange="multiplicar()"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'alturaRodilla', 'error')} required">
        <label for="alturaRodilla">
          <g:message code="paciente.alturaRodilla.label" default="Altura Rodilla" />
          <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="alturaRodilla" id="ar" required="" value="${fieldValue(bean: pacienteInstance, field: 'alturaRodilla')}"onChange="multiplicar(); estaturaprob();"/>
      </div>



      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'perimetroMedioBranquial', 'error')} required">
        <label for="perimetroMedioBranquial">
          <g:message code="paciente.perimetroMedioBranquial.label" default="Perímetro Medio Branquial" />
          <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="perimetroMedioBranquial" id="pmb" required="" value="${fieldValue(bean: pacienteInstance, field: 'perimetroMedioBranquial')}"onChange="multiplicar()"/>
      </div>
      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'panículoAdiposoSubrescapula', 'error')} required">
        <label for="panículoAdiposoSubrescapula">
          <g:message code="paciente.panículoAdiposoSubrescapula.label" default="Panículo Adiposo Subescapular (mm)" />
          <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="panículoAdiposoSubrescapula" id="ps" required="" value="${fieldValue(bean: pacienteInstance, field: 'panículoAdiposoSubrescapula')}" onChange="multiplicar()"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'pesoIdealHombres', 'error')} required">
        <label for="pesoIdealHombres">
          <g:message code="paciente.pesoIdealHombres.label" default="Peso Ideal Hombres" />
          <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="pesoIdealHombres" id="idealhombres" required="" value="${fieldValue(bean: pacienteInstance, field: 'pesoIdealHombres')}" onfocus="this.blur()"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'pesoIdealMujeres', 'error')} required">
        <label for="pesoIdealMujeres">
          <g:message code="paciente.pesoIdealMujeres.label" default="Peso Ideal Mujeres" />
          <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="pesoIdealMujeres" id="idealmujeres"required="" value="${fieldValue(bean: pacienteInstance, field: 'pesoIdealMujeres')}"onfocus="this.blur()"/>
      </div>
      <br>
      <p align="center"><b center>Estatura Ancianos Con Complicaciones</b></p>
      </br> 
      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'estaturaHombre', 'error')} required">
        <label for="estaturaHombre">
          <g:message code="paciente.estaturaHombre.label" default="Estatura Hombres" />

        </label>
        <g:field type="number" name="estaturaHombre" id="estatprobhombres"required="" value="${fieldValue(bean: pacienteInstance, field: 'estaturaHombre')}" onfocus="this.blur()"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'estaturaMujeres', 'error')} required">
        <label for="estaturaMujeres">
          <g:message code="paciente.estaturaMujeres.label" default="Estatura Mujeres" />

        </label>
        <g:field type="number" name="estaturaMujeres" id="estatprobmujeres"required="" value="${fieldValue(bean: pacienteInstance, field: 'estaturaMujeres')}" onfocus="this.blur()"/>
      </div>


      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'horasSueño', 'error')} required">
        <label for="horasSueño">
          <g:message code="paciente.horasSueño.label" default="Horas de Sueño" />
          <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="horasSueño" required="" value="${fieldValue(bean: pacienteInstance, field: 'horasSueño')}"/>
      </div>
      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'actividadFisica', 'error')} required">
        <label for="actividadFisica">
          <g:message code="paciente.actividadFisica.label" default="Actividad Física" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="actividadFisica" from="${pacienteInstance.constraints.actividadFisica.inList}" required="" value="${pacienteInstance?.actividadFisica}" valueMessagePrefix="paciente.actividadFisica"/>
      </div>
    </div>
    <h3><a href="#">Historia Clínica</a></h3>
    <div>
      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'diabetesMellitus', 'error')} required">
        <label for="diabetesMellitus">
          <g:message code="paciente.diabetesMellitus.label" default="Diabetes Mellitus" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="diabetesMellitus" from="${pacienteInstance.constraints.diabetesMellitus.inList}" required="" value="${pacienteInstance?.diabetesMellitus}" valueMessagePrefix="paciente.diabetesMellitus"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'alergias', 'error')} required">
        <label for="alergias">
          <g:message code="paciente.alergias.label" default="Alergias" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="alergias" from="${pacienteInstance.constraints.alergias.inList}" required="" value="${pacienteInstance?.alergias}" valueMessagePrefix="paciente.alergias"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'problemasRespiratorios', 'error')} required">
        <label for="problemasRespiratorios">
          <g:message code="paciente.problemasRespiratorios.label" default="Problemas Respiratorios" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="problemasRespiratorios" from="${pacienteInstance.constraints.problemasRespiratorios.inList}" required="" value="${pacienteInstance?.problemasRespiratorios}" valueMessagePrefix="paciente.problemasRespiratorios"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'cancer', 'error')} required">
        <label for="cancer">
          <g:message code="paciente.cancer.label" default="Cáncer" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="cancer" from="${pacienteInstance.constraints.cancer.inList}" required="" value="${pacienteInstance?.cancer}" valueMessagePrefix="paciente.cancer"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'enfermedadesCardiacas', 'error')} required">
        <label for="enfermedadesCardiacas">
          <g:message code="paciente.enfermedadesCardiacas.label" default="Enfermedades Cardíacas" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="enfermedadesCardiacas" from="${pacienteInstance.constraints.enfermedadesCardiacas.inList}" required="" value="${pacienteInstance?.enfermedadesCardiacas}" valueMessagePrefix="paciente.enfermedadesCardiacas"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'enfermedadesTiroides', 'error')} required">
        <label for="enfermedadesTiroides">
          <g:message code="paciente.enfermedadesTiroides.label" default="Enfermedades Tiroides" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="enfermedadesTiroides" from="${pacienteInstance.constraints.enfermedadesTiroides.inList}" required="" value="${pacienteInstance?.enfermedadesTiroides}" valueMessagePrefix="paciente.enfermedadesTiroides"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'enfermedadesriñon', 'error')} required">
        <label for="enfermedadesriñon">
          <g:message code="paciente.enfermedadesriñon.label" default="Enfermedades de Riñon" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="enfermedadesriñon" from="${pacienteInstance.constraints.enfermedadesriñon.inList}" required="" value="${pacienteInstance?.enfermedadesriñon}" valueMessagePrefix="paciente.enfermedadesriñon"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'hta', 'error')} required">
        <label for="hta">
          <g:message code="paciente.hta.label" default="HTA" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="hta" from="${pacienteInstance.constraints.hta.inList}" required="" value="${pacienteInstance?.hta}" valueMessagePrefix="paciente.hta"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'anemia', 'error')} required">
        <label for="anemia">
          <g:message code="paciente.anemia.label" default="Anemia" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="anemia" from="${pacienteInstance.constraints.anemia.inList}" required="" value="${pacienteInstance?.anemia}" valueMessagePrefix="paciente.anemia"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'acidoUrico', 'error')} required">
        <label for="acidoUrico">
          <g:message code="paciente.acidoUrico.label" default="Ácido Úrico" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="acidoUrico" from="${pacienteInstance.constraints.acidoUrico.inList}" required="" value="${pacienteInstance?.acidoUrico}" valueMessagePrefix="paciente.acidoUrico"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'obesidad', 'error')} required">
        <label for="obesidad">
          <g:message code="paciente.obesidad.label" default="Obesidad" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="obesidad" from="${pacienteInstance.constraints.obesidad.inList}" required="" value="${pacienteInstance?.obesidad}" valueMessagePrefix="paciente.obesidad"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'alcoholismo', 'error')} required">
        <label for="alcoholismo">
          <g:message code="paciente.alcoholismo.label" default="Alcoholismo" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="alcoholismo" from="${pacienteInstance.constraints.alcoholismo.inList}" required="" value="${pacienteInstance?.alcoholismo}" valueMessagePrefix="paciente.alcoholismo"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'tabaquismo', 'error')} required">
        <label for="tabaquismo">
          <g:message code="paciente.tabaquismo.label" default="Tabaquismo" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="tabaquismo" from="${pacienteInstance.constraints.tabaquismo.inList}" required="" value="${pacienteInstance?.tabaquismo}" valueMessagePrefix="paciente.tabaquismo"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'fatiga', 'error')} required">
        <label for="fatiga">
          <g:message code="paciente.fatiga.label" default="Fatiga" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="fatiga" from="${pacienteInstance.constraints.fatiga.inList}" required="" value="${pacienteInstance?.fatiga}" valueMessagePrefix="paciente.fatiga"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'padecimientoActual', 'error')} required">
        <label for="padecimientoActual">
          <g:message code="paciente.padecimientoActual.label" default="Padecimiento Actual" />
          <span class="required-indicator">*</span>
        </label>
        <textarea  name="padecimientoActual" required="" value="${pacienteInstance?.padecimientoActual}"/></textarea> 
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'usoMedicamentos', 'error')} required">
        <label for="usoMedicamentos">
          <g:message code="paciente.usoMedicamentos.label" default="Uso de Medicamentos" />
          <span class="required-indicator">*</span>
        </label>
        <textarea  name="usoMedicamentos" required="" value="${pacienteInstance?.usoMedicamentos}"/></textarea>
      </div>

    </div>
    <h3><a href="#">Historia Dietética</a></h3>
    <div>    
      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'comidasporDia', 'error')} required">
        <label for="comidasporDia">
          <g:message code="paciente.comidasporDia.label" default="Comidas por Día" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="comidasporDia" from="${pacienteInstance.constraints.comidasporDia.inList}" required="" value="${pacienteInstance?.comidasporDia}" valueMessagePrefix="paciente.comidasporDia"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'colaciones', 'error')} required">
        <label for="colaciones">
          <g:message code="paciente.colaciones.label" default="Colaciones" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="colaciones" from="${pacienteInstance.constraints.colaciones.inList}" required="" value="${pacienteInstance?.colaciones}" valueMessagePrefix="paciente.colaciones"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'lacteosporSemana', 'error')} required">
        <label for="lacteosporSemana">
          <g:message code="paciente.lacteosporSemana.label" default="Lácteos por Semana" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="lacteosporSemana" from="${pacienteInstance.constraints.lacteosporSemana.inList}" required="" value="${pacienteInstance?.lacteosporSemana}" valueMessagePrefix="paciente.lacteosporSemana"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'carnesRojasporSemana', 'error')} required">
        <label for="carnesRojasporSemana">
          <g:message code="paciente.carnesRojasporSemana.label" default="Carnes Rojas por Semana" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="carnesRojasporSemana" from="${pacienteInstance.constraints.carnesRojasporSemana.inList}" required="" value="${pacienteInstance?.carnesRojasporSemana}" valueMessagePrefix="paciente.carnesRojasporSemana"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'pescado', 'error')} required">
        <label for="pescado">
          <g:message code="paciente.pescado.label" default="Pescado" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="pescado" from="${pacienteInstance.constraints.pescado.inList}" required="" value="${pacienteInstance?.pescado}" valueMessagePrefix="paciente.pescado"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'aves', 'error')} required">
        <label for="aves">
          <g:message code="paciente.aves.label" default="Aves" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="aves" from="${pacienteInstance.constraints.aves.inList}" required="" value="${pacienteInstance?.aves}" valueMessagePrefix="paciente.aves"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'cereales', 'error')} required">
        <label for="cereales">
          <g:message code="paciente.cereales.label" default="Cereales" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="cereales" from="${pacienteInstance.constraints.cereales.inList}" required="" value="${pacienteInstance?.cereales}" valueMessagePrefix="paciente.cereales"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'aguaporDia', 'error')} required">
        <label for="aguaporDia">
          <g:message code="paciente.aguaporDia.label" default="Agua por Día" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="aguaporDia" from="${pacienteInstance.constraints.aguaporDia.inList}" required="" value="${pacienteInstance?.aguaporDia}" valueMessagePrefix="paciente.aguaporDia"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'huevo', 'error')} required">
        <label for="huevo">
          <g:message code="paciente.huevo.label" default="Huevo" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="huevo" from="${pacienteInstance.constraints.huevo.inList}" required="" value="${pacienteInstance?.huevo}" valueMessagePrefix="paciente.huevo"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'leguminosas', 'error')} required">
        <label for="leguminosas">
          <g:message code="paciente.leguminosas.label" default="Leguminosas" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="leguminosas" from="${pacienteInstance.constraints.leguminosas.inList}" required="" value="${pacienteInstance?.leguminosas}" valueMessagePrefix="paciente.leguminosas"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'verduras', 'error')} required">
        <label for="verduras">
          <g:message code="paciente.verduras.label" default="Verduras" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="verduras" from="${pacienteInstance.constraints.verduras.inList}" required="" value="${pacienteInstance?.verduras}" valueMessagePrefix="paciente.verduras"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'frutas', 'error')} required">
        <label for="frutas">
          <g:message code="paciente.frutas.label" default="Frutas" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="frutas" from="${pacienteInstance.constraints.frutas.inList}" required="" value="${pacienteInstance?.frutas}" valueMessagePrefix="paciente.frutas"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'grasas', 'error')} required">
        <label for="grasas">
          <g:message code="paciente.grasas.label" default="Grasas" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="grasas" from="${pacienteInstance.constraints.grasas.inList}" required="" value="${pacienteInstance?.grasas}" valueMessagePrefix="paciente.grasas"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'golosinas', 'error')} required">
        <label for="golosinas">
          <g:message code="paciente.golosinas.label" default="Golosinas" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="golosinas" from="${pacienteInstance.constraints.golosinas.inList}" required="" value="${pacienteInstance?.golosinas}" valueMessagePrefix="paciente.golosinas"/>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'otrosLiquidos', 'error')} required">
        <label for="otrosLiquidos">
          <g:message code="paciente.otrosLiquidos.label" default="Otros Líquidos" />
          <span class="required-indicator">*</span>
        </label>
        <g:select name="otrosLiquidos" from="${pacienteInstance.constraints.otrosLiquidos.inList}" required="" value="${pacienteInstance?.otrosLiquidos}" valueMessagePrefix="paciente.otrosLiquidos"/>
      </div>
      <br>
      <p align="center"><b center>Recordatorio 24 horas</b></p> 
      </br>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'desayuno', 'error')} required">
        <label for="desayuno">
          <g:message code="paciente.desayuno.label" default="Desayuno" />
          <span class="required-indicator">*</span>
        </label>
        <textarea  name="desayuno" required="" value="${pacienteInstance?.desayuno}"/></textarea>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'colacion', 'error')} required">
        <label for="colacion">
          <g:message code="paciente.colacion.label" default="Colación Desayuno" />
          <span class="required-indicator">*</span>
        </label>
        <textarea  name="colacion" required="" value="${pacienteInstance?.colacion}"/></textarea >
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'comida', 'error')} required">
        <label for="comida">
          <g:message code="paciente.comida.label" default="Comida" />
          <span class="required-indicator">*</span>
        </label>
        <textarea  name="comida" required="" value="${pacienteInstance?.comida}"/></textarea>
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'colacionComida', 'error')} required">
        <label for="colacionComida">
          <g:message code="paciente.colacionComida.label" default="Colación Comida" />
          <span class="required-indicator">*</span>
        </label>
        <textarea  name="colacionComida" required="" value="${pacienteInstance?.colacionComida}"/></textarea> 
      </div>

      <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'cena', 'error')} required">
        <label for="cena">
          <g:message code="paciente.cena.label" default="Cena" />
          <span class="required-indicator">*</span>
        </label>
        <textarea  name="cena" required="" value="${pacienteInstance?.cena}"/></textarea >
      </div>
      <!--
            <div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'aportenutricional', 'error')} ">
              <label for="aportenutricional">
                <g:message code="paciente.aportenutricional.label" default="Aportenutricional" />
      
              </label>
              <g:select id="aportenutricional" name="aportenutricional.id" from="${general.AporteNutricional.list()}" optionKey="id" value="${pacienteInstance?.aportenutricional?.id}" class="many-to-one" noSelection="['null': '']"/>
            </div>
      -->
    </div>
    <script type="text/javascript">
   $(function() {
                  $( "#accordion" ).accordion({
                collapsible: true,
                          fillSpace: true,
                       
                      
                  });
                
          });
          $(function() {
                  $( "#accordionResizer" ).resizable({

minHeight: 140,
resize: function() {
$( "#accordion" ).accordion( "resize" );
}
});

});
</script>
</html>


