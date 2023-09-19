# Automatisation Terraform pour la Création d'un Service Principal Azure

Ce répertoire contient un script Terraform pour automatiser la création d'un Service Principal dans Azure, ainsi que la génération d'un secret associé.

## Prérequis

- Installer [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli).
- Installer [Azure CLI](https://docs.microsoft.com/fr-fr/cli/azure/install-azure-cli).
- Connectez-vous à votre compte Azure via la commande : `az login`.

## Utilisation

1. **Initialisation**:

   Executez la commande suivante pour initialiser le répertoire:

   ```bash
   terraform init
