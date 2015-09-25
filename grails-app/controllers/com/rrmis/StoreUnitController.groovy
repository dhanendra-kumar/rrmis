package com.rrmis



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StoreUnitController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StoreUnit.list(params), model:[storeUnitInstanceCount: StoreUnit.count()]
    }

    def show(StoreUnit storeUnitInstance) {
        respond storeUnitInstance
    }

    def create() {
        respond new StoreUnit(params)
    }

    @Transactional
    def save(StoreUnit storeUnitInstance) {
        if (storeUnitInstance == null) {
            notFound()
            return
        }

        if (storeUnitInstance.hasErrors()) {
            respond storeUnitInstance.errors, view:'create'
            return
        }

        storeUnitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'storeUnit.label', default: 'StoreUnit'), storeUnitInstance.id])
                redirect storeUnitInstance
            }
            '*' { respond storeUnitInstance, [status: CREATED] }
        }
    }

    def edit(StoreUnit storeUnitInstance) {
        respond storeUnitInstance
    }

    @Transactional
    def update(StoreUnit storeUnitInstance) {
        if (storeUnitInstance == null) {
            notFound()
            return
        }

        if (storeUnitInstance.hasErrors()) {
            respond storeUnitInstance.errors, view:'edit'
            return
        }

        storeUnitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StoreUnit.label', default: 'StoreUnit'), storeUnitInstance.id])
                redirect storeUnitInstance
            }
            '*'{ respond storeUnitInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StoreUnit storeUnitInstance) {

        if (storeUnitInstance == null) {
            notFound()
            return
        }

        storeUnitInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StoreUnit.label', default: 'StoreUnit'), storeUnitInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'storeUnit.label', default: 'StoreUnit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
