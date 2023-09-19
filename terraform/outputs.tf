# outputs.tf
output "client_id" {
  value = azuread_service_principal.example.application_id
}

output "client_secret" {
  value = azuread_service_principal_password.example.value
}

output "tenant_id" {
  value = data.azurerm_client_config.example.tenant_id
}
