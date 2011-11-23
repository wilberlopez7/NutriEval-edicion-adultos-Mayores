package general

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class PacienteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [pacienteInstanceList: Paciente.list(params), pacienteInstanceTotal: Paciente.count()]
    }

    def create() {
        [pacienteInstance: new Paciente(params)]
    }

    def save() {
        def pacienteInstance = new Paciente(params)
        if (!pacienteInstance.save(flush: true)) {
            render(view: "create", model: [pacienteInstance: pacienteInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'paciente.label', default: 'Paciente'), pacienteInstance.id])
        redirect(action: "show", id: pacienteInstance.id)
    }

    def show() {
        def pacienteInstance = Paciente.get(params.id)
        if (!pacienteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "list")
            return
        }

        [pacienteInstance: pacienteInstance]
    }

    def edit() {
        def pacienteInstance = Paciente.get(params.id)
        if (!pacienteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "list")
            return
        }

        [pacienteInstance: pacienteInstance]
    }

    def update() {
        def pacienteInstance = Paciente.get(params.id)
        if (!pacienteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pacienteInstance.version > version) {
                pacienteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'paciente.label', default: 'Paciente')] as Object[],
                          "Another user has updated this Paciente while you were editing")
                render(view: "edit", model: [pacienteInstance: pacienteInstance])
                return
            }
        }

        pacienteInstance.properties = params

        if (!pacienteInstance.save(flush: true)) {
            render(view: "edit", model: [pacienteInstance: pacienteInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'paciente.label', default: 'Paciente'), pacienteInstance.id])
        redirect(action: "show", id: pacienteInstance.id)
    }

    def delete() {
        def pacienteInstance = Paciente.get(params.id)
        if (!pacienteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pacienteInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
