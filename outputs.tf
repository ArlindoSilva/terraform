output "droplet_ip" {
  value = digitalocean_droplet.vm_aula_terraform[*].ipv4_address
}

#A alteração no output vai possibilitar pegar todas as máquinas que serão criadas. 