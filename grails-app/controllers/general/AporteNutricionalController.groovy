package general

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class AporteNutricionalController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [aporteNutricionalInstanceList: AporteNutricional.list(params), aporteNutricionalInstanceTotal: AporteNutricional.count()]
    }

    def create() {
        [aporteNutricionalInstance: new AporteNutricional(params)]
    }

    def save() {
        def aporteNutricionalInstance = new AporteNutricional(params)
        if (!aporteNutricionalInstance.save(flush: true)) {
            render(view: "create", model: [aporteNutricionalInstance: aporteNutricionalInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'aporteNutricional.label', default: 'AporteNutricional'), aporteNutricionalInstance.id])
        redirect(action: "show", id: aporteNutricionalInstance.id)
    }

    def show() {
        def aporteNutricionalInstance = AporteNutricional.get(params.id)
        if (!aporteNutricionalInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'aporteNutricional.label', default: 'AporteNutricional'), params.id])
            redirect(action: "list")
            return
        }

        [aporteNutricionalInstance: aporteNutricionalInstance]
    }

    def edit() {
        def aporteNutricionalInstance = AporteNutricional.get(params.id)
        if (!aporteNutricionalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aporteNutricional.label', default: 'AporteNutricional'), params.id])
            redirect(action: "list")
            return
        }

        [aporteNutricionalInstance: aporteNutricionalInstance]
    }

    def update() {
        def aporteNutricionalInstance = AporteNutricional.get(params.id)
        if (!aporteNutricionalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aporteNutricional.label', default: 'AporteNutricional'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (aporteNutricionalInstance.version > version) {
                aporteNutricionalInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'aporteNutricional.label', default: 'AporteNutricional')] as Object[],
                          "Another user has updated this AporteNutricional while you were editing")
                render(view: "edit", model: [aporteNutricionalInstance: aporteNutricionalInstance])
                return
            }
        }

        aporteNutricionalInstance.properties = params

        if (!aporteNutricionalInstance.save(flush: true)) {
            render(view: "edit", model: [aporteNutricionalInstance: aporteNutricionalInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'aporteNutricional.label', default: 'AporteNutricional'), aporteNutricionalInstance.id])
        redirect(action: "show", id: aporteNutricionalInstance.id)
    }

    def delete() {
        def aporteNutricionalInstance = AporteNutricional.get(params.id)
        if (!aporteNutricionalInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'aporteNutricional.label', default: 'AporteNutricional'), params.id])
            redirect(action: "list")
            return
        }

        try {
            aporteNutricionalInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'aporteNutricional.label', default: 'AporteNutricional'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'aporteNutricional.label', default: 'AporteNutricional'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
