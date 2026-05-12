output "location" {
    description = "Azure Region"
    value = var.region
}
output "log_analitycs" {
    description = "Log analytics Workspace"
    value = azurerm_log_analytics_workspace.monitor-production.name
}