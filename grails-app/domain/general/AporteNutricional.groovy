package general

class AporteNutricional {
    BigDecimal verdurasenergia
    BigDecimal verdurasproteina
    BigDecimal verduraslipidos
    BigDecimal verdurascarbohidratos
    BigDecimal frutasenergia
    BigDecimal frutasproteina
    BigDecimal frutaslipidos
    BigDecimal frutascarbohidratos
    BigDecimal cerealessingrasaenergia
    BigDecimal cerealessingrasaproteina
    BigDecimal cerealessingrasalipidos
    BigDecimal cerealessingrasacarbohidratos
    BigDecimal cerealescongrasaenergia
    BigDecimal cerealescongrasaproteina
    BigDecimal cerealescongrasalipidos
    BigDecimal cerealescongrasacarbohidratos
    BigDecimal leguminosasenergia
    BigDecimal leguminosasproteina
    BigDecimal leguminosaslipidos
    BigDecimal leguminosascarbohidratos
    BigDecimal origenanimalmuybajoenergia
    BigDecimal origenanimalmuybajoproteina
    BigDecimal origenanimalmuybajolipidos
    BigDecimal origenanimalmuybajocarbohidratos
    BigDecimal origenanimalbajoenergia
    BigDecimal origenanimalbajoproteinas
    BigDecimal origenanimalbajolipidos
    BigDecimal origenanimalbajocarbohidratos
    BigDecimal origenanimalmoderadoenergia
    BigDecimal origenanimalmoderadoproteina
    BigDecimal origenanimalmoderadolipidos
    BigDecimal origenanimalmoderadocarbohidratos
    BigDecimal origenanimalaltoenergia
    BigDecimal origenanimalaltoproteina
    BigDecimal origenanimalaltolipidos
    BigDecimal origenanimalaltocarbohidratos
    BigDecimal lechedescremadaenergia
    BigDecimal lechedescremadaproteina
    BigDecimal lechedescremadalipidos
    BigDecimal lechedescremadacarbohidratos
    BigDecimal lechesemidescremadaenergia
    BigDecimal lechesemidescremadaproteina
    BigDecimal lechesemidescremadalipidos
    BigDecimal lechesemidescremadacarbohidratos
    BigDecimal lecheenteraenergia
    BigDecimal lecheenteraproteina
    BigDecimal lecheenteralipidos
    BigDecimal lecheenteracarbohidratos
    BigDecimal lecheazucarenergia
    BigDecimal lecheazucarproteina
    BigDecimal lecheazucarlipidos
    BigDecimal lecheazucarcarbohidratos
    BigDecimal grasassinproteinaenergia
    BigDecimal grasassinproteinaproteina
    BigDecimal grasassinproteinalipidos
    BigDecimal grasassinproteinacarbohidratos
    BigDecimal grasasconproteinaenergia
    BigDecimal grasasconproteinaproteina
    BigDecimal grasasconproteinalipidos
    BigDecimal grasasconproteinacarbohidratos
    BigDecimal azucaressingrasaenergia
    BigDecimal azucaressingrasaproteina
    BigDecimal azucaressingrasalipidos
    BigDecimal azucaressingrasacarbohidratos
    BigDecimal azucarescongrasaenergia
    BigDecimal azucarescongrasaproteina
    BigDecimal azucarescongrasalipidos
    BigDecimal azucarescongrasacarbohidratos
    BigDecimal alimentossinenergia
    BigDecimal alcoholicasenergia
    BigDecimal alcoholicasproteina
    BigDecimal alcoholicaslipidos
    BigDecimal alcoholicascarbohidratos
    
    BigDecimal verduras
    BigDecimal frutas
    BigDecimal cerealessingrasa
    BigDecimal cerealescongrasa
    BigDecimal leguminosas
    BigDecimal origenanimalmuybajo
    BigDecimal origenanimalbajo
    BigDecimal origenanimalmoderado
    BigDecimal origenanimalalto
    BigDecimal lechedescremada
    BigDecimal lechesemidescremada
    BigDecimal lecheentera
    BigDecimal lecheazucar
    BigDecimal grasassinproteina
    BigDecimal grasasconproteina
    BigDecimal azucaressingrasa
    BigDecimal azucarescongrasa
    BigDecimal alcoholicas
    
    BigDecimal totalenergia
    BigDecimal totalproteina
    BigDecimal totallipidos
    BigDecimal totalcarbohidratos
    
    static belongsTo= [paciente:Paciente]

