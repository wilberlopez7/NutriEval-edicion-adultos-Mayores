<%@ page import="general.AporteNutricional" %>
<html>
  <head>
    
    <script language="javascript"> 
      var energiatot=0
      var proteinatot=0
      var lipidostot=0
      var carbotot=0
      
     function verdurastotal(){
    v1 = document.getElementById("cantverd").value;
    v2 = (v1*25);
    v3 = (v1*2);
    v4 =(v1*0);
    v5 = (v1*4);
    document.getElementById("verdenergia").value = v2;
        document.getElementById("verdeproteina").value = v3;
            document.getElementById("verdlipidos").value = v4;
                document.getElementById("verdecarbo").value = v5;
                energiatot+=v2
                proteinatot+=v3
                lipidostot+=v4
                carbotot+=v5
                
     }
     
       function frutastotal(){
    f1 = document.getElementById("cantfru").value;
    f2 = (f1*60);
    f3 = (f1*0);
    f4 =(f1*0);
    f5 = (f1*15);
    document.getElementById("fruenergia").value = f2;
        document.getElementById("fruproteina").value = f3;
            document.getElementById("frulipidos").value = f4;
                document.getElementById("frucarbo").value = f5;
                energiatot+=f2
                proteinatot+=f3
                lipidostot+=f4
                carbotot+=f5
     }
     
       function cerealessingrasatotal(){
    cs1 = document.getElementById("cantceres").value;
    cs2 = (cs1*70);
    cs3 = (cs1*2);
    cs4 =(cs1*0);
    cs5 = (cs1*15);
    document.getElementById("ceresinenergia").value = cs2;
        document.getElementById("ceresinproteina").value = cs3;
            document.getElementById("ceresinlipidos").value = cs4;
                document.getElementById("ceresincarbo").value = cs5;
                energiatot+=cs2
                proteinatot+=cs3
                lipidostot+=cs4
                carbotot+=cs5
     }
     
       function cerealescongrasatotal(){
    cc1 = document.getElementById("cantcerec").value;
    cc2 = (cc1*115);
    cc3 = (cc1*2);
    cc4 = (cc1*5);
    cc5 = (cc1*15);
    document.getElementById("cereconenergia").value = cc2;
        document.getElementById("cereconproteina").value = cc3;
            document.getElementById("cereconlipidos").value = cc4;
                document.getElementById("cereconcarbo").value = cc5;
                energiatot+=cc2
                proteinatot+=cc3
                lipidostot+=cc4
                carbotot+=cc5
     }
     
       function leguminosastotal(){
    le1 = document.getElementById("cantlegu").value;
    le2 = (le1*120);
    le3 = (le1*8);
    le4 =(le1*1);
    le5 = (le1*20);
    document.getElementById("leenergia").value = le2;
        document.getElementById("leproteina").value = le3;
            document.getElementById("lelipidos").value = le4;
                document.getElementById("lecarbo").value = le5;
                energiatot+=le2
                proteinatot+=le3
                lipidostot+=le4
                carbotot+=le5
     }
       function animalmuybajototal(){
    amb1 = document.getElementById("cantanimalmuyb").value;
    amb2 = (amb1*40);
    amb3 = (amb1*7);
    amb4 =(amb1*1);
    amb5 = (amb1*0);
    document.getElementById("ambenergia").value = amb2;
        document.getElementById("ambproteina").value = amb3;
            document.getElementById("amblipidos").value = amb4;
                document.getElementById("ambcarbo").value = amb5;
                energiatot+=amb2
                proteinatot+=amb3
                lipidostot+=amb4
                carbotot+=amb5
     }
     
       function animalbajototal(){
    ab1 = document.getElementById("cantanimalbajo").value;
    ab2 = (ab1*55);
    ab3 = (ab1*7);
    ab4 =(ab1*3);
    ab5 = (ab1*0);
    document.getElementById("abenergia").value = ab2;
        document.getElementById("abproteina").value = ab3;
            document.getElementById("ablipidos").value = ab4;
                document.getElementById("abcarbo").value = ab5;
                energiatot+=ab2
                proteinatot+=ab3
                lipidostot+=ab4
                carbotot+=ab5
     }
     
       function animalmoderadototal(){
    am1 = document.getElementById("cantanimalmoderado").value;
    am2 = (am1*75);
    am3 = (am1*7);
    am4 =(am1*5);
    am5 = (am1*0);
    document.getElementById("amenergia").value = am2;
        document.getElementById("amproteina").value = am3;
            document.getElementById("amlipidos").value = am4;
                document.getElementById("amcarbo").value = am5;
                energiatot+=am2
                proteinatot+=am3
                lipidostot+=am4
                carbotot+=am5
     }
     
       function animalaltototal(){
    aal1 = document.getElementById("cantanimalal").value;
    aal2 = (aal1*100);
    aal3 = (aal1*7);
    aal4 =(aal1*8);
    aal5 = (aal1*0);
    document.getElementById("aalenergia").value = aal2;
        document.getElementById("aalproteina").value = aal3;
            document.getElementById("aallipidos").value = aal4;
                document.getElementById("aalcarbo").value = aal5;
                energiatot+=aal2
                proteinatot+=aal3
                lipidostot+=aal4
                carbotot+=aal5
        }
     
       function lechedescremadatotal(){
    ld1 = document.getElementById("cantlechedescre").value;
    ld2 = (ld1*95);
    ld3 = (ld1*9);
    ld4 =(ld1*2);
    ld5 = (ld1*12);
    document.getElementById("ldenergia").value = ld2;
        document.getElementById("ldproteina").value = ld3;
            document.getElementById("ldlipidos").value = ld4;
                document.getElementById("ldcarbo").value = ld5;
                energiatot+=ld2
                proteinatot+=ld3
                lipidostot+=ld4
                carbotot+=ld5
     }
     
       function lechesemidescremadatotal(){
    ls1 = document.getElementById("cantlechesemi").value;
    ls2 = (ls1*110);
    ls3 = (ls1*9);
    ls4 =(ls1*4);
    ls5 = (ls1*12);
    document.getElementById("lsenergia").value = ls2;
        document.getElementById("lsproteina").value = ls3;
            document.getElementById("lslipidos").value = ls4;
                document.getElementById("lscarbo").value = ls5;
                energiatot+=ls2
                proteinatot+=ls3
                lipidostot+=ls4
                carbotot+=ls5
     }
     
       function lecheenteratotal(){
    len1 = document.getElementById("cantlecheent").value;
    len2 = (len1*150);
    len3 = (len1*9);
    len4 =(len1*8);
    len5 = (len1*12);
    document.getElementById("lenenergia").value = len2;
        document.getElementById("lenproteina").value = len3;
            document.getElementById("lenlipidos").value = len4;
                document.getElementById("lencarbo").value = len5;
                energiatot+=len2
                proteinatot+=len3
                lipidostot+=len4
                carbotot+=len5
     }
     
       function lecheazucartotal(){
    laz1 = document.getElementById("cantlecheazu").value;
    laz2 = (laz1*200);
    laz3 = (laz1*8);
    laz4 =(laz1*5);
    laz5 = (laz1*30);
    document.getElementById("lazenergia").value = laz2;
        document.getElementById("lazproteina").value = laz3;
            document.getElementById("lazlipidos").value = laz4;
                document.getElementById("lazcarbo").value = laz5;
                energiatot+=laz2
                proteinatot+=laz3
                lipidostot+=laz4
                carbotot+=laz5
     }
     
       function aceitessinproteinatotal(){
    asp1 = document.getElementById("cantaceitesinp").value;
    asp2 = (asp1*45);
    asp3 = (asp1*0);
    asp4 =(asp1*5);
    asp5 = (asp1*0);
    document.getElementById("aspenergia").value = asp2;
        document.getElementById("aspproteina").value = asp3;
            document.getElementById("asplipidos").value = asp4;
                document.getElementById("aspcarbo").value = asp5;
                energiatot+=asp2
                proteinatot+=asp3
                lipidostot+=asp4
                carbotot+=asp5
     }
     
       function aceitesconproteinatotal(){
    acp1 = document.getElementById("cantaceiteconp").value;
    acp2 = (acp1*70);
    acp3 = (acp1*3);
    acp4 =(acp1*5);
    acp5 = (acp1*3);
    document.getElementById("acpenergia").value = acp2;
        document.getElementById("acpproteina").value = acp3;
            document.getElementById("acplipidos").value = acp4;
                document.getElementById("acpcarbo").value = acp5;
                energiatot+=acp2
                proteinatot+=acp3
                lipidostot+=acp4
                carbotot+=acp5
     }
     
       function azucaressingrasatotal(){
    azsg1 = document.getElementById("cantazucaresing").value;
    azsg2 = (azsg1*40);
    azsg3 = (azsg1*0);
    azsg4 =(azsg1*0);
    azsg5 = (azsg1*10);
    document.getElementById("azsgenergia").value = azsg2;
        document.getElementById("azsgproteina").value = azsg3;
            document.getElementById("azsglipidos").value = azsg4;
                document.getElementById("azsgcarbo").value = azsg5;
                energiatot+=azsg2
                proteinatot+=azsg3
                lipidostot+=azsg4
                carbotot+=azsg5
     }
     
       function azucarescongrasatotal(){
    azcg1 = document.getElementById("cantazucarescong").value;
    azcg2 = (azcg1*85);
    azcg3 = (azcg1*0);
    azcg4 =(azcg1*5);
    azcg5 = (azcg1*10);
    document.getElementById("azcgenergia").value = azcg2;
        document.getElementById("azcgproteina").value = azcg3;
            document.getElementById("azcglipidos").value = azcg4;
                document.getElementById("azcgcarbo").value = azcg5;
                energiatot+=azcg2
                proteinatot+=azcg3
                lipidostot+=azcg4
                carbotot+=azcg5
     }
     
       function alimentoslibrestotal(){
    v1 = document.getElementById("cantalimentoslibres").value;

     }
     
       function alcoholicastotal(){
    alco1 = document.getElementById("cantalcohol").value;
    alco2 = (alco1*140);
    alco3 = (alco1*0);
    alco4 =(alco1*0);
    alco5 = (alco1*20);
    document.getElementById("alcoenergia").value = alco2;
        document.getElementById("alcoproteina").value = alco3;
            document.getElementById("alcolipidos").value = alco4;
                document.getElementById("alcocarbo").value = alco5;
                energiatot+=alco2
                proteinatot+=alco3
                lipidostot+=alco4
                carbotot+=alco5
     }
     
     function sumatotales(){
     document.getElementById("totalenergia").value = energiatot
     document.getElementById("totalproteina").value = proteinatot
     document.getElementById("totallipidos").value = lipidostot
     document.getElementById("totalcarbo").value = carbotot
     }
    </script>
   </head>
    <body>
      
        
    <div class="${hasErrors(bean: aporteNutricionalInstance, field: 'paciente', 'error')} required">
    <label for="paciente">
      <g:message code="aporteNutricional.paciente.label" default="Paciente" />
      <span class="required-indicator">*</span>
    </label>
    <g:select id="paciente" name="paciente.id" from="${general.Paciente.list()}" optionKey="id" required="" value="${aporteNutricionalInstance?.paciente?.id}" class="many-to-one"/>
  </div>
      <br/>
  <div align="center">
  
  <table style="width:100px" border="1" id="table1" >
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
            <g:field type="number" size="7" name="verduras" id="cantverd" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'verduras')}"onChange="verdurastotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="frutas" id ="cantfru" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'frutas')}"onChange="frutastotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="cerealessingrasa" id="cantceres"required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealessingrasa')}"onChange="cerealessingrasatotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="cerealescongrasa" id="cantcerec" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'cerealescongrasa')}"onChange="cerealescongrasatotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="leguminosas" id="cantlegu"required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'leguminosas')}"onChange="leguminosastotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="origenanimalmuybajo" id="cantanimalmuyb" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmuybajo')}"onChange="animalmuybajototal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="origenanimalbajo" id="cantanimalbajo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalbajo')}"onChange="animalbajototal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="origenanimalmoderado"  id="cantanimalmoderado" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalmoderado')}"onChange="animalmoderadototal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="origenanimalalto"  id="cantanimalal" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'origenanimalalto')}"onChange="animalaltototal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="lechedescremada" id="cantlechedescre" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechedescremada')}"onChange="lechedescremadatotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="lechesemidescremada" id="cantlechesemi" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lechesemidescremada')}"onChange="lechesemidescremadatotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="lecheentera" id="cantlecheent" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheentera')}"onChange="lecheenteratotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="lecheazucar" id="cantlecheazu" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'lecheazucar')}"onChange="lecheazucartotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="grasassinproteina" id="cantaceitesinp" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasassinproteina')}"onChange="aceitessinproteinatotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="grasasconproteina" id="cantaceiteconp" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'grasasconproteina')}"onChange="aceitesconproteinatotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="azucaressingrasa" id="cantazucaresing" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucaressingrasa')}"onChange="azucaressingrasatotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="azucarescongrasa" id="cantazucarescong" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'azucarescongrasa')}"onChange="azucarescongrasatotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="alcoholicas" id="cantalcohol" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'alcoholicas')}"onChange="alcoholicastotal(); sumatotales();"/>
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
            <g:field type="number" size="7" name="alimentossinenergia" id="cantalimentoslibres" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'alimentossinenergia')}"onChange="sumatotales()"/>
          </div>
        </td>
      </tr>
      

      <tr>
        <td align="center" colspan="3" style="font-weight:bold; border:solid 2px #000;"><b><p align="center">TOTALES</td></P>
        <!--<td align="center"><input type="submit" value="Calcular" id="calcula" onmouseup="sumatotales()"/></td> -->
        <td align="center"style="font-weight:bold; border:solid 2px #000;">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'totalenergia', 'error')} required">
            <g:field type="number" size="7" name="totalenergia" id="totalenergia" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'totalenergia')}"/>
          </div>
        </td>
        <td align="center"style="font-weight:bold; border:solid 2px #000;">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'totalproteina', 'error')} required">
            <g:field type="number" size="7" name="totalproteina" id="totalproteina" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'totalproteina')}"/>
          </div>
        </td>
        <td align="center"style="font-weight:bold; border:solid 2px #000;">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'totallipidos', 'error')} required">
            <g:field type="number" size="7" name="totallipidos" id="totallipidos" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'totallipidos')}"/>
          </div>
        </td>
        <td align="center"style="font-weight:bold; border:solid 2px #000;">
          <div class="fieldcontain ${hasErrors(bean: aporteNutricionalInstance, field: 'totalcarbohidratos', 'error')} required">
            <g:field type="number" size="7" name="totalcarbohidratos" id="totalcarbo" required="" value="${fieldValue(bean: aporteNutricionalInstance, field: 'totalcarbohidratos')}"/>
          </div>
        </td>
      </tr>

    </tbody>
  </table>
  </div>
   <script type="text/javascript">
   $(function() {

$("#table1 tr:even td","#grupo","subgrupo","#cantidad","#aportenutricional").css("background-color", "#FFF"); $("#table1 tr:odd td,#grupo,#subgrupo,#cantidad,#aportenutricional").css("background-color", "#DEECF9"); 
});
</script>

  
</body>
</html>


