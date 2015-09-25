package com.rrmis

class District {

    String code
    String name

    static constraints = {
        code nullable: false, unique: true
        name nullable: false, blank: false
    }

    static hasMany = [subDivisionOffice: SubDivisionOffice]
}
