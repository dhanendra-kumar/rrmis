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
        Integer generalFilesCount = RecordFile.countByStatusInList([Status.DRAFT, Status.SENT_TO_RECORD_ROOM, Status.DISTROY])
        Integer issuedFilesCount = RecordFile.countByStatus(Status.ISSUED)
        Integer consignedFilesCount = RecordFile.count()
        List<District> districtList = District.list(max: 5)
        List<SubDivisionOffice> subDivisionOfficeList = SubDivisionOffice.list(max: 5)
        List<Office> officeList = Office.list(max: 5)
        render view: "index", model: [districtCount: districtCount, subDivisionOfficeCount: subDivisionOfficeCount,
                                      officeCount: officeCount, sectionCount: sectionCount, recordRoomCount: recordRoomCount,
                                      storeUnitCount: storeUnitCount, rackCount: rackCount, shelveCount: shelveCount,
                                      userCount: userCount, generalFilesCount: generalFilesCount, issuedFilesCount: issuedFilesCount,
                                      consignedFilesCount: consignedFilesCount, districtList: districtList,
                                      subDivisionOfficeList: subDivisionOfficeList, officeList: officeList]
    }

}
