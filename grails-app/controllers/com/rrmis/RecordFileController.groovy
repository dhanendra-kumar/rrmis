package com.rrmis

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("hasAnyRole('SUPER_ADMIN', 'BRANCH_ADMIN', 'BRANCH_CLERK', 'RECORD_ROOM_ADMIN', 'RECORD_ROOM_CLERK')")
@Transactional(readOnly = true)
class RecordFileController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RecordFile.list(params), model:[recordFileInstanceCount: RecordFile.count()]
    }

    def show(RecordFile recordFileInstance) {
        respond recordFileInstance
    }

    def create() {
        respond new RecordFile(params)
    }

    @Transactional
    def save(RecordFile recordFileInstance) {
        if (recordFileInstance == null) {
            notFound()
            return
        }

        if (recordFileInstance.hasErrors()) {
            respond recordFileInstance.errors, view:'create'
            return
        }
        recordFileInstance.consignDate = new Date()
        recordFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'recordFile.label', default: 'RecordFile'), recordFileInstance.id])
                redirect recordFileInstance
            }
            '*' { respond recordFileInstance, [status: CREATED] }
        }
    }

    def edit(RecordFile recordFileInstance) {
        respond recordFileInstance
    }

    @Transactional
    def update(RecordFile recordFileInstance) {
        if (recordFileInstance == null) {
            notFound()
            return
        }

        if (recordFileInstance.hasErrors()) {
            respond recordFileInstance.errors, view:'edit'
            return
        }

        recordFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RecordFile.label', default: 'RecordFile'), recordFileInstance.id])
                redirect recordFileInstance
            }
            '*'{ respond recordFileInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RecordFile recordFileInstance) {

        if (recordFileInstance == null) {
            notFound()
            return
        }

        recordFileInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RecordFile.label', default: 'RecordFile'), recordFileInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'recordFile.label', default: 'RecordFile'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def consignFile() {
        List<District> districtList = District.findAll()
        render(view: "consignFile", model: [districtList: districtList])
    }

    def consignFileForm(Long id) {
        render template: "consignFileForm", model: [shelveId: id]
    }

    def generalRegister() {
        List<RecordFile> recordFileInstanceList = RecordFile.findAllByStatusInList([Status.DRAFT, Status.SENT_TO_RECORD_ROOM, Status.DISTROY], [max: params.max?: 10, offset: params.offset ?: 0])
        Long recordFileInstanceCount = RecordFile.countByStatusInList([Status.DRAFT, Status.SENT_TO_RECORD_ROOM, Status.DISTROY])
        render view: "index", model: [recordFileInstanceList: recordFileInstanceList, recordFileInstanceCount: recordFileInstanceCount, heading: "General Register"]
    }

    def issuedRegister() {
        List<RecordFile> recordFileInstanceList = RecordFile.findAllByStatus(Status.ISSUED, [max: params.max?: 10, offset: params.offset ?: 0])
        Long recordFileInstanceCount = RecordFile.countByStatus(Status.ISSUED)
        render view: "index", model: [recordFileInstanceList: recordFileInstanceList, recordFileInstanceCount: recordFileInstanceCount, heading: "Issued Register"]
    }

    def search(){
        render view: "searchResult"
    }

    def fetchResult(String name) {
        List<RecordFile> recordFileList
        if (name) {
            recordFileList = RecordFile.findAllByNameIlikeOrFileNumberIlike("%${name}%", "%${name}%")
        }
        render view: "index", model: [recordFileInstanceList: recordFileList, recordFileInstanceCount: recordFileList.size(), heading: "Search Result"]
    }

    def showPath(RecordFile recordFileInstance) {
        Shelve shelve = Shelve.findById(recordFileInstance?.shelve?.id)
        render view: "path", model: [shelve: shelve]
    }
}
