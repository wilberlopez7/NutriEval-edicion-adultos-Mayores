package general



import org.junit.*
import grails.test.mixin.*
import javax.servlet.http.HttpServletResponse

@TestFor(AporteNutricionalController)
@Mock(AporteNutricional)
class AporteNutricionalControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/aporteNutricional/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.aporteNutricionalInstanceList.size() == 0
        assert model.aporteNutricionalInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.aporteNutricionalInstance != null
    }

    void testSave() {
        controller.save()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.save()

        assert model.aporteNutricionalInstance != null
        assert view == '/aporteNutricional/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/aporteNutricional/show/1'
        assert controller.flash.message != null
        assert AporteNutricional.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/aporteNutricional/list'


        populateValidParams(params)
        def aporteNutricional = new AporteNutricional(params)

        assert aporteNutricional.save() != null

        params.id = aporteNutricional.id

        def model = controller.show()

        assert model.aporteNutricionalInstance == aporteNutricional
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/aporteNutricional/list'


        populateValidParams(params)
        def aporteNutricional = new AporteNutricional(params)

        assert aporteNutricional.save() != null

        params.id = aporteNutricional.id

        def model = controller.edit()

        assert model.aporteNutricionalInstance == aporteNutricional
    }

    void testUpdate() {

        controller.update()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/aporteNutricional/list'

        response.reset()


        populateValidParams(params)
        def aporteNutricional = new AporteNutricional(params)

        assert aporteNutricional.save() != null

        // test invalid parameters in update
        params.id = aporteNutricional.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/aporteNutricional/edit"
        assert model.aporteNutricionalInstance != null

        aporteNutricional.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/aporteNutricional/show/$aporteNutricional.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        aporteNutricional.clearErrors()

        populateValidParams(params)
        params.id = aporteNutricional.id
        params.version = -1
        controller.update()

        assert view == "/aporteNutricional/edit"
        assert model.aporteNutricionalInstance != null
        assert model.aporteNutricionalInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/aporteNutricional/list'

        response.reset()

        populateValidParams(params)
        def aporteNutricional = new AporteNutricional(params)

        assert aporteNutricional.save() != null
        assert AporteNutricional.count() == 1

        params.id = aporteNutricional.id

        controller.delete()

        assert AporteNutricional.count() == 0
        assert AporteNutricional.get(aporteNutricional.id) == null
        assert response.redirectedUrl == '/aporteNutricional/list'
    }
}
