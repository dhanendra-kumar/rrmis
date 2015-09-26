package com.rrmis

class Rack {

    String name

    static constraints = {
        name nullable: false, blank: false
    }

    static belongsTo = [storeUnit: StoreUnit]

    static hasMany = [shelve: Shelve]
}
