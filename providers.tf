#Passar o token pelo terminal com o comando: export TF_VAR_do_token="codigodotoken"
provider "digitalocean" {
  token = var.do_token
}