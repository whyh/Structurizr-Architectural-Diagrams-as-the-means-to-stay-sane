workspace {
    model {
        backend = softwareSystem "Backend" {
            private_api = container "Private API" {
                user_service = component "User Service"
            }
            public_api = container "Public API" {
                -> user_service "Uses"
            }
        }
        frontend = softwareSystem "Frontend" {
            -> public_api "Uses"
        }
    }
    views {
        systemContext backend "System_Context" {
            include *
            autoLayout tb
        }

        container backend "System_Containers" {
            include *
            autoLayout tb
        }

        component private_api "System_Components" {
            include *
            autoLayout tb
        }
    }
}