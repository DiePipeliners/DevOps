variable "location" {
    type = string
    default = "germanywestcentral"
}

variable "resource-group-name" {
    type = string
    default = "Pipeliners"
}

variable "service-plan" {
    type = map
    default = {
        "name" = "dhbw-devops-plan"
        "pricing" = "B1"
        "os" = "Linux"
    }
}

variable "web-service" {
    type = map
    default = {
        "name" = "pipeliners-web-app"
        "docker-image" = "tomaszkania2000/pipeliners"
        "docker-tag" = "v1.0"
        "docker-app-port" = "5000"
    }
}
