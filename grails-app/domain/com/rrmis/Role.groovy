package com.rrmis

class Role implements Serializable {

	private static final long serialVersionUID = 1

    static final String SUPER_ADMIN = "SUPER_ADMIN"
    static final String BRANCH_ADMIN = "BRANCH_ADMIN"
    static final String BRANCH_CLERK = "BRANCH_CLERK"
    static final String RECORD_ROOM_ADMIN = "RECORD_ROOM_ADMIN"
    static final String RECORD_ROOM_CLERK = "RECORD_ROOM_CLERK"

	String authority

	@Override
	int hashCode() {
		authority?.hashCode() ?: 0
	}

	@Override
	boolean equals(other) {
		is(other) || (other instanceof Role && other.authority == authority)
	}

	@Override
	String toString() {
		authority
	}

	static constraints = {
		authority blank: false, unique: true
	}

	static mapping = {
		cache true
	}
}
