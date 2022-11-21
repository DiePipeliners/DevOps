resource "azurerm_resource_group" "Pipeliners" {
    name = var.resource-group-name
    location = var.location
}

resource "azurerm_service_plan" "app-service-plan" {
    name = var.service-plan["name"]
    resource_group_name = azurerm_resource_group.Pipeliners.name
    location = azurerm_resource_group.Pipeliners.location
    sku_name = var.service-plan["pricing"]
    os_type = var.service-plan["os"]
}

resource "azurerm_linux_web_app" "WebApp" {
    name = var.web-service["name"]
    resource_group_name = azurerm_resource_group.Pipeliners.name
    location = azurerm_resource_group.Pipeliners.location
    service_plan_id = azurerm_service_plan.app-service-plan.id

  site_config {
    always_on = false
    application_stack {
      docker_image = var.web-service["docker-image"]
      docker_image_tag = var.web-service["docker-tag"]
    }
  }
  app_settings = {
    "WEBSITES_PORT" = var.web-service["docker-app-port"]
  }
}
