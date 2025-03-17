
resource "local_file" "arquivo" {
  content  = "Esse é o conteúdo do arquivo - ${count.index + 1 } "
  filename = "./arquivo - ${count.index + 1 }.txt"
  count = var.contador
}

variable "contador" {
  default = 5
} 

# Com o count é possível criar uma estrututa de repetição. 

# Pode ser passado uma variável como no exemplo, ou passar um valor fixo. O " + 1 " é para ele não começar do Zero.  