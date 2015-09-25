package com.rrmis

class Rack {

    String code
    String name

    static constraints = {
        code nullable: false, unique: true
        name nullable: false, blank: false
    }

    static belongsTo = [storeUnit: StoreUnit]

    static hasMany = [shelve: Shelve]
}
