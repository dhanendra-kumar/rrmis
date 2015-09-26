package com.rrmis

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("hasAnyRole('SUPER_ADMIN', 'BRANCH_ADMIN', 'BRANCH_CLERK', 'RECORD_ROOM_ADMIN', 'RECORD_ROOM_CLERK')")
@Transactional(readOnly = true)
class SubDivisionOfficeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SubDivisionOffice.list(params), model:[subDivisionOfficeInstanceCount: SubDivisionOffice.count()]
    }

    def show(SubDivisionOffice subDivisionOfficeInstance) {
        respond subDivisionOfficeInstance
    }

    def create() {
        respond new SubDivisionOffice(params)
    }

    @Transactional
    def save(SubDivisionOffice subDivisionOfficeInstance) {
        if (subDivisionOfficeInstance == null) {
            notFound()
            return
        }

        if (subDivisionOfficeInstance.hasErrors()) {
            respond subDivisionOfficeInstance.errors, view:'create'
            return
        }

        subDivisionOfficeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'subDivisionOffice.label', default: 'SubDivisionOffice'), subDivisionOfficeInstance.id])
                redirect subDivisionOfficeInstance
            }
            '*' { respond subDivisionOfficeInstance, [status: CREATED] }
        }
    }

    def edit(SubDivisionOffice subDivisionOfficeInstance) {
        respond subDivisionOfficeInstance
    }

    @Transactional
    def update(SubDivisionOffice subDivisionOfficeInstance) {
        if (subDivisionOfficeInstance == null) {
            notFound()
            return
        }

        if (subDivisionOfficeInstance.hasErrors()) {
            respond subDivisionOfficeInstance.errors, view:'edit'
            return
        }

        subDivisionOfficeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SubDivisionOffice.label', default: 'SubDivisionOffice'), subDivisionOfficeInstance.id])
                redirect subDivisionOfficeInstance
            }
            '*'{ respond subDivisionOfficeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SubDivisionOffice subDivisionOfficeInstance) {

        if (subDivisionOfficeInstance == null) {
            notFound()
            return
        }

        subDivisionOfficeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SubDivisionOffice.label', default: 'SubDivisionOffice'), subDivisionOfficeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'subDivisionOffice.label', default: 'SubDivisionOffice'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def fetchAllSubDivisionOfficeByDistrictId(Long id) {
        District district = District.findById(id)
        List<SubDivisionOffice> subDivisionOfficeList = SubDivisionOffice.findAllByDistrict(district)
        render view: "selectBox", model: [subDivisionOfficeList: subDivisionOfficeList]
    }
}