    static constraints = {
        verdurasenergia(scale:2, precision: 8, blank:false)
        verdurasproteina(scale:2, precision: 8, blank:false)
        verduraslipidos(scale:2, precision: 8, blank:false)
        verdurascarbohidratos(scale:2, precision: 8, blank:false)
        frutasenergia(scale:2, precision: 8, blank:false)
        frutasproteina(scale:2, precision: 8, blank:false)
        frutaslipidos(scale:2, precision: 8, blank:false)
        frutascarbohidratos(scale:2, precision: 8, blank:false)
        cerealescongrasaenergia(scale:2, precision: 8, blank:false)
        cerealescongrasaproteina(scale:2, precision: 8, blank:false)
        cerealescongrasalipidos(scale:2, precision: 8, blank:false)
        cerealescongrasacarbohidratos(scale:2, precision: 8, blank:false)
        cerealessingrasaenergia(scale:2, precision: 8, blank:false)
        cerealessingrasaproteina(scale:2, precision: 8, blank:false)
        cerealessingrasalipidos(scale:2, precision: 8, blank:false)
        cerealessingrasacarbohidratos(scale:2, precision: 8, blank:false)
        leguminosasenergia(scale:2, precision: 8, blank:false)
        leguminosasproteina(scale:2, precision: 8, blank:false)
        leguminosaslipidos(scale:2, precision: 8, blank:false)
        leguminosascarbohidratos(scale:2, precision: 8, blank:false)
        origenanimalmuybajoenergia(scale:2, precision: 8, blank:false)
        origenanimalmuybajoproteina(scale:2, precision: 8, blank:false)
        origenanimalmuybajolipidos(scale:2, precision: 8, blank:false)
        origenanimalmuybajocarbohidratos(scale:2, precision: 8, blank:false)
        origenanimalbajoenergia(scale:2, precision: 8, blank:false)
        origenanimalbajoproteinas(scale:2, precision: 8, blank:false)
        origenanimalbajolipidos(scale:2, precision: 8, blank:false)
        origenanimalbajocarbohidratos(scale:2, precision: 8, blank:false)
        origenanimalmoderadoenergia(scale:2, precision: 8, blank:false)
        origenanimalmoderadoproteina(scale:2, precision: 8, blank:false)
        origenanimalmoderadolipidos(scale:2, precision: 8, blank:false)
        origenanimalmoderadocarbohidratos(scale:2, precision: 8, blank:false)
        origenanimalaltoenergia(scale:2, precision: 8, blank:false)
        origenanimalaltoproteina(scale:2, precision: 8, blank:false)
        origenanimalaltolipidos(scale:2, precision: 8, blank:false)
        origenanimalaltocarbohidratos(scale:2, precision: 8, blank:false)
        lechedescremadaenergia(scale:2, precision: 8, blank:false)
        lechedescremadaproteina(scale:2, precision: 8, blank:false)
        lechedescremadalipidos(scale:2, precision: 8, blank:false)
        lechedescremadacarbohidratos(scale:2, precision: 8, blank:false)
        lechesemidescremadaenergia(scale:2, precision: 8, blank:false)
        lechesemidescremadaproteina(scale:2, precision: 8, blank:false)
        lechesemidescremadalipidos(scale:2, precision: 8, blank:false)
        lechesemidescremadacarbohidratos(scale:2, precision: 8, blank:false)
        lecheenteraenergia(scale:2, precision: 8, blank:false)
        lecheenteraproteina(scale:2, precision: 8, blank:false)
        lecheenteralipidos(scale:2, precision: 8, blank:false)
        lecheenteracarbohidratos(scale:2, precision: 8, blank:false)
        lecheazucarenergia(scale:2, precision: 8, blank:false)
        lecheazucarproteina(scale:2, precision: 8, blank:false)
        lecheazucarlipidos(scale:2, precision: 8, blank:false)
        lecheazucarcarbohidratos(scale:2, precision: 8, blank:false)
        grasassinproteinaenergia(scale:2, precision: 8, blank:false)
        grasassinproteinaproteina(scale:2, precision: 8, blank:false)
        grasassinproteinalipidos(scale:2, precision: 8, blank:false)
        grasassinproteinacarbohidratos(scale:2, precision: 8, blank:false)
        grasasconproteinaenergia(scale:2, precision: 8, blank:false)
        grasasconproteinaproteina(scale:2, precision: 8, blank:false)
        grasasconproteinalipidos(scale:2, precision: 8, blank:false)
        grasasconproteinacarbohidratos(scale:2, precision: 8, blank:false)
        azucaressingrasaenergia(scale:2, precision: 8, blank:false)
        azucaressingrasaproteina(scale:2, precision: 8, blank:false)
        azucaressingrasalipidos(scale:2, precision: 8, blank:false)
        azucaressingrasacarbohidratos(scale:2, precision: 8, blank:false)
        azucarescongrasaenergia(scale:2, precision: 8, blank:false)
        azucarescongrasaproteina(scale:2, precision: 8, blank:false)
        azucarescongrasalipidos(scale:2, precision: 8, blank:false)
        azucarescongrasacarbohidratos(scale:2, precision: 8, blank:false)
        alimentossinenergia(scale:2, precision: 8, blank:false)
        alcoholicasenergia(scale:2, precision: 8, blank:false)
        alcoholicasproteina(scale:2, precision: 8, blank:false)
        alcoholicaslipidos(scale:2, precision: 8, blank:false)
        alcoholicascarbohidratos(scale:2, precision: 8, blank:false)
        
        verduras(scale:2, precision: 8, blank:false)
        frutas(scale:2, precision: 8, blank:false)
        cerealessingrasa(scale:2, precision: 8, blank:false)
        cerealescongrasa(scale:2, precision: 8, blank:false)
        leguminosas(scale:2, precision: 8, blank:false)
        origenanimalmuybajo(scale:2, precision: 8, blank:false)
        origenanimalbajo(scale:2, precision: 8, blank:false)
        origenanimalmoderado(scale:2, precision: 8, blank:false)
        origenanimalalto(scale:2, precision: 8, blank:false)
        lechedescremada(scale:2, precision: 8, blank:false)
        lechesemidescremada(scale:2, precision: 8, blank:false)
        lecheentera(scale:2, precision: 8, blank:false)
        lecheazucar(scale:2, precision: 8, blank:false)
        grasassinproteina(scale:2, precision: 8, blank:false)
        grasasconproteina(scale:2, precision: 8, blank:false)
        azucaressingrasa(scale:2, precision: 8, blank:false)
        azucarescongrasa(scale:2, precision: 8, blank:false)
        alcoholicas(scale:2, precision: 8, blank:false)
        
    }
    
    static mapping = {
        table 'aportenutricional'
    }
    
    String toString(){
        return paciente
    }
}
