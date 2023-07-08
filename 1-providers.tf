terraform {
  required_version = "~> 1.5.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.64.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.1"
    }
  }

  backend "azurerm" {
    resource_group_name = "value"
    storage_account_name = "value"
    container_name = "value"
    key = "value"
    client_id = "value"
    client_secret = "value"
    tenant_id = "value"
    subscription_id = "value"  
  }

}

provider "azurerm" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  features {}
  skip_provider_registration = true
}