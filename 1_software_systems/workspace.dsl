workspace {
    model {
        !include systems/integrations.dsl

        group "Backends" {
            !include systems/backends.dsl
        }
        group "Frontends" {
            !include systems/frontends.dsl
        }
        group "Users" {
            !include users.dsl
        }
    }
    views {
        !include theme.dsl

        systemlandscape "System_Landscape" {
            include *
            autoLayout tb
        }

        systemContext backend "Backend_System_Context" {
            include *
            autoLayout tb
        }

        systemContext admin_backend "Admin_Backend_System_Context" {
            include *
            autoLayout tb
        }
    }
}