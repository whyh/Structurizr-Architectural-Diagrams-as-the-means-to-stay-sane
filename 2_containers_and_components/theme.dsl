!constant BLACK "#000000"
!constant GREY "#EDEDED"
!constant ORANGE "#FF8324"

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