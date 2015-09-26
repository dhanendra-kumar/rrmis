package com.rrmis

class SubDivisionOffice {

    String name

    static constraints = {
        name nullable: false, blank: false
    }

    static belongsTo = [district: District]

    static hasMany = [office: Office]
}
