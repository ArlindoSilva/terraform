resource "local_file" "foo" {
  content  = "O valor que vou passar de máquina é ${var.conteudo[0]}"
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = ["Maquina01", "maquina02", "Máquina03"]
  type = list(string)
  description = "Conteúdo que vai para o arquivo."
}