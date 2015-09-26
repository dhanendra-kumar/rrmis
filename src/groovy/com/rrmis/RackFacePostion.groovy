package com.rrmis

enum RackFacePostion {

    LEFT("Left"),
    RIGHT("Right"),
    TOP("Top"),
    BOTTOM("Bottom")

    final String displayName

    RackFacePostion(String name) {
        displayName = name
    }
}