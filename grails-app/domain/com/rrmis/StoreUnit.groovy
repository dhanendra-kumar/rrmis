package com.rrmis

class StoreUnit {

    String name

    static constraints = {
        name nullable: false, blank: false
    }

    static belongsTo = [recordRoom: RecordRoom]

    static hasMany = [rack: Rack]
}
