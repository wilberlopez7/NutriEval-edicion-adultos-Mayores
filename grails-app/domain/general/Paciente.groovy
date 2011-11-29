package general
import general.*

class Paciente {
    String nombre
    String apellidos
    String sexo = 'M'
    BigDecimal edad
    String direccion
    String ciudad
    String estado = 'Nuevo Leon'
    String cp
    String telefono
    String estadoCivil = 'Casado(a)'
    String Ocupacion = 'Jubilado(a)'
        
    BigDecimal peso  
    BigDecimal talla 
    BigDecimal circunferenciaCintura
    BigDecimal IMC
    String diagnostico
    BigDecimal alturaRodilla 
    BigDecimal perimetroPantorrilla 
    BigDecimal perimetroMedioBranquial
    BigDecimal paniculoAdiposoSubrescapula
    BigDecimal PesoIdeal
    BigDecimal EstaturaConProblemas
 
    
        
    BigDecimal horasSueño 
    String actividadFisica = 'Sedentaria'
    String diabetesMellitus = 'No'
    String alergias = 'No'
    String problemasRespiratorios = 'No'
    String cancer = 'No'
    String enfermedadesCardiacas = 'No'
    String enfermedadesTiroides = 'No'
    String enfermedadesriñon = 'No'
    String hta = 'No'
    String anemia = 'No'
    String acidoUrico = 'No'
    String obesidad = 'No'
    String alcoholismo = 'No'
    String tabaquismo = 'No'
    String fatiga = 'No'
    String padecimientoActual
    String usoMedicamentos
           
    String comidasporDia = '3'
    String colaciones = '2'
    String lacteosporSemana = 'Ninguno'
    String carnesRojasporSemana = 'Ninguno'
    String pescado = 'Ninguno'
    String aves = 'Ninguno'
    String cereales = 'Ninguno'
    String aguaporDia = '2 litros al dia'
    String huevo = '3 por semana'
    String leguminosas = '2 por semana'
    String verduras = '3 por semana'
    String frutas = '4 por semana'
    String grasas = '4 por semana'
    String golosinas = '3 por semana'
    String otrosLiquidos = '3 por semana'

   
    
   
    
    static hasOne = [aportenutricional:AporteNutricional,recordatorio:Recordatorio]
  
    
    
    static constraints = {
        nombre (blank:false)
        apellidos (blank:false)
        sexo(blank:false, inList:['M','F'])
        edad(matches:"[0-9]{2}",blank:false)
        direccion(blank:false)
        ciudad(blank:false) 
        estado(blank:false, inList:['Nuevo Leon','Aguascalientes','Baja California','Baja California Sur','Campeche','Chiapas','Chihuahua','Coahuila','Colima','Distrito Federal','Durango','Estado de México','Guanajuato','Guerrero','Hidalgo','Jalisco','Michoacán','Morelos','Nayarit','Oaxaca','Puebla','Querétaro','Quintana Roo','San Luis Potosí','Sinaloa','Sonora','Tabasco','Tamaulipas','Tlaxcala','Veracruz','Yucatán','Zacatecas'])
        cp(minSize:5, maxSize:5, blank:false)
        telefono(minSize:10, maxSize:13, blank:false)
        estadoCivil (blank: false, inList:['Casado(a)','Soltero(a)','Divorciado(a)','Viudo(a)','Otro'])
        ocupacion (blank:false, inList:['Jubilado(a)','Profesionista', 'Ama de Casa','Campesino','Otra'])
   
 	peso (scale:2, precision: 8, blank:false)

        talla (matches:"[0-9][.]", scale:2, precision: 8, blank:false)
        circunferenciaCintura (matches:"[0-9][.]", scale:2, precision: 8, blank:false)
        alturaRodilla (matches:"[0-9]", scale:2, precision: 8, blank: false)
        IMC (matches:"[0-9]", scale:2, precision: 8, blank: false)
        diagnostico (blank:false)
        alturaRodilla(matches:"[0-9]", scale:2, precision: 8, blank:false)
        perimetroPantorrilla(matches:"[0-9]", scale:2, precision: 8, blank:false)
        perimetroMedioBranquial(matches:"[0-9]", scale:2, precision: 8, blank:false)
        paniculoAdiposoSubrescapula(matches:"[0-9]", scale:2, precision: 8, blank:false)
        PesoIdeal(matches:"[0-9]", scale:2, precision: 8, blank:false)
        EstaturaConProblemas (matches:"[0-9][.]", scale:2, precision: 8, blank:true)
           	
        horasSueño (matches:"[0-9]", scale:2, precision: 8, blank:false)
        actividadFisica (blank:false, inList:['Sedentaria', 'Moderada', 'Activa'])
        diabetesMellitus (blank:false, inList:['Si', 'No'])
        alergias (blank:false, inList:['Si', 'No'])
        problemasRespiratorios (blank:false, inList:['Si', 'No'])
        cancer (blank:false, inList:['Si', 'No'])
        enfermedadesCardiacas (blank:false, inList:['Si', 'No'])
        enfermedadesTiroides  (blank:false, inList:['Si', 'No'])
        enfermedadesriñon (blank:false, inList:['Si', 'No'])
        hta (blank:false, inList:['Si', 'No'])
        anemia (blank:false, inList:['Si', 'No'])
        acidoUrico (blank:false, inList:['Si', 'No'])
        obesidad (blank:false, inList:['Si', 'No'])
        alcoholismo (blank:false, inList:['Si', 'No'])
        tabaquismo (blank:false, inList:['Si', 'No'])
        fatiga (blank:false, inList:['Si', 'No'])
        padecimientoActual (blank:false)
        usoMedicamentos (blank:false)
        
        comidasporDia (blank:false, inList:['1','2','3','Mas'])
        colaciones (blank:false, inList:['Ninguno','1','2','3','Mas'])
        lacteosporSemana (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        carnesRojasporSemana (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        pescado (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        aves (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        cereales (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        aguaporDia (blank:false, inList:['1 litro al dia','2 litros al dia','3 litros al dia','4 litros al dia','mas'])
        huevo (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        leguminosas (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        verduras (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        frutas (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        grasas (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        golosinas (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        otrosLiquidos (blank:false, inList:['Ninguno','1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        
                
        aportenutricional(nullable:true)
        recordatorio(nullable:true)
        
                     
    }
    
    static mapping = {
        table 'pacientes'
    }
    
    String toString(){
        return nombre
    }
}
