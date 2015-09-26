package com.rrmis

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("hasAnyRole('SUPER_ADMIN', 'BRANCH_ADMIN', 'BRANCH_CLERK', 'RECORD_ROOM_ADMIN', 'RECORD_ROOM_CLERK')")
@Transactional(readOnly = true)
class ShelveController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Shelve.list(params), model:[shelveInstanceCount: Shelve.count()]
    }

    def show(Shelve shelveInstance) {
        respond shelveInstance
    }

    def create() {
        respond new Shelve(params)
    }

    @Transactional
    def save(Shelve shelveInstance) {
        if (shelveInstance == null) {
            notFound()
            return
        }

        if (shelveInstance.hasErrors()) {
            respond shelveInstance.errors, view:'create'
            return
        }

        shelveInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'shelve.label', default: 'Shelve'), shelveInstance.id])
                redirect shelveInstance
            }
            '*' { respond shelveInstance, [status: CREATED] }
        }
    }

    def edit(Shelve shelveInstance) {
        respond shelveInstance
    }

    @Transactional
    def update(Shelve shelveInstance) {
        if (shelveInstance == null) {
            notFound()
            return
        }

        if (shelveInstance.hasErrors()) {
            respond shelveInstance.errors, view:'edit'
            return
        }

        shelveInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Shelve.label', default: 'Shelve'), shelveInstance.id])
                redirect shelveInstance
            }
            '*'{ respond shelveInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Shelve shelveInstance) {

        if (shelveInstance == null) {
            notFound()
            return
        }

        shelveInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Shelve.label', default: 'Shelve'), shelveInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'shelve.label', default: 'Shelve'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def fetchAllShelveByRackId(Long id) {
        Rack rack = Rack.findById(id)
        List<Shelve> shelves = Shelve.findAllByRack(rack)
        render view: "selectBox", model: [shelves: shelves]
    }
}
