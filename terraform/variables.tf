# variables.tf
variable "application_name" {
  description = "Nom de l'application Azure AD."
  default     = "myServicePrincipal"
}

variable "secret_description" {
  description = "Description du secret associé au Service Principal."
  default     = "Client secret for automation"
}
Outputs (outputs.tf) : Vos outputs, qui fournissent des informations à l'utilisateur après l'application d'un plan Terraform, iront ici.
hcl
Copy code
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
Data Sources (data.tf) : Les sources de données, comme votre configuration client, peuvent être placées dans ce fichier.
hcl
Copy code
# data.tf
# Récupération de la configuration actuelle du client
data "azurerm_client_config" "example" {}
Cette segmentation vous permet de mieux organiser votre projet et de le rendre plus lisible, en particulier à mesure qu'il grandit et devient plus complexe.





