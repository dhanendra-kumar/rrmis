package com.rrmis

class RecordFile {

    String name
    String fileNumber
    String subject
    Date consignDate
    Integer totalPage
    String remark
    ClassType classType
    Date dateOfFinalDisposal
    Status status
    Shelve shelve

    static constraints = {
        name nullable: false, blank: false
        fileNumber nullable: false, blank: false
        subject nullable: false, blank: false
        consignDate nullable: true
        totalPage nullable: false
        remark nullable: true
        classType nullable: false
        dateOfFinalDisposal nullable: false
        status nullable: false
        shelve nullable: true
    }
}
