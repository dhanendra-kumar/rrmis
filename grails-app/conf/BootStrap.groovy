import com.rrmis.Role
import com.rrmis.User
import com.rrmis.UserRole

class BootStrap {

    def init = { servletContext ->
        if(!(User.count())) {
            List<String> authorityList = [Role.SUPER_ADMIN, Role.BRANCH_ADMIN, Role.BRANCH_CLERK, Role.RECORD_ROOM_ADMIN, Role.RECORD_ROOM_CLERK]
            List<Role> roleList = []
            Role superAdminRole
            authorityList.each { String authority ->
                Role role = new Role(authority: authority)
                role = role.save(failOnError: true)
                if (role?.authority == Role.SUPER_ADMIN) {
                    superAdminRole = role
                } else {
                    roleList << role
                }
            }

            User superAdmin = new User(username: "rrmisadmin", password: "test", name: "admin", email: "dhanendrakumarkht@gmail.com")
            superAdmin = superAdmin.save(failOnError: true)

            UserRole superAdminUserRole = UserRole.create(superAdmin, superAdminRole, true)

            roleList.each { Role role ->
                User user = new User(username: role.authority, password: "test", name: role.authority, email: "dhanendrakumarkht+${(new Random()).nextInt()}@gmail.com")
                user = user.save(failOnError: true)

                UserRole userRole = UserRole.create(user, role, true)
            }
        }
    }
    def destroy = {
    }
}
