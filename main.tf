resource "local_file" "foo" {
  content  = "O valor que vou passar de máquina é ${var.conteudo.region} - ${var.conteudo.opcao_maquina} - ${var.conteudo.fazer_bkp} "
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = {
    region        = "nyc1",
    opcao_maquina = "media",
    fazer_bkp     = false
  }

  type = object({
    region = string, opcao_maquina = string, fazer_bkp = bool
  })
  description = "Conteúdo que vai para o arquivo."
}

#Utilizado para especificar um tipo complexo de parâmetro. Se for utilizar valores que estão relacionados em um unico bloco, ele é bem útil. 