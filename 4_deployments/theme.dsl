!constant BLACK "#000000"
!constant GREY "#EDEDED"
!constant ORANGE "#FF8324"

theme "https://static.structurizr.com/themes/google-cloud-platform-v1.5/theme.json"
theme "https://static.structurizr.com/themes/kubernetes-v0.3/theme.json"

styles {
    element "Element" {
        shape RoundedBox
        background "${GREY}"
        color "${BLACK}"
        stroke "${BLACK}"
    }

    element "User" {
        shape Person
    }
    element "Integration User" {
        shape Robot
    }

    element "Mobile" {
        shape MobileDevicePortrait
    }
    element "Web" {
        shape WebBrowser
    }
    element "Integration" {
        color "${ORANGE}"
    }

    element "Database" {
        shape Cylinder
    }
    element "Store" {
        shape Folder
    }
}