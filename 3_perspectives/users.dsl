user = person "User" {
    description "Customer"
    tags "User"
    perspectives {
        "Content" "Creates and consumes content"
    }

    -> ios_app "Uses" {
        perspectives {
            "Content" "Uploads and downloads content"
        }
    }
    -> web_app "Uses" {
        perspectives {
            "Content" "Uploads and downloads content over HTTPS"
        }
    }
}

internal_user = person "Internal User" {
    description "Company Staff"
    tags "User"
    perspectives {
        "Content" "Moderates content"
    }

    -> admin_web_app "Uses" {
        perspectives {
            "Content" "Creates, edits, approves, rejects and deletes content"
        }
    }
}

api_user = person "API User" {
    description "B2B Customer"
    tags "Integration User"
    perspectives {
        "Content" "Consumes content"
    }

    -> backend "Uses"  {
        perspectives {
            "Content" "Downloads content over HTTPS"
        }
    }
}