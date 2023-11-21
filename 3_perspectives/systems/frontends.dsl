ios_app = softwareSystem "IOS App" {
    description "IOS Application"
    tags "Mobile"
    perspectives {
        "Content" "Displays content to the user, and allows them to upload their own"
    }

    -> backend "Uses" {
        perspectives {
            "Content" "Uploads and downloads content from the backend over HTTPS"
        }
    }
}
web_app = softwareSystem "Web App" {
    description "Web Application"
    tags "Web"
    perspectives {
        "Content" "Displays content to the user, and allows them to upload their own"
    }

    -> backend "Uses" {
        perspectives {
            "Content" "Uploads and downloads content from the backend over HTTPS"
        }
    }
}
admin_web_app = softwareSystem "Admin Web App" {
    description "Admin Portal"
    tags "Web"
    perspectives {
        "Content" "Allows admins to manage content"
    }

    -> admin_backend "Uses" {
        perspectives {
            "Content" "Uploads and downloads content from the backend over HTTPS"
        }
    }
}