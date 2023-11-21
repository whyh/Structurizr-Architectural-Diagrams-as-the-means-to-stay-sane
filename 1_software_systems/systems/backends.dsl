backend = softwareSystem "Backend" {
    description "Backend"

    -> mail_sender "Uses"
}
admin_backend = softwareSystem "Admin Backend" {
    description "Admin Backend"

    -> backend "Uses"
}