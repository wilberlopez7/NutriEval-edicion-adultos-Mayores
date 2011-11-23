class BootStrap {

    def springSecurityService
    
    def init = { servletContext ->
        log.info 'iniciando la aplicacion'
        log.info 'Checando Roles'
        def rolAdmin=general.Rol.findByAuthority('ROLE_ADMIN')
        if(!rolAdmin){ 
            rolAdmin=new general.Rol(authority:'ROLE_ADMIN').save()       
        }
        
        
        log.info "Validando usuarios"
        def admin = general.UsuarioRol.findByRol(rolAdmin)
        admin = new general.Usuario(
            username:'admin'
            ,password:'yepb'
        )
        admin.save(flush:true)
        general.UsuarioRol.create(admin, rolAdmin, true)
    }
        
        
    def destroy = {
    }
}
