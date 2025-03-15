resource "local_file" "foo" {
  content  = "O valor que vou passar de máquina é ${var.conteudo["pequena"]}"
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = {
    "pequena" = "s-1vcpu-2gb"
    "media" = "s-1vcpu-4gb"
    "grande" = "s-1vcpu-8gb"
  }
  #Posso colocar o tipo de dado do map, se quiser. Ex: type = map(string)
  type = map
  description = "Conteúdo que vai para o arquivo."
}