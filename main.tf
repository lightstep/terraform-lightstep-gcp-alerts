
terraform {
  required_providers {
    lightstep = {
      source  = "lightstep/lightstep"
      version = ">= 1.60.2"
    }
  }
  required_version = ">= v1.0.11"
}

provider "lightstep" {
  api_key_env_var = var.lightstep_api_key_env_var
  organization    = var.lightstep_organization
  environment     = var.lightstep_env
}

module "lightstep_gcp_compute_alerts" {
  # When using these modules in your own templates, you will need to use a Git URL with a ref attribute that pins you
  # to a specific version of the modules, such as the following example:
  # source = "git::git@github.com:lightstep/terraform-lightstep-gcp-alerts.git//modules/compute-alerts?ref=v0.0.1"
  source            = "./modules/compute-alerts"
  lightstep_project = var.lightstep_project
}

module "lightstep_gcp_storage_alerts" {
  # When using these modules in your own templates, you will need to use a Git URL with a ref attribute that pins you
  # to a specific version of the modules, such as the following example:
  # source = "git::git@github.com:lightstep/terraform-lightstep-gcp-alerts.git//modules/storage-alerts?ref=v0.0.1"
  source            = "./modules/storage-alerts"
  lightstep_project = var.lightstep_project
}