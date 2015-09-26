package com.rrmis

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("hasRole('SUPER_ADMIN')")
@Transactional(readOnly = true)
class RecordRoomController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RecordRoom.list(params), model:[recordRoomInstanceCount: RecordRoom.count()]
    }

    def show(RecordRoom recordRoomInstance) {
        respond recordRoomInstance
    }

    def create() {
        respond new RecordRoom(params)
    }

    @Transactional
    def save(RecordRoom recordRoomInstance) {
        if (recordRoomInstance == null) {
            notFound()
            return
        }

        if (recordRoomInstance.hasErrors()) {
            respond recordRoomInstance.errors, view:'create'
            return
        }

        recordRoomInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'recordRoom.label', default: 'RecordRoom'), recordRoomInstance.id])
                redirect recordRoomInstance
            }
            '*' { respond recordRoomInstance, [status: CREATED] }
        }
    }

    def edit(RecordRoom recordRoomInstance) {
        respond recordRoomInstance
    }

    @Transactional
    def update(RecordRoom recordRoomInstance) {
        if (recordRoomInstance == null) {
            notFound()
            return
        }

        if (recordRoomInstance.hasErrors()) {
            respond recordRoomInstance.errors, view:'edit'
            return
        }

        recordRoomInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RecordRoom.label', default: 'RecordRoom'), recordRoomInstance.id])
                redirect recordRoomInstance
            }
            '*'{ respond recordRoomInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RecordRoom recordRoomInstance) {

        if (recordRoomInstance == null) {
            notFound()
            return
        }

        recordRoomInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RecordRoom.label', default: 'RecordRoom'), recordRoomInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'recordRoom.label', default: 'RecordRoom'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
