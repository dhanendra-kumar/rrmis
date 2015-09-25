package com.rrmis

import grails.plugin.springsecurity.annotation.Secured

@Secured('hasRole("SUPER_ADMIN")')
class DashboardController {

    def springSecurityService

    def index() {
        render view: "index"
    }
}
