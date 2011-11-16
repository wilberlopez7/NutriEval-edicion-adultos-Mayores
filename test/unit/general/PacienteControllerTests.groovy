package general



import org.junit.*
import grails.test.mixin.*
import javax.servlet.http.HttpServletResponse

@TestFor(PacienteController)
@Mock(Paciente)
class PacienteControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/paciente/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pacienteInstanceList.size() == 0
        assert model.pacienteInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pacienteInstance != null
    }

    void testSave() {
        controller.save()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.save()

        assert model.pacienteInstance != null
        assert view == '/paciente/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/paciente/show/1'
        assert controller.flash.message != null
        assert Paciente.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/paciente/list'


        populateValidParams(params)
        def paciente = new Paciente(params)

        assert paciente.save() != null

        params.id = paciente.id

        def model = controller.show()

        assert model.pacienteInstance == paciente
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/paciente/list'


        populateValidParams(params)
        def paciente = new Paciente(params)

        assert paciente.save() != null

        params.id = paciente.id

        def model = controller.edit()

        assert model.pacienteInstance == paciente
    }

    void testUpdate() {

        controller.update()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/paciente/list'

        response.reset()


        populateValidParams(params)
        def paciente = new Paciente(params)

        assert paciente.save() != null

        // test invalid parameters in update
        params.id = paciente.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/paciente/edit"
        assert model.pacienteInstance != null

        paciente.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/paciente/show/$paciente.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        paciente.clearErrors()

        populateValidParams(params)
        params.id = paciente.id
        params.version = -1
        controller.update()

        assert view == "/paciente/edit"
        assert model.pacienteInstance != null
        assert model.pacienteInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/paciente/list'

        response.reset()

        populateValidParams(params)
        def paciente = new Paciente(params)

        assert paciente.save() != null
        assert Paciente.count() == 1

        params.id = paciente.id

        controller.delete()

        assert Paciente.count() == 0
        assert Paciente.get(paciente.id) == null
        assert response.redirectedUrl == '/paciente/list'
    }
}
