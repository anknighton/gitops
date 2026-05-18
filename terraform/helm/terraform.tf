terraform {
  backend "http" {
    address = "https://gitlab.com/api/v4/projects/82314575/terraform/state/helm"
    lock_address = "https://gitlab.com/api/v4/projects/82314575/terraform/state/helm/lock"
    lock_method = "POST"
    unlock_address = "https://gitlab.com/api/v4/projects/82314575/terraform/state/helm/lock"
    unlock_method = "DELETE"
  }
}