package com.rrmis

import grails.plugin.springsecurity.annotation.Secured

@Secured("hasAnyRole('SUPER_ADMIN', 'BRANCH_ADMIN', 'BRANCH_CLERK', 'RECORD_ROOM_ADMIN', 'RECORD_ROOM_CLERK')")
class DashboardController {

    def springSecurityService

    def index() {
        Integer districtCount = District.count()
        Integer subDivisionOfficeCount = SubDivisionOffice.count()
        Integer officeCount = Office.count()
        Integer sectionCount = Section.count()
        Integer recordRoomCount = RecordRoom.count()
        Integer storeUnitCount = StoreUnit.count()
        Integer rackCount = Rack.count()
        Integer shelveCount = Shelve.count()
        Integer userCount = User.count()
        render view: "index", model: [districtCount: districtCount, subDivisionOfficeCount: subDivisionOfficeCount,
                                      officeCount: officeCount, sectionCount: sectionCount, recordRoomCount: recordRoomCount,
                                      storeUnitCount: storeUnitCount, rackCount: rackCount, shelveCount: shelveCount, userCount: userCount]
    }

    def index2() {
        render view: "indexBackup"
    }
}
