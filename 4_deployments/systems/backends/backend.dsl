backend = softwareSystem "Backend" {
    description "Backend"

    database = container "Database" {
        description "Primary database"
        technology "PostgreSQL"
        tags "Database"
        url "https://www.postgresql.org/"
    }

    minio = container "Minio" {
        description "Object storage"
        technology "S3"
        tags "Store"
        url "https://min.io/"
    }

    backend_services = group "Backend Services" {
        fanout_service = container "Fanout Service" {
            description "Sends emails to users"
            technology "Cloud function"

            -> mail_sender "Makes API request to" "REST over HTTPS"
        }
        content_service = container "Content service" {
            description "Handles content workflows"
            technology "Fast API"

            -> minio "Reads from and writes to" "FTP"
        }
    }

    private_api = container "Private API" {
        description "Private API service"
        technology "Fast API"

        -> database "Reads from and writes to" "RESP over TCP"
        -> minio "Reads from and writes to" "FTP"
        -> content_service "Makes API request to" "REST over HTTPS"
        -> fanout_service "Makes API request to" "REST over HTTPS"
    }
    public_api = container "Public API" {
        description "Public API service"
        technology "NodeJS"

        -> private_api "Makes API request to" "REST over HTTPS"
    }
}