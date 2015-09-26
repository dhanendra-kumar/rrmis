package com.rrmis

class Shelve {

    String name
    Integer capacity

    static constraints = {
        name nullable: false, blank: false
        capacity nullable: false, min: 0
    }

    static belongsTo = [rack: Rack]

    static hasMany = [recordFile: RecordFile]
}
