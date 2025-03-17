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

#Também é possível criar um 'arquivo.tfvars' e setar esse aquivo quando for passar o comando apply, ex:
# $ terraform apply -var-file=arquivo.tfvars

# A terceira forma é passar a variável com o valor quando for usar o apply, ex:
# $ terraform apply -var="conteudo_string=Teste de variável passada pelo terminal" -var='lista_nomes=["Maquina05", "Maquina06"]'

#Quando a variável passada direto na linha de comando ou com arquivo var-file, sobrescreve as demais formas. 
#A segundo forma na prioridade de execução é com arquivo .tfvars e por último utilizando TF_VAR_nome_variavel