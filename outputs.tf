output "droplet_ip" {
  value = digitalocean_droplet.vm_aula_terraform.ipv4_address
}