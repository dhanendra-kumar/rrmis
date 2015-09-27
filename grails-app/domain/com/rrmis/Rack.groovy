package com.rrmis

class Rack {

    String name
    RackFacePostion rackFacePostion
    String baseLocation

    static constraints = {
        name nullable: false, blank: false
        baseLocation nullable: true
    }

    static belongsTo = [storeUnit: StoreUnit]

    static hasMany = [shelve: Shelve]

    String getBaseLocationForJavascript() {
        return baseLocation?.startsWith("matrix-box-") ? baseLocation : "matrix-box-" + baseLocation
    }
}
