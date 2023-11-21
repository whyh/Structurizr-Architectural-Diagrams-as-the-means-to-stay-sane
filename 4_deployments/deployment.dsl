test_deployment = deploymentEnvironment "Test" {
    deploymentNode "backend-test" {
        technology "Namespace"
        tags "Kubernetes - ns"

        deploymentNode "test-public-api" {
            technology "Service"
            tags "Kubernetes - svc"

            deploymentNode "Pod" {
                instances 1..2
                tags "Kubernetes - pod"

                containerInstance public_api
            }
        }
        deploymentNode "test-private-api" {
            technology "Service"
            tags "Kubernetes - svc"

            deploymentNode "Pod" {
                instances 1..2
                tags "Kubernetes - pod"

                containerInstance private_api
            }
        }

        deploymentNode "test-fanout-service" {
            technology "Service"
            tags "Kubernetes - svc"

            deploymentNode "Pod" {
                instances 1..10
                tags "Kubernetes - pod"

                containerInstance fanout_service
            }
        }
        deploymentNode "test-content-service" {
            technology "Service"
            tags "Kubernetes - svc"

            deploymentNode "Pod" {
                instances 1..10
                tags "Kubernetes - pod"

                containerInstance content_service
            }
        }

        deploymentNode "test-admin-service" {
            technology "Service"
            tags "Kubernetes - svc"

            deploymentNode "Pod" {
                instances 1
                tags "Kubernetes - pod"

                containerInstance admin_service
            }
        }
        deploymentNode "test-admin-database" {
            technology "Stateful Set"
            instances 1
            tags "Kubernetes - sts"

            containerInstance admin_database
        }
        deploymentNode "test-database" {
            technology "Stateful Set"
            instances 1..3
            tags "Kubernetes - sts"

            containerInstance database
        }
        deploymentNode "test-minio" {
            technology "Stateful Set"
            instances 1..4
            tags "Kubernetes - sts"

            containerInstance minio
        }
    }
}