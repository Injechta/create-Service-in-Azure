# Configuration du provider Azure
provider "azurerm" {
  features {}
}

# Création d'une application Azure AD pour le Service Principal
resource "azuread_application" "example" {
  display_name               = "myServicePrincipal"
  available_to_other_tenants = false
  oauth2_allow_implicit_flow = true
  # Cette application est uniquement disponible pour les comptes de l'annuaire actuel (Single tenant)
}

# Création du Service Principal à partir de l'application Azure AD
resource "azuread_service_principal" "example" {
  application_id = azuread_application.example.application_id
}

# Création d'un secret associé au Service Principal avec une durée de vie de 12 mois
resource "azuread_service_principal_password" "example" {
  service_principal_id = azuread_service_principal.example.id
  description          = "Client secret for automation"
  end_date_relative    = "8760h"  # 365 days in hours
}

# Sorties pour récupérer le client_id, client_secret, et tenant_id
output "client_id" {
  value = azuread_service_principal.example.application_id
}

output "client_secret" {
  value = azuread_service_principal_password.example.value
}

output "tenant_id" {
  value = data.azurerm_client_config.example.tenant_id
}

# Récupération de la configuration actuelle du client (utilisé pour obtenir le tenant_id)
data "azurerm_client_config" "example" {}
