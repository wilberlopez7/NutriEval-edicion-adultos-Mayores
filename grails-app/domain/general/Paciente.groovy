package general
import general.*

class Paciente {
    String nombre
    String apellidos
    String sexo = 'M'
    BigDecimal edad
    String direccion
    String ciudad
    String estado = 'Aguascalientes'
    String cp
    String telefono
    String estadoCivil = 'Soltero'
    String Ocupacion = 'Profesionista'
        
    BigDecimal peso  
    BigDecimal talla 
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
           
    String comidasporDia = '1'
    String colaciones = '1'
    String lacteosporSemana = '1 por semana'
    String carnesRojasporSemana = '1 por semana'
    String pescado = '1 por semana'
    String aves = '1 por semana'
    String cereales = '1 por semana'
    String aguaporDia = '1 litro al dia'
    String huevo = '1 por semana'
    String leguminosas = '1 por semana'
    String verduras = '1 por semana'
    String frutas = '1 por semana'
    String grasas = '1 por semana'
    String golosinas = '1 por semana'
    String otrosLiquidos = '1 por semana'

    String desayuno
    String colacion
    String comida
    String colacionComida
    String cena
    
    
    static hasOne = [aportenutricional:AporteNutricional]
    
    static constraints = {
        nombre (blank:false)
        apellidos (blank:false)
        sexo(blank:false, inList:['M','F'])
        edad(matches:"[0-9]{2}",blank:false)
        direccion(blank:false)
        ciudad(blank:false) 
        estado(blank:false, inList:['Aguascalientes','Baja California','Baja California Sur','Campeche','Chiapas','Chihuahua','Coahuila','Colima','Distrito Federal','Durango','Estado de México','Guanajuato','Guerrero','Hidalgo','Jalisco','Michoacán','Morelos','Nayarit','Nuevo León','Oaxaca','Puebla','Querétaro','Quintana Roo','San Luis Potosí','Sinaloa','Sonora','Tabasco','Tamaulipas','Tlaxcala','Veracruz','Yucatán','Zacatecas'])
        cp(minSize:5, maxSize:5, blank:false)
        telefono(matches:"[0-9]{10}", blank:false)
        estadoCivil (blank: false, inList:['Soltero(a)', 'Casado(a)', 'Divorciado(a)','Viudo(a)','Otro'])
        ocupacion (blank:false, inList:['Profesionista', 'Ama de Casa', 'Jubilado','Campesino','Otra'])
   
 	peso (scale:2, precision: 8, blank:false)

        talla (matches:"[0-9][.]", scale:2, precision: 8, blank:false)
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
        colaciones (blank:false, inList:['1','2','3','Mas'])
        lacteosporSemana (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        carnesRojasporSemana (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        pescado (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        aves (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        cereales (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        aguaporDia (blank:false, inList:['1 litro al dia','2 litros al dia','3 litros al dia','4 litros al dia','mas'])
        huevo (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        leguminosas (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        verduras (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        frutas (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        grasas (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        golosinas (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        otrosLiquidos (blank:false, inList:['1 por semana','2 por semana','3 por semana','4 por semana','5 por semana','6 por semana','Toda la semana'])
        
        
        desayuno (blank:false)
        colacion (blank:false)
        comida  (blank:false)
        colacionComida (blank:false)
        cena (blank:false)
        
        aportenutricional(nullable:true)
        
                     
    }
    
    static mapping = {
        table 'pacientes'
    }
    
    String toString(){
        return nombre
    }
}
