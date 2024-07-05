resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content = var.conteudo
}

variable "conteudo" {}

output "id-arquivo" {
  value = resource.local_file.exemplo.id
}

output "conteudo" {
  value = var.conteudo
}