variable "do_token" {
  type        = string
  description = "Token da API da Digital Ocean"
}

variable "droplet_name" {
  type        = string
  description = "Nome inicial do droplet"
}

variable "droplet_region" {
  default     = "nyc1"
  type        = string
  description = "Região que vai ser criada a infra"
}

variable "droplet_size" {
  default     = "s-1vcpu-1gb"
  type        = string
  description = "Perfil de maquina dos droplets"
}

variable "ssh_key_name" {
  default     = "aula-terraform"
  type        = string
  description = "Chave ssh que vai ser utilizada"
}

variable "firewall_aula_name" {
  default     = "firewall-aula"
  type        = string
  description = "Firewall que vai ser utilizado"
}

variable "vms_count" {
  default     = 1
  type        = number
  description = "Quantidade de máquinas"
}