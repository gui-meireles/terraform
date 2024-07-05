resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content = var.conteudo
}

data "local_file" "conteudo-exemplo" {
  filename = "exemplo.txt"
}

output "data-source-result" {
  value = data.local_file.conteudo-exemplo.content
#  value = data.local_file.conteudo-exemplo.content_base64
}

variable "conteudo" {}

output "id-arquivo" {
  value = resource.local_file.exemplo.id
}

output "conteudo" {
  value = var.conteudo
}