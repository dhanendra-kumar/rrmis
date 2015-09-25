package com.rrmis

class RecordRoom {

    String code
    String name

    static constraints = {
        code nullable: false, unique: true
        name nullable: false, blank: false
    }

    static belongsTo = [office: Office]

    static hasMany = [storeUnit: StoreUnit]
}
