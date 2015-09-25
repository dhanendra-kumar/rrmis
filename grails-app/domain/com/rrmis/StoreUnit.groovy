package com.rrmis

class StoreUnit {

    String code
    String name

    static constraints = {
        code nullable: false, unique: true
        name nullable: false, blank: false
    }

    static belongsTo = [recordRoom: RecordRoom]

    static hasMany = [rack: Rack]
}
