resource "local_file" "foo" {
  content  = "O valor que vou passar de máquina é ${join(", " ,var.conteudo)}"
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = ["s-1vcpu-2gb", "s-1vcpu-4gb", "s-1vcpu-8gb"]
 
  type = set(string)
  description = "Conteúdo que vai para o arquivo."
}

#O set não tem índice ou chave para manipular. Não é possível pegar um elemento e manipular diretamente, é preciso iterar por todos os elementos fazendo um foreach ou utilizando função. No exemplo acima foi usado a funçaõ join. Ele não considera elementos repetidos, se tiver dosi iguais ele considera apenas um. 