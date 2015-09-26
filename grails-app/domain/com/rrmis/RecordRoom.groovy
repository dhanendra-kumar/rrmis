package com.rrmis

class RecordRoom {

    String name

    static constraints = {
        name nullable: false, blank: false
    }

    static belongsTo = [office: Office]

    static hasMany = [storeUnit: StoreUnit]
}
