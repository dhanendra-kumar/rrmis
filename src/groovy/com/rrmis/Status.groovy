package com.rrmis

enum Status {

    DRAFT("Draft"),
    SENT_TO_RECORD_ROOM("Sent to Record Room"),
    ISSUED("Issued"),
    DISTROY("Destroy")

    final displayName

    Status(String name) {
        displayName = name
    }
}