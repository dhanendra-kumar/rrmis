package com.rrmis

import grails.plugin.springsecurity.annotation.Secured

@Secured("hasAnyRole('SUPER_ADMIN', 'BRANCH_ADMIN', 'BRANCH_CLERK', 'RECORD_ROOM_ADMIN', 'RECORD_ROOM_CLERK')")
class DashboardController {

    def springSecurityService

    def index() {
        render view: "index"
    }
}
