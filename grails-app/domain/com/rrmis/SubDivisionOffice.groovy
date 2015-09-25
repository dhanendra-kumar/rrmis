package com.rrmis

class SubDivisionOffice {

    String code
    String name

    static constraints = {
        code nullable: false, unique: true
        name nullable: false, blank: false
    }

    static belongsTo = [district: District]

    static hasMany = [office: Office]
}
