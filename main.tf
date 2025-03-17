
resource "local_file" "arquivo" {
  content  = "Esse é o conteúdo do arquivo - ${each.key} "
  filename = "./arquivo - ${each.key}.txt"
  for_each = var.contador
}

variable "contador" {
  default = ["Maquina 01", "Maquina 02", "Maquina 03"]
  type = set(string)
} 

# O for each faz uma varredura em um set ou map para criar os resources. 
  