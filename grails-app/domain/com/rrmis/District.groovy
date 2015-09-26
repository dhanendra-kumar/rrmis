package com.rrmis

class District {

    String name

    static constraints = {
        name nullable: false, blank: false
    }

    static hasMany = [subDivisionOffice: SubDivisionOffice]
}
