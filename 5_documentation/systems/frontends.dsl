ios_app = softwareSystem "IOS App" {
    description "IOS Application"
    tags "Mobile"

    -> backend "Uses"
}
web_app = softwareSystem "Web App" {
    description "Web Application"
    tags "Web"

    -> backend "Uses"
}
admin_web_app = softwareSystem "Admin Web App" {
    description "Admin Portal"
    tags "Web"

    -> admin_backend "Uses"
}