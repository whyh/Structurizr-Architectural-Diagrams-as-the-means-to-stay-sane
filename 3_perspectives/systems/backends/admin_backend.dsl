admin_backend = softwareSystem "Admin Backend" {
    description "Admin Backend"
    perspectives {
        "Content" "Handles content administraction"
    }

    admin_database = container "Admin database" {
        description "Admin database"
        technology "PostgreSQL"
        tags "Database"
        url "https://www.postgresql.org/"
    }

    admin_service = container "Admin service" {
        description "Admin monolith service"
        technology "Django"
        url "https://docs.djangoproject.com/en/4.2/ref/contrib/admin/"

        audit_logger = component "Audit logger" {
            description "Logs admin actions"

            -> admin_database "Reads from and writes to" "TCP"
        }
        user_manager = component "User manager" {
            description "Handles user administraction"

            -> admin_database "Reads from and writes to" "TCP"
            -> private_api "Makes API request to" "REST over HTTPS"
            -> audit_logger "Writes audit logs using"
        }
        content_manager = component "Content manager" {
            description "Handles content administraction"
            perspectives {
                "Content" "Handles content administraction"
            }

            -> private_api "Makes API request to" "REST over HTTPS" {
                perspectives {
                    "Content" "Handles content administraction"
                }
            }
            -> audit_logger "Writes audit logs using"
        }
    }
}