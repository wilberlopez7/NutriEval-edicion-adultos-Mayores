package general

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class InicioController {

    def index() { 
        log.debug "Mostrando pagina de inicio"
    }
}
