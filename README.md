# Projet Terraform pour Azure AD

Ce projet Terraform est utilisé pour créer une application Azure AD, un Service Principal et un secret associé dans Azure.

## Structure du projet

* **`main.tf`** : Configuration principale du projet, y compris la configuration du provider Azure.
* **`resources.tf`** : Définit toutes les ressources Terraform, y compris l'application Azure AD, le Service Principal et le secret associé.
* **`variables.tf`** : Contient les variables utilisées dans les autres fichiers de configuration.
* **`outputs.tf`** : Outputs fournis après l'application d'un plan Terraform.
* **`data.tf`** : Contient les sources de données utilisées pour obtenir des informations supplémentaires requises par la configuration.

## Utilisation

1. **Initialisation** :

Exécutez la commande suivante pour initialiser votre environnement Terraform :
   ```bash
   terraform init
   ```
**Planification** :

   Pour voir les actions que Terraform effectuera, exécutez :
   ```bash
   terraform plan
   ```
**Application** :

   Pour appliquer le plan et créer les ressources, exécutez :
   ```bash
   terraform apply
   ```

**Variables**

**`application_name`**: Nom de l'application Azure AD (par défaut : "myServicePrincipal").

**`secret_description`**: Description du secret associé au Service Principal (par défaut : "Client secret for automation").

**Outputs**

**`client_id`**: L'ID client de l'application/service principal créé.

**`client_secret`**: Le secret associé au service principal.

**`tenant_id`**: L'ID du tenant dans lequel les ressources ont été créées.
