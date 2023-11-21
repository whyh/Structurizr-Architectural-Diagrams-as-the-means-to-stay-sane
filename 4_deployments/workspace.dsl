workspace {
    model {
        !include systems/integrations.dsl

        group "Backends" {
            !include systems/backends/backend.dsl
            !include systems/backends/admin_backend.dsl
        }
        group "Frontends" {
            !include systems/frontends.dsl
        }
        group "Users" {
            !include users.dsl
        }
        !include deployment.dsl

    }
    views {
        !include theme.dsl

        systemlandscape "System_Landscape" {
            include *
            autoLayout tb
        }

        deployment backend "Test" "Test_Backend_Deployment" {
            include *
            autoLayout tb
        }
    }
}