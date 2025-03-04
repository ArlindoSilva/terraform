terraform {
  required_version = "~> 1.0"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {
  default = "do_token"
}
#Passar o token pelo terminal com o comando: export TF_VAR_do_token="codigodotoken"
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "vm_aula_terraform" {
  image  = "ubuntu-22-04-x64"
  name   = "vm-aula-terraform"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
}