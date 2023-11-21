user = person "User" {
    description "Customer"
    tags "User"

    -> ios_app "Uses"
    -> web_app "Uses"
}

internal_user = person "Internal User" {
    description "Company Staff"
    tags "User"

    -> admin_web_app "Uses"
}

api_user = person "API User" {
    description "B2B Customer"
    tags "Integration User"

    -> backend "Uses"
}