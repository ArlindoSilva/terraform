resource "local_file" "foo" {
  content  = var.conteudo
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = 1
  type = number
  description = "Conteúdo que vai para o arquivo."
}