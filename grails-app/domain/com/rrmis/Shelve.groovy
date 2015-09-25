package com.rrmis

class Shelve {

    String code
    String name
    Integer capacity

    static constraints = {
        code nullable: false, unique: true
        name nullable: false, blank: false
        capacity nullable: false, min: 0
    }

    static belongsTo = [rack: Rack]

    static hasMany = [recordFile: RecordFile]
}
