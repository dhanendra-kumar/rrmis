package com.rrmis

class Section {

    String name

    static constraints = {
        name nullable: false, blank: false
    }

    static belongsTo = [office: Office]

    static hasMany = [recordFile: RecordFile]
}
