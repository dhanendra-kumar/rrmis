package com.rrmis

class Office {

    String name
    String address
    String email
    Date dateCreated
    Date lastUpdated

    static constraints = {
        email email: true
    }

    static belongsTo = [subDivisionOffice: SubDivisionOffice]

    static hasMany = [sections: Section, recordRooms: RecordRoom]
}
