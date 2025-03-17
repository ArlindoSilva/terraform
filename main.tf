resource "local_file" "foo" {
  content  = "O valor que vou passar de máquina é ${var.conteudo[0]} - ${var.conteudo[1]} - ${var.conteudo[2]} "
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = ["nyc1", "pequena", false]

  type        = tuple([string, string, bool])
  description = "Conteúdo que vai para o arquivo."
}

