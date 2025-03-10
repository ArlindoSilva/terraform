resource "local_file" "foo" {
  content  = var.conteudo
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = false
  type = bool
  description = "Conteúdo que vai para o arquivo."
}