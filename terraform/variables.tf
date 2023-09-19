variable "application_name" {
  description = "Nom de l'application Azure AD."
  default     = "GitHub-IAC" # Mettez à jour le nom par défaut ici
}

variable "secret_description" {
  description = "Description du secret associé au Service Principal."
  default     = "Client secret for automation"



