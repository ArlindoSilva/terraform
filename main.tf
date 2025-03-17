variable "conteudo_string" {
  type        = string
  description = "Conteúdo que vai para o arquivo."
}

variable "lista_nomes" {
  type        = list(string)
  description = "Lista de nomes."
}

resource "local_file" "arquivo_list" {
  content  = "Os nomes definidos foram ${join(", ", var.lista_nomes)} "
  filename = "arquivo-list.txt"
}

resource "local_file" "arquivo_string" {
  content  = var.conteudo_string
  filename = "arquivo-string.txt"
}

#O valor da variavel é passado pelo terminal, ex:
# $ export TF_VAR_conteudo_string="Passando uma variável pelo terminal"

#Se for a lista de string:
# $ export TF_VAR_lista_nomes='["Maquina01", "Maquina02"]'

#Consultar as variaveis passadas e os valores:
# $ env | grep TF_VAR

# PARA RETIRAR AS VARIAVEIS PASSADAS:
# $ unset TF_VAR_conteudo_string
# $ unset TF_VAR_lista_nomes