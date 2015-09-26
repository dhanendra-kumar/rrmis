package com.rrmis

class StoreUnit {

    String name
    Integer numberOfRacksInWidth
    Integer numberOfRacksInLength

    static constraints = {
        name nullable: false, blank: false
    }

    static belongsTo = [recordRoom: RecordRoom]

    static hasMany = [rack: Rack]

    String getFloorMap() {
        return "${numberOfRacksInWidth}x${numberOfRacksInLength}"
    }
}
