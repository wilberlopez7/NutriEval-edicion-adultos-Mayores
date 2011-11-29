class BootStrap {

    def springSecurityService
    
    def init = { servletContext ->
        log.info 'iniciando la aplicacion'
        log.info 'Checando Roles'
        def rolAdmin=general.Rol.findByAuthority('ROLE_ADMIN')
        if(!rolAdmin){ 
            rolAdmin=new general.Rol(authority:'ROLE_ADMIN').save(validate: true , flush: true)       
        }
        
        
        log.info "Validando usuarios"
        def admin = general.UsuarioRol.findByRol(rolAdmin)
        if(!admin){
        admin = new general.Usuario(
            username:'admin'
            ,password:'yepb'
        )
        admin.save(validate: true , flush: true)
        general.UsuarioRol.create(admin, rolAdmin, true)
    }
    }    
        
    def destroy = {
    }
}
